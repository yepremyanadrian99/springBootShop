package com.shop.domain.entity;


import javax.persistence.*;

@Entity
@Table(name = "product_features_descriptions")
public class ProductFeatureDescription {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @ManyToOne
    @JoinColumn(name = "feature_id")
    private ProductFeature productFeature;
    @Column(name = "name")
    private String name;
    @Column(name = "full_description")
    private String description;
    @Column(name = "lang_id")
    private int langId;

    public ProductFeatureDescription() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public ProductFeature getProductFeature() {
        return productFeature;
    }

    public void setProductFeature(ProductFeature productFeature) {
        this.productFeature = productFeature;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getLangId() {
        return langId;
    }

    public void setLangId(int langId) {
        this.langId = langId;
    }
}
