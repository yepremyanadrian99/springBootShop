package com.shop.service;

import com.shop.domain.dto.FeatureDto;
import com.shop.domain.dto.VariantDto;
import com.shop.domain.entity.ProductFeature;
import com.shop.domain.entity.ProductVariantRel;
import com.shop.repository.ProductFeatureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ProductFeatureService {
    @Autowired
    EntityManager entityManager;
    @Autowired
    private ProductFeatureRepository productFeatureRepository;
    private JdbcTemplate jdbcTemplate;

    public ProductFeatureService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public Map<Integer, FeatureDto> getFeaturesByCategory(int category_id, int lang_id) {
        List<Map<String, Object>> maps = jdbcTemplate.queryForList("SELECT pf.id as feature_id,pfd.name,fv.id,fvd.variant FROM `category_feature_rel` cfr " +
                "INNER JOIN product_features pf ON (pf.id = cfr.feature_id) INNER JOIN product_features_descriptions pfd " +
                "ON (pfd.feature_id = pf.id) INNER JOIN feature_variants fv ON (fv.feature_id = pf.id) " +
                "LEFT JOIN feature_variant_descriptions fvd ON (fvd.variant_id=fv.id) " +
                "WHERE pf.status=1 and fvd.lang_id=? AND pfd.lang_id=? AND cfr.category_id=?", 1, lang_id, category_id);

        Map<Integer, FeatureDto> featureDtoMap = new HashMap<>();
        Integer key;
        String featureName, variantName;
        int variantId;
        List<String> list = new ArrayList<>();

        for (Map<String, Object> map : maps) {
            key = (Integer) map.get("feature_id");
            featureName = (String) map.get("name");
            variantId = (int) map.get("id");
            variantName = (String) map.get("variant");
            FeatureDto featureDto = featureDtoMap.get(key);
            if (featureDto == null) {
                featureDtoMap.put(key, new FeatureDto(key, featureName));
                featureDto = featureDtoMap.get(key);
            }
            featureDto.addVariant(new VariantDto(variantId, variantName));
        }

        return featureDtoMap;
    }

    public String decodeFeatureHash(String hash) {
        if (hash.length() == 0) return "";
        String[] split = hash.split(",");
        String string = "";
        for (String s : split) {
            if (s.matches("-?\\d+(\\.\\d+)?")) {
                string += s + ",";
            }
        }
        if (string.length() > 0) {
            string = string.substring(0, string.length() - 1);
        }
        if (string.length() > 0) {
            TypedQuery<ProductVariantRel> query = entityManager.createQuery(String.format("SELECT p from ProductVariantRel p where p.variantId in (%s)", string), ProductVariantRel.class);

            List<ProductVariantRel> resultList = query.getResultList();
            String productIds = "";

            for (ProductVariantRel productVariantRel : resultList) {
                productIds += productVariantRel.getProductId() + ",";
            }
            if (productIds.length() > 0) {
                productIds = productIds.substring(0, productIds.length() - 1);
            }

            System.out.println("resultList = " + productIds);

            if (productIds.length() == 0)
                productIds = "-1";
            return " p.id  in (" + productIds + ") and ";
        }

        return "";
    }


    public ProductFeature addProductFeature(ProductFeature productFeature) {
        return productFeatureRepository.save(productFeature);
    }

    public void deleteByFeatureId(int featureId) {
        productFeatureRepository.delete(featureId);
    }
}
