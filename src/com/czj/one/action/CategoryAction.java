package com.czj.one.action;

import com.czj.one.bean.Category;
import com.czj.one.service.CategoryService;
import com.opensymphony.xwork2.ActionSupport;

import javax.annotation.Resource;
import java.util.List;

public class CategoryAction extends ActionSupport {
    @Resource
    private CategoryService categoryService;
    private List<Category> categories;
    private Category category;
    private int id;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }

    //展示类型数据
    public String showCategory(){
        categories = categoryService.listCategory();
        return "show";
    }

    //添加类型数据
    public String addCategory(){
        //判断非空操作
        if(!category.getCategoryName().equals("")){
            categoryService.SaveCategory(category);
        }
        return "add";
    }



    //showCategory的jsp页面跳转到这个action，获取到id返回对象并跳转到updateCategory页面
    public String getById(){
        category = categoryService.findById(id);
        return "get";
    }
    //通过getById的方法获取到对象执行更新操作
    public String updateCategory(){
        categoryService.UpdateCategory(category);
        return SUCCESS;
    }

    //删除category数据
    public String deleteCategory(){
        //id获取category对象
        category = categoryService.findById(id);
        //删除category对象对应数据
        categoryService.removeCategory(category);
        return SUCCESS;
    }


}
