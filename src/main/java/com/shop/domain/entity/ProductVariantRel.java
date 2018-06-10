package com.shop.domain.entity;

import javax.persistence.*;

@Entity
@Table(name = "product_variant_rel")
public class ProductVariantRel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "product_id",insertable = false,updatable = false)
    private int productId;
    @Column(name = "variant_id")
    private int variantId;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "product_id",referencedColumnName = "id")
    private Product product;
    public ProductVariantRel(){}
    public ProductVariantRel(int productId, int variantId) {
        this.productId = productId;
        this.variantId = variantId;
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

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getVariantId() {
        return variantId;
    }

    public void setVariantId(int variantId) {
        this.variantId = variantId;
    }
}
