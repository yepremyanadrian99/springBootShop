package com.shop.domain.dto;

import java.util.ArrayList;
import java.util.List;

public class FeatureDto {
    private Integer id;
    private String name;
    private List<VariantDto> variantDtos;

    public FeatureDto(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public void addVariant(VariantDto variantDto) {
        if (variantDtos == null) {
            variantDtos = new ArrayList<>();
        }
        variantDtos.add(variantDto);
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<VariantDto> getVariantDtos() {
        return variantDtos;
    }

    public void setVariantDtos(List<VariantDto> variantDtos) {
        this.variantDtos = variantDtos;
    }
}
