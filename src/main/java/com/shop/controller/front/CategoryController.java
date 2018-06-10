package com.shop.controller.front;

import com.shop.domain.dto.FeatureDto;
import com.shop.domain.entity.Language;
import com.shop.service.CategoryService;
import com.shop.service.LanguageService;
import com.shop.service.ProductFeatureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.persistence.EntityManager;
import java.util.Map;

@Controller
@RequestMapping("/")
public class CategoryController {

    @Autowired
    EntityManager entityManager;
    @Autowired
    ProductFeatureService featureService;
    @Autowired
    LanguageService languageService;
    @Autowired
    Language language;
    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/category/{category_id}/{page_num}")
    public ModelAndView index(@PathVariable(value = "category_id") int category_id
            , @PathVariable(value = "page_num", required = false) int page_num
            , @RequestParam(value = "features", required = false, defaultValue = "") String features
            , @RequestParam(value = "q", required = false, defaultValue = "") String keyword
    ) {
        initLang();
        ModelAndView modelAndView = categoryService.loadCategory(category_id, page_num, features, language.getId(), keyword);
        modelAndView.addObject("language", language);
        modelAndView.addObject("languages", languageService.getAll());
        return modelAndView;
    }

    @RequestMapping("/category/{category_id}")
    public ModelAndView index(@PathVariable(value = "category_id") int category_id
            , @RequestParam(value = "features", required = false, defaultValue = "") String features
            , @RequestParam(value = "q", required = false, defaultValue = "") String keyword
    ) {
        initLang();
        Map<Integer, FeatureDto> featuresByCategory = featureService.getFeaturesByCategory(category_id, language.getId());

        ModelAndView modelAndView = categoryService.loadCategory(category_id, 1, features, language.getId(), keyword);

        modelAndView.addObject("language", language);
        modelAndView.addObject("languages", languageService.getAll());
        return modelAndView;
    }


    public void initLang() {
        if (language.getId() == 0) {
            languageService.initCurrentLang(language, 1);
        }
    }
}