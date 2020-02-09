package com.czj.one.service.impl;

import com.czj.one.bean.CategoryAndNews;
import com.czj.one.bean.News;
import com.czj.one.dao.NewsDao;
import org.springframework.orm.hibernate4.HibernateTemplate;

import java.util.List;

public class NewsImpl implements NewsDao {
    private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
    @Override
    public void SaveNews(News news) {
        hibernateTemplate.save(news);
    }

    @Override
    public void UpdateNews(News news) {
        hibernateTemplate.update(news);
    }

    @Override
    public List<CategoryAndNews> listNews() {
        return (List<CategoryAndNews>) hibernateTemplate.find("select new com.czj.one.bean.CategoryAndNews(n.id,n.title,n.issue,c.categoryName) from News n inner join n.category c");
    }

    @Override
    public List<CategoryAndNews> likeName(String name) {
        return (List<CategoryAndNews>) hibernateTemplate.find("select new com.czj.one.bean.CategoryAndNews(n.id,n.title,n.issue,c.categoryName) from News n inner join n.category c where c.categoryName='"+name+"'");
    }

    @Override
    public String selectName(int id) {
        return String.valueOf(hibernateTemplate.find("select c.categoryName from Category c where c.id='"+id+"'"));
    }

    @Override
    public void removeNews(News news) {
        hibernateTemplate.delete(news);
    }

    @Override
    public News getNews(Integer id) {
        return hibernateTemplate.get(News.class,id);
    }

    @Override
    public List<String> findCategoryName() {
        return (List<String>) hibernateTemplate.find("select c.categoryName from Category c");
    }

    @Override
    public List<CategoryAndNews> likeTitle(String sel) {
        return (List<CategoryAndNews>) hibernateTemplate.find("select new com.czj.one.bean.CategoryAndNews(n.id,n.title,n.issue,c.categoryName) from News n inner join n.category c where n.title like '%"+sel+"%'");
    }


}
