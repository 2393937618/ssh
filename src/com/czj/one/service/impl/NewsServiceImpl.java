package com.czj.one.service.impl;

import com.czj.one.bean.CategoryAndNews;
import com.czj.one.bean.News;
import com.czj.one.dao.NewsDao;
import com.czj.one.service.NewsService;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Transactional(readOnly = false)
public class NewsServiceImpl implements NewsService {
    @Resource
    private NewsDao newsDao;
    @Override
    public void SaveNews(News news) {
        newsDao.SaveNews(news);
    }

    @Override
    public void UpdateNews(Integer id, String title, String content) {
        News news = findById(id);
        news.setTitle(title);
        news.setContent(content);
        newsDao.UpdateNews(news);
    }


    @Override
    public List<CategoryAndNews> listAllNews() {
        return newsDao.listNews();
    }

    @Override
    public List<CategoryAndNews> likeCategoryName(String categoryName) {
        return newsDao.likeName(categoryName);
    }

    @Override
    public String selectName(int id) {
        return newsDao.selectName(id);
    }

    @Override
    public void removeNews(Integer id) {
        News news = findById(id);
        newsDao.removeNews(news);
    }



    @Override
    public News findById(Integer id) {
        return newsDao.getNews(id);
    }

    @Override
    public List<String> listCategoryName() {
        return newsDao.findCategoryName();
    }

    @Override
    public List<CategoryAndNews> getLikeTitle(String sel) {
        return newsDao.likeTitle(sel);
    }


}
