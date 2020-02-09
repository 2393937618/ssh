package com.czj.one.dao;

import com.czj.one.bean.Category;

import java.util.List;

public interface CategoryDao {
    public void SaveCategory(Category category);
    public void UpdateCategory(Category category);
    public List<Category> listCategory();
    public void removeCategory(Category category);
    public Category getCategory(Integer id);
}
