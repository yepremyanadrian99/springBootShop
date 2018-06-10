package com.shop.repository;

import com.shop.domain.entity.CategoryDescription;
import org.springframework.data.repository.CrudRepository;

public interface CategoryDescriptionRepository extends CrudRepository<CategoryDescription, Integer> {
    void deleteByCategoryId(int categoryId);
}
