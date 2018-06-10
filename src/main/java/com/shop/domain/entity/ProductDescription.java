package com.shop.domain.entity;
import javax.persistence.*;
@Entity
@Table(name = "product_descriptions")
public class ProductDescription {
    @Id
    private int id;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "product_id",referencedColumnName = "id",nullable = false)
    private Product product;
    private String name;
    private String description;
    @Column(name = "lang_id")
    private int langId;
    public ProductDescription(){}
    public ProductDescription(Product product,String name, String description, int langId) {
        this.product = product;
        this.name = name;
        this.description = description;
        this.langId = langId;
    }



    public void setDescription(String description) {
        this.description = description;
    }

    public void setLangId(int langId) {
        this.langId = langId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getLangId() {
        return langId;
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



}
