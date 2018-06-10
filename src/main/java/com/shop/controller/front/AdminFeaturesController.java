package com.shop.controller.front;

import com.shop.domain.entity.ProductFeature;
import com.shop.domain.entity.ProductFeatureDescription;
import com.shop.service.ProductFeatureDescriptionService;
import com.shop.service.ProductFeatureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.constraints.NotNull;

@Controller
public class AdminFeaturesController {
    @Autowired
    private ProductFeatureService featureService;
    @Autowired
    private ProductFeatureDescriptionService featureDescriptionService;

    @GetMapping("/admin/add/features")
    public ModelAndView add(@RequestParam(required = false, name = "message") String message) {
        ModelAndView modelAndView = new ModelAndView("/admin/add/features");
        modelAndView.addObject("message", message);
//        modelAndView.addObject("features",
//                featureService.getFeaturesByCategory(0).values().toArray()
//        );
        return modelAndView;
    }

    @PostMapping("/admin/add/features")
    public ModelAndView add(@RequestParam @NotNull String name1,
                            @RequestParam @NotNull String name2,
                            @RequestParam @NotNull String name3,
                            @RequestParam(defaultValue = "") String description1,
                            @RequestParam(defaultValue = "") String description2,
                            @RequestParam(defaultValue = "") String description3,
                            @RequestParam(defaultValue = "1") int status) {
        ProductFeature feature = new ProductFeature();
        feature.setStatus(status);
        feature = featureService.addProductFeature(feature);

        ProductFeatureDescription featureDescription1 = new ProductFeatureDescription();
        ProductFeatureDescription featureDescription2 = new ProductFeatureDescription();
        ProductFeatureDescription featureDescription3 = new ProductFeatureDescription();
        featureDescription1.setProductFeature(feature);
        featureDescription2.setProductFeature(feature);
        featureDescription3.setProductFeature(feature);
        featureDescription1.setName(name1);
        featureDescription2.setName(name2);
        featureDescription3.setName(name3);
        featureDescription1.setDescription(description1);
        featureDescription2.setDescription(description2);
        featureDescription3.setDescription(description3);
        featureDescription1.setLangId(1);
        featureDescription2.setLangId(2);
        featureDescription3.setLangId(3);
        featureDescriptionService.addFeatureDescription(featureDescription1);
        featureDescriptionService.addFeatureDescription(featureDescription2);
        featureDescriptionService.addFeatureDescription(featureDescription3);

        return add(String.format("Feature %s successfully saved!", name2));
    }

    @GetMapping("/admin/delete/features")
    public ModelAndView delete(@RequestParam(required = false, name = "message") String message) {
        ModelAndView modelAndView = new ModelAndView("/admin/delete/features");
        modelAndView.addObject("message", message);
//        modelAndView.addObject("features", featureService.getFeaturesByCategory(0));
        return modelAndView;
    }

    @PostMapping("/admin/delete/features")
    public ModelAndView delete(@RequestParam @NotNull int featureId) {
        featureDescriptionService.deleteFeatureDescriptionByFeatureId(featureId);
        featureService.deleteByFeatureId(featureId);
        return delete(String.format("Feature %d successfully deleted!", featureId));
    }
}
