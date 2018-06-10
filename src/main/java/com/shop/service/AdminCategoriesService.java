package com.shop.service;

import com.shop.domain.entity.Category;
import com.shop.domain.entity.CategoryDescription;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import javax.transaction.Transactional;
import javax.validation.constraints.NotNull;

@Service("adminService")
public class AdminCategoriesService {
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private CategoryDescriptionService categoryDescriptionService;

    public Category addCategory(@RequestParam(defaultValue = "0") int parentId,
                                @RequestParam(defaultValue = "0") int status,
                                @RequestParam @NotNull String name,
                                @RequestParam String description) {
        Category category = new Category();
        category.setParentId(parentId);
        Category parentCategory = categoryService.getCategoryById(parentId);
        category.setStatus(status);
        category.setLevel((parentCategory == null) ? 0 : parentCategory.getLevel() + 1);
        category.setIdPath("");
        category = categoryService.addOrUpdateCategory(category);

        String idPath = Integer.toString(category.getId());
        category.setIdPath((parentCategory == null) ?
                idPath : parentCategory.getIdPath().concat("/" + idPath)
        );
        categoryService.addOrUpdateCategory(category);

        CategoryDescription categoryDescription = new CategoryDescription();
        categoryDescription.setCategory(category);
        categoryDescription.setDescription(description);
        categoryDescription.setName(name);
        categoryDescriptionService.addCategoryDescription(categoryDescription);

        return category;
    }

    public void deleteCategory(int categoryId) {
        categoryService.deleteCategory(categoryId);
    }

    @Transactional
    public void deleteCategoryDescriptionByCategoryId(int categoryId) {
        categoryDescriptionService.deleteCategoryDescriptionByCategoryId(categoryId);
    }

    public Category getCategoryById(int categoryId) {
        return categoryService.getCategoryById(categoryId);
    }
}
