package com.shop.service;

import com.shop.domain.dto.CategoryDto;
import com.shop.domain.dto.FeatureDto;
import com.shop.domain.dto.ProductDto;
import com.shop.domain.entity.Category;
import com.shop.repository.CategoryRepository;
import com.shop.repository.ProductRepository;
import com.shop.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class CategoryService {

    //TODO get from session
    private static final int ITEM_PER_PAGE = 5;

    private final JdbcTemplate jdbcTemplate;
    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    ProductRepository productRepository;
    @Autowired
    ProductFeatureService featureService;
    //ProductRepository productRepository;
    private UserRepository userRepository;

    public CategoryService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
        //this.categoryRepository = categoryRepository;
        //jdbcTemplate.
    }

    public Category addOrUpdateCategory(Category category) {
        return categoryRepository.save(category);
    }

    public void deleteCategory(int categoryId) {
        categoryRepository.delete(categoryId);
    }

    public List<ProductDto> getProducts(int cid, int page, int itemPerPage, String productIds, String keyword) {

        keyword = "%" + keyword + "%";
        String sql = "SELECT p.*,d.name,d.description,i.url from products as p INNER JOIN product_descriptions as d  " +
                "on (p.id = d.product_id) left join images i on p.id = i.product_id where d.lang_id=? and " + productIds + " p.category_id=? " +
                "and (d.name like ? or d.description like ?) LIMIT ?,?";
        List<Map<String, Object>> maps = jdbcTemplate.queryForList(sql, 1, cid, keyword, keyword, (page - 1) * itemPerPage, itemPerPage);
        System.out.println(maps);

        List<ProductDto> productDtos = new ArrayList<>();

        for (Map<String, Object> map : maps) {
            System.out.println(map.get("id"));
            productDtos.add(new ProductDto(
                            (Integer) map.get("id")
                            , (String) map.get("name")
                            , Double.toString((Double) map.get("price"))
                            , (String) map.get("description")
                            , (String) map.get("url")
                    )
            );
        }
        return productDtos;
    }

    public int getAllMatchedProductrs(int cid, String productIds, String keyword) {
        keyword = "%" + keyword + "%";
        String sql = "SELECT p.*,d.name,d.description " +
                "from products as p INNER JOIN product_descriptions as d " +
                "on (p.id = d.product_id) where d.lang_id=? and " + productIds + " p.category_id=? and (d.name like ? or d.description like ?)";
        int size = jdbcTemplate.queryForList(sql, 1, cid, keyword, keyword).size();
        return size;
    }

    public List<CategoryDto> getCategoriesTree(int startingId, int langId) {

        List<CategoryDto> categoryDtos = new ArrayList<CategoryDto>();

        getCateory(startingId, categoryDtos, langId);

        return categoryDtos;
    }

    public List<CategoryDto> getAllCategories() {
        List<CategoryDto> categoryDtos = new ArrayList<>();
        List<Map<String, Object>> maps = jdbcTemplate.queryForList("select c.id,d.name,d.description from categories c " +
                "inner join category_descriptions d" +
                " on (c.id = d.category_id)");
        for (Map<String, Object> map : maps) {
            categoryDtos.add(new CategoryDto((int) map.get("id"), (String) map.get("name")));
        }
        return categoryDtos;
    }

    //todo optimize multiple queries
    public void getCateory(int parentId, List<CategoryDto> categoryDtos, int langId) {

        List<Map<String, Object>> maps = jdbcTemplate.queryForList("select c.id,d.name,d.description from categories c " +
                "inner join category_descriptions d" +
                " on (c.id = d.category_id) where c.parent_id=? and d.lang_id=?", parentId, langId);
        for (Map<String, Object> map : maps) {
            categoryDtos.add(new CategoryDto((int) map.get("id"), (String) map.get("name")));
        }

        for (CategoryDto categoryDto : categoryDtos) {
            categoryDto.setSubcategories(new ArrayList<CategoryDto>());

            getCateory(categoryDto.getId(), categoryDto.getSubcategories(), langId);
        }
    }

    public Category getCategoryById(int categoryId) {
        return categoryRepository.findById(categoryId);
    }

    public ModelAndView loadCategory(int category_id, int page_num, String features, int langId, String keyword) {

        //get available features for filtering
        Map<Integer, FeatureDto> featuresByCategory = featureService.getFeaturesByCategory(category_id, langId);

        //get product ids by variant id
        String productIds = featureService.decodeFeatureHash(features);
        //get products
        List<ProductDto> products = getProducts(category_id, page_num, ITEM_PER_PAGE, productIds, keyword);

        //get pages count for pagination
        int pages_count = getAllMatchedProductrs(category_id, productIds, keyword);
        pages_count = (pages_count % ITEM_PER_PAGE > 0) ? pages_count / ITEM_PER_PAGE + 1 : pages_count / ITEM_PER_PAGE;

        ModelAndView modelAndView = new ModelAndView("front/blocks/products/search");
        modelAndView.addObject("products", products);
        modelAndView.addObject("pages", pages_count);
        modelAndView.addObject("featuresByCategory", featuresByCategory);

        return modelAndView;
    }
}
