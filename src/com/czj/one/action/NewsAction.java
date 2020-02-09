package com.czj.one.action;

import com.czj.one.bean.Category;
import com.czj.one.bean.CategoryAndNews;
import com.czj.one.bean.News;
import com.czj.one.service.CategoryService;
import com.czj.one.service.NewsService;
import com.opensymphony.xwork2.ActionSupport;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class NewsAction extends ActionSupport {
    @Resource
    private NewsService newsService;
    private News news;
    private News detail;
    private List<CategoryAndNews> newsList;
    @Resource
    private CategoryService categoryService;
    private List<Category> categories;
    private Category category;

    private int id;
    private String categoryName;
    private List<String> categoryNames;

    private CategoryAndNews categoryAndNews;
    private String sel;
    private String name;

    private String content;
    private String title;
    private Date issue;



    public List<CategoryAndNews> getNewsList() {
        return newsList;
    }

    public void setNewsList(List<CategoryAndNews> newsList) {
        this.newsList = newsList;
    }

    public NewsService getNewsService() {
        return newsService;
    }

    public void setNewsService(NewsService newsService) {
        this.newsService = newsService;
    }

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }

    public CategoryService getCategoryService() {
        return categoryService;
    }

    public void setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
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
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public CategoryAndNews getCategoryAndNews() {
        return categoryAndNews;
    }

    public void setCategoryAndNews(CategoryAndNews categoryAndNews) {
        this.categoryAndNews = categoryAndNews;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getSel() {
        return sel;
    }

    public void setSel(String sel) {
        this.sel = sel;
    }

    public News getDetail() {
        return detail;
    }

    public void setDetail(News detail) {
        this.detail = detail;
    }

    public List<String> getCategoryNames() {
        return categoryNames;
    }

    public void setCategoryNames(List<String> categoryNames) {
        this.categoryNames = categoryNames;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getIssue() {
        return issue;
    }

    public void setIssue(Date issue) {
        this.issue = issue;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    //获取category所有数据包括id和类型，类型名称提供给新闻类型选择下拉列表
    public String AllCategoryName(){
        categories = categoryService.listCategory();
        return "all";
    }



    //添加新闻数据
    public String saveNews(){
        //通过下拉列表提供的id得到category对象
        category = categoryService.findById(id);
        //设置日期
        SimpleDateFormat sDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String date=sDateFormat.format(new Date());
        news.setIssue(date);
        //category关联News
        news.setCategory(category);
        //保存
        newsService.SaveNews(news);
        return SUCCESS;

    }

    //后端展示新闻数据
    public String showNews(){
        //获取category所有数据包括id和类型
        categories = categoryService.listCategory();
        //获取category和news两个表的数据
        newsList = newsService.listAllNews();
        return "show";

    }

    //客户端首次登录展示数据
    public String clientShow(){
        //测试从personAction传递的参数name
        System.out.println(name);
        //获取所有类型
        categoryNames = newsService.listCategoryName();
        //测试类型数据
        System.out.println(categoryNames.toString());
        //获取category所有数据包括id和类型
        categories = categoryService.listCategory();
        //获取category和news两个表的数据
        newsList = newsService.listAllNews();
        return "clientShow";

    }

    //客户端通过类型名称查看数据
    public String clientLikeShow(){
        //新方法获取类型名称
        categoryNames = newsService.listCategoryName();
        categories = categoryService.listCategory();
        //测试页面目录传过来的类型名称
        System.out.println(categoryName);
        //通过类型名称查找两个表数据
        newsList = newsService.likeCategoryName(categoryName);
        return "clientLikeShow";
    }

    //点击链接进入详情页面
    public String detailNew(){
        //测试jsp页面点击链接传递的id
        System.out.println(id);
        //通过id查找News的数据
        detail = newsService.findById(id);
        //输出测试
        System.out.println(detail.getTitle());
        return "detail";
    }

    //模糊查询title
    public String likeTitles(){
        //接收jsp页面input传递的参数sel
        System.out.println(sel);
        //通过sel模糊查询两个表数据
        newsList = newsService.getLikeTitle(sel);
        return "likeTitle";
    }


    //后端通过类型名称获取两个表数据（淘汰）
    public String likeShow(){
        System.out.println(id);
        categoryName = newsService.selectName(id);
        System.out.println(categoryName.substring(1,categoryName.length()-1));
        categories = categoryService.listCategory();
        newsList = newsService.likeCategoryName(categoryName.substring(1,categoryName.length()-1));
        return "likeshow";
    }





    //通过id获取news对象
    public String getNewsById(){
        //测试id
        System.out.println(id);
        //获取类型名称及id用于下拉列表
        categories = categoryService.listCategory();
        //获取News对象
        news = newsService.findById(id);
        return "getNewsId";
    }

    //通过News对象更新数据
    public String updateNews(){
        //测试数据
        System.out.println(news.getId()+"  "+title);
        //更新数据
        newsService.UpdateNews(news.getId(),title,content);
        return "updateNew";
    }

    //删除News对象
    public String deleteNews(){
        //测试jsp传递过来的id
        System.out.println(id);
        //删除这个对象
        newsService.removeNews(id);
        return "deleteNew";
    }






}
