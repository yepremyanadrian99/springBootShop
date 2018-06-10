package com.shop.service;

import com.shop.domain.entity.Category;
import com.shop.domain.entity.CategoryDescription;
import com.shop.repository.CategoryDescriptionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service("categoryDescription")
public class CategoryDescriptionService {
    @Autowired
    private CategoryDescriptionRepository categoryDescriptionRepository;

    public CategoryDescription addCategoryDescription(CategoryDescription categoryDescription) {
        return categoryDescriptionRepository.save(categoryDescription);
    }

    public void deleteCategoryDescriptionByCategoryId(int categoryId) {
        categoryDescriptionRepository.deleteByCategoryId(categoryId);
    }
}
