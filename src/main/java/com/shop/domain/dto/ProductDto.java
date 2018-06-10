package com.shop.domain.dto;

public class ProductDto {

    private int id;
    private String name;
    private String description;
    private String price;
    private String url;
    public ProductDto(int id, String name, String price) {
        this.id = id;
        this.name = name;
        this.price = price;

    }

    public ProductDto(int id, String name,  String price,String description, String url) {
        this.id = id;
        this.name = name;

        this.price = price;
        this.description = description;
        this.url = url;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}
