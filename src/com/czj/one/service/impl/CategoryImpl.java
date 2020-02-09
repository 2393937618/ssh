package com.czj.one.service.impl;

import com.czj.one.bean.Category;
import com.czj.one.dao.CategoryDao;
import org.springframework.orm.hibernate4.HibernateTemplate;

import java.util.List;

public class CategoryImpl implements CategoryDao {
    private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
    @Override
    public void SaveCategory(Category category) {
        hibernateTemplate.save(category);
    }

    @Override
    public void UpdateCategory(Category category) {
        hibernateTemplate.update(category);
    }

    @Override
    public List<Category> listCategory() {
        return (List<Category>) hibernateTemplate.find("from Category");
    }

    @Override
    public void removeCategory(Category category) {
        hibernateTemplate.delete(category);
    }

    @Override
    public Category getCategory(Integer id) {
        return hibernateTemplate.get(Category.class,id);
    }
}
