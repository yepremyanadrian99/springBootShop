package com.shop.domain.entity;

import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "categories")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "parent_id")
    private int parentId;
    @Column(name = "status")
    private int status;
    @Column(name = "level")
    private int level;
    @Column(name = "id_path")
    private String idPath;
    @OneToMany(mappedBy = "category", fetch = FetchType.LAZY)
    @Where(clause = "lang_id='0'")
    private List<CategoryDescription> categoryDescriptions;

    public Category() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public String getIdPath() {
        return idPath;
    }

    public void setIdPath(String idPath) {
        this.idPath = idPath;
    }

    public List<CategoryDescription> getCategoryDescriptions() {
        return categoryDescriptions;
    }

    public void setCategoryDescriptions(List<CategoryDescription> categoryDescriptions) {
        this.categoryDescriptions = categoryDescriptions;
    }
}
