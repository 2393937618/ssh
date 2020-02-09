package com.czj.one.bean;

import java.util.Date;

public class CategoryAndNews {
    private int id;
    private String title;
    private String content;
    private String issue;
    private String categoryName;

    public CategoryAndNews(int id, String title, String issue, String categoryName) {
        this.id = id;
        this.title = title;
        this.issue = issue;
        this.categoryName = categoryName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getIssue() {
        return issue;
    }

    public void setIssue(String issue) {
        this.issue = issue;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
}
