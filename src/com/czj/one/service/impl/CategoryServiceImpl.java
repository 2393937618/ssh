package com.czj.one.service.impl;

import com.czj.one.bean.Category;
import com.czj.one.dao.CategoryDao;
import com.czj.one.service.CategoryService;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Transactional(readOnly=false)
public class CategoryServiceImpl implements CategoryService {
    @Resource
    private CategoryDao categoryDao;

    @Override
    public void SaveCategory(Category category) {
        categoryDao.SaveCategory(category);
    }

    @Override
    public void UpdateCategory(Category category) {
        categoryDao.UpdateCategory(category);
    }

    @Override
    public List<Category> listCategory() {
        return categoryDao.listCategory();
    }

    @Override
    public void removeCategory(Category category) {
        categoryDao.removeCategory(category);
    }

    @Override
    public Category findById(Integer id) {
        return categoryDao.getCategory(id);
    }
}
