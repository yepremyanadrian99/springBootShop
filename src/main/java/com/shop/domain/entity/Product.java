package com.shop.domain.entity;

import jdk.nashorn.internal.ir.annotations.Ignore;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.*;

@Entity
@Table(name = "products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private double price;
    //TODO connect to Entity
    @Column(name = "user_id")
    private int userId;

    //TODO connect to Entity
    @Column(name = "category_id")
    private int categoryId;

    private int status;
    @Ignore
    private int top;
    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    private List<ProductDescription> productDescriptions;

    @OneToMany(mappedBy = "product",fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    private List<ProductVariantRel> productVariantRels;

    @OneToMany(mappedBy = "product",fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    private List<Image> images;
    public Product(){}
    public Product(double price, int userId, int categoryId, int status) {
        this.price = price;
        this.userId = userId;
        this.categoryId = categoryId;
        this.status = status;
    }

    public int getTop() {
        return top;
    }

    public void setTop(int top) {
        this.top = top;
    }

    public List<Image> getImages() {
        return images;
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }

    public List<ProductDescription> getProductDescriptions() {
        return productDescriptions;
    }

    public void setProductDescriptions(List<ProductDescription> productDescriptions) {
        this.productDescriptions = productDescriptions;
    }
    public int getUserId() {
        return userId;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public List<ProductVariantRel> getProductVariantRels() {
        return productVariantRels;
    }

    public void setProductVariantRels(List<ProductVariantRel> productVariantRels) {
        this.productVariantRels = productVariantRels;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public List<ProductDescription> getProductDescription() {
        return productDescriptions;
    }

    public void setProductDescription(List<ProductDescription> productDescription) {
        this.productDescriptions = productDescription;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getUser_id() {
        return userId;
    }

    public void setUser_id(int userId) {
        this.userId = userId;
    }

    public int getCategory_id() {
        return categoryId;
    }

    public void setCategory_id(int category_id) {
        this.categoryId = category_id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void addDescription(ProductDescription desc){
       if (productDescriptions == null){
           productDescriptions = new ArrayList<>();
       }
       productDescriptions.add(desc);
    }
    public void addVariant(ProductVariantRel rel){
        if (productVariantRels == null){
            productVariantRels = new ArrayList<>();
        }
        productVariantRels.add(rel);
    }
}