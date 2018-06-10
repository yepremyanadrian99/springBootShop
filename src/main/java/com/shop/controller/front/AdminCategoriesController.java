package com.shop.controller.front;

import com.shop.service.AdminCategoriesService;
import com.shop.service.CategoryDescriptionService;
import com.shop.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.constraints.NotNull;

@Controller
public class AdminCategoriesController {
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private CategoryDescriptionService categoryDescriptionService;
    @Autowired
    private AdminCategoriesService adminCategoriesService;

    @GetMapping("/admin/add/categories")
    public ModelAndView add(@RequestParam(required = false, name = "message") String message) {
        ModelAndView modelAndView = new ModelAndView("/admin/add/categories");
        modelAndView.addObject("message", message);
        modelAndView.addObject("categories", categoryService.getAllCategories());
        return modelAndView;
    }

    @PostMapping("/admin/add/categories")
    public ModelAndView add(@RequestParam @NotNull int parentId,
                            @RequestParam(defaultValue = "0") int status,
                            @RequestParam @NotNull String name,
                            @RequestParam String description) {
        adminCategoriesService.addCategory(parentId, status, name, description);
        return add(String.format("Category %s successfully saved!", name));
    }

    @GetMapping("/admin/delete/categories")
    public ModelAndView delete(@RequestParam(required = false, name = "message") String message) {
        ModelAndView modelAndView = new ModelAndView("/admin/delete/categories");
        modelAndView.addObject("message", message);
        modelAndView.addObject("categories", categoryService.getAllCategories());
        return modelAndView;
    }

    @PostMapping("/admin/delete/categories")
    public ModelAndView delete(@RequestParam @NotNull int categoryId) {
        adminCategoriesService.deleteCategoryDescriptionByCategoryId(categoryId);
        adminCategoriesService.deleteCategory(categoryId);
        return delete(String.format("Category %d successfully deleted!", categoryId));
    }
}
