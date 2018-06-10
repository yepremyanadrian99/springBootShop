package com.shop.repository;

import com.shop.domain.entity.ProductFeatureDescription;
import org.springframework.data.repository.CrudRepository;

public interface ProductFeatureDescriptionRepository extends CrudRepository<ProductFeatureDescription, Integer> {
    void deleteByProductFeatureId(int featureId);
}
