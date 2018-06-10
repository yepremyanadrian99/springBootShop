package com.shop.service;

import com.shop.domain.entity.ProductFeatureDescription;
import com.shop.repository.ProductFeatureDescriptionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service("productFeatureDescriptionService")
public class ProductFeatureDescriptionService {
    @Autowired
    private ProductFeatureDescriptionRepository featureDescriptionRepository;

    public ProductFeatureDescription addFeatureDescription(ProductFeatureDescription featureDescription) {
        return featureDescriptionRepository.save(featureDescription);
    }

    @Transactional
    public void deleteFeatureDescriptionByFeatureId(int featureId) {
        featureDescriptionRepository.deleteByProductFeatureId(featureId);
    }
}
