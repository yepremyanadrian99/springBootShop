package com.shop.domain.entity;

import jdk.nashorn.internal.ir.annotations.Ignore;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.SessionScope;

import javax.persistence.*;

@Entity
@Table(name = "languages")
@Component
@SessionScope

public class Language {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private int id;
    private String code;

    private String name;
    @Ignore
    private int currentId;

    public int getCurrentId() {
        return currentId;
    }

    public void setCurrentId(int currentId) {
        this.currentId = currentId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
