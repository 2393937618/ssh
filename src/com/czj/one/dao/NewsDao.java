package com.czj.one.dao;


import com.czj.one.bean.CategoryAndNews;
import com.czj.one.bean.News;

import java.util.List;

public interface NewsDao {
    public void SaveNews(News news);
    public void UpdateNews(News news);
    public List<CategoryAndNews> listNews();
    public List<CategoryAndNews> likeName(String name);
    public String selectName(int id);
    public void removeNews(News news);
    public News getNews(Integer id);
    public List<String> findCategoryName();
    public List<CategoryAndNews> likeTitle(String sel);
}
