package com.czj.one.service;

import com.czj.one.bean.Category;

import java.util.List;

public interface CategoryService {
    public void SaveCategory(Category category);
    public void UpdateCategory(Category category);
    public List<Category> listCategory();
    public void removeCategory(Category category);
    public Category findById(Integer id);
}
