package com.czj.one.bean;

import java.util.HashSet;
import java.util.Set;

public class Category {
    private int id;
    private String categoryName;
    private Set<News> set = new HashSet<News>();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public Set<News> getSet() {
        return set;
    }

    public void setSet(Set<News> set) {
        this.set = set;
    }
}
