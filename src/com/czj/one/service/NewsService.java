package com.czj.one.service;

import com.czj.one.bean.CategoryAndNews;
import com.czj.one.bean.News;

import java.util.List;

public interface NewsService {
    public void SaveNews(News news);
    public void UpdateNews(Integer id, String title, String content);
    public List<CategoryAndNews> listAllNews();
    public List<CategoryAndNews> likeCategoryName(String categoryName);
    public String selectName(int id);
    public void removeNews(Integer id);
    public News findById(Integer id);
    public List<String> listCategoryName();
    public List<CategoryAndNews> getLikeTitle(String sel);
}
