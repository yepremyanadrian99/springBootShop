package com.shop.controller.front;

import com.shop.domain.dto.CategoryDto;
import com.shop.domain.entity.Language;
import com.shop.service.CategoryService;
import com.shop.service.LanguageService;
import com.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    CategoryService categoryService;

    @Autowired
    LanguageService languageService;
    @Autowired
    private Language language;
    @Autowired
    ProductService productService;
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public ModelAndView view(){
        if (language.getId() == 0){
            languageService.initCurrentLang(language,1);
        }
        String property = System.getProperty("user.dir");
        System.out.println("property = " + property);
        System.out.println("language.getCurrentId( = " + language.getCurrentId());
        List<CategoryDto> categoriesTree = categoryService.getCategoriesTree(0,language.getId());

        ModelAndView modelAndView = new ModelAndView("front/home/index");
        modelAndView.addObject("categoriesTree",categoriesTree);

        modelAndView.addObject("languages",languageService.getAll());
        modelAndView.addObject("products",productService.getTopProducts());

        System.out.println("language = " + language);
        modelAndView.addObject("language",language);

        return  modelAndView;
    }
}
