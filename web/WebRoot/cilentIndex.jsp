<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>修改密码</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WebRoot/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WebRoot/css/bootstrapValidator.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WebRoot/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WebRoot/css/user/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WebRoot/css/user/navigator.css">
    <style>

        body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, form, p, blockquote, th, td {
            margin:0;
            padding:0;
            font-size:12px;
        }

        ol, ul {
            list-style:none outside none;
        }

        /*link*/
        a{color:#106aa9; text-decoration:none;}

        /*content nav one*/
        .navC{border-bottom:1px solid #cce2ed;}
        .navC li{border-left:1px solid #cce2ed;border-right:1px solid #cce2ed;}
        .navC li a{border-top:1px solid #cce2ed;background:#f1f6fa;font-size:14px;}
        .navC li a:hover{background:#ffffff;text-decoration:none;}
        .navC .current,.navC li:hover{border-left:1px solid #cce2ed;border-right:1px solid #cce2ed;}
        .navC li:hover a{border-top:1px solid #cce2ed;}
        .navC .current a,.navC .current a:hover{background:#ffffff;border-bottom:1px solid #ffffff;color:#333333;border-top:1px solid #cce2ed;}
        .navC .current a{ font-weight:700;}

        .navC{height:28px;line-height:28px;}
        .navC ul{padding-left:10px;float:left;margin-bottom:-1px;} /*ie6*/
        .navC li{float:left;margin-right:5px;}
        .navC li a{float:left;display:block;padding:0 15px;height:28px;overflow:hidden;margin-top:-1px;_position:relative;}

        .mb10{ margin:10px; }
        .mb20{ margin:20px; }
        .pd10{ padding:10px;}

        /*table*/
        .tdtable{border:0px;cellspacing:0;cellpadding:0;align:center;width:98%;border-collapse:collapse;}
        .tdtable th,tr{height:40px;}
        .tdtable th{background:#cce2ed;padding:10px;padding:4px;border:solid 1px #fff;}
        .tdtable td{border:solid 1px #cce2ed;padding:4px;}


    </style>
</head>
<body>
<div class="container-fluid">
    <div class="header">
        <nav class=" navbar navbar-default navbar-fixed-top" id="top-navbar" role="navigation">
            <div class="navbar-brand">
                <a href="index.html">
                    <img src="${pageContext.request.contextPath}/WebRoot/images/logo.png" alt="Campus" class="img-responsive" height="30" width="120">
                </a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav pull-right">
                    <li class="dropdown user" id="header-user">


                        <a href="/WebRoot/login.jsp" style="color: #FFFFFF"><s:property value="name" default="登录"/></a>


                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="fa fa-user"></i>用户信息</a></li>
                            <li><a href="#"><i class="fa fa-comment"></i>消息</a></li>
                            <li><a href="#"><i class="fa fa-eye"></i>预留</a></li>
                            <li><a href="login.html"><i class="fa fa-power-off"></i>注销</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="main row">
        <%--<div class="left-part col-lg-2">--%>
            <%--<nav class="left-nav navbar-left col-md-12 " role="navigation">--%>
                <%--<a href="#base" class="nav-header menu-first collapse navbar-collapse" data-toggle="collapse"><i--%>
                        <%--class="fa fa-user"></i>&nbsp;个人信息</a>--%>
                <%--<ul class="nav nav-list collapse menu-second in" id="base">--%>
                    <%--<li role="presentation"><a href="WebRoot/addCategory.jsp"><i class="fa fa-edit"></i>&nbsp;类型添加</a></li>--%>
                    <%--<li role="presentation"><s:a href="showAction.action"><i class="fa fa-key"></i>&nbsp;类型查看</s:a></li>--%>
                <%--</ul>--%>
                <%--<a href="#message" class="nav-header menu-first collapse navbar-collapse" data-toggle="collapse">--%>
                    <%--<i class="fa fa-comment"></i>&nbsp;消息通知--%>
                <%--</a>--%>
                <%--<ul class="nav nav-list collapse menu-second in " id="message">--%>
                    <%--<li role="presentation"><a href="message.html"><i class="fa fa-comments"></i>&nbsp;临时会话</a></li>--%>
                    <%--<li role="presentation"><a href="email.html"><i class="fa fa-envelope"></i>&nbsp;邮件系统</a></li>--%>
                <%--</ul>--%>
                <%--<a href="#manage" class="nav-header menu-first collapse navbar-collapse" data-toggle="collapse">--%>
                    <%--<i class="fa fa-wrench"></i>&nbsp;操作管理--%>
                <%--</a>--%>
                <%--<ul class="nav nav-list collapse menu-second in " id="manage">--%>
                    <%--<li><a href="record-in.html"><i class="fa fa-pencil"></i>&nbsp;信息录入</a></li>--%>
                    <%--<li><a href="file-upload.html"><i class="fa fa-upload"></i>&nbsp;文件上传</a></li>--%>
                    <%--<li><a href="activity-create.html"><i class="fa fa-plus"></i>&nbsp;活动创建</a></li>--%>
                    <%--<li><a href="activity-checkin.html"><i class="fa fa-paperclip"></i>&nbsp;活动审批</a></li>--%>
                <%--</ul>--%>
                <%--<a href="#data" class="nav-header menu-first collapse navbar-collapse" data-toggle="collapse"><i--%>
                        <%--class="fa fa-bar-chart"></i>&nbsp;数据分析</a>--%>
                <%--<ul class="nav nav-list collapse menu-second in " id="data">--%>
                    <%--<li><a href="data-chart.html"><i class="fa fa-pie-chart"></i>&nbsp;数据统计</a></li>--%>
                    <%--<li><a href="data-table.html"><i class="fa fa-table"></i>&nbsp;数据报表</a></li>--%>
                    <%--<li><a href="#"><i class="fa fa-pencil"></i>&nbsp;预留</a></li>--%>
                <%--</ul>--%>
                <%--<a href="#reserve" class="nav-header menu-first collapse navbar-collapse" data-toggle="collapse"><i--%>
                        <%--class="icon-book icon-large"></i>&nbsp;预留</a>--%>
                <%--<ul class="nav nav-list collapse menu-second " id="reserve">--%>
                    <%--<li><a href="#"><i class="fa fa-pencil"></i>&nbsp;one</a></li>--%>
                    <%--<li><a href="#"><i class="fa fa-pencil"></i>&nbsp;two</a></li>--%>
                    <%--<li><a href="#"><i class="fa fa-pencil"></i>&nbsp;>three</a></li>--%>
                <%--</ul>--%>
            <%--</nav>--%>
        <%--</div>--%>
        <div class="col-lg-offset-2 domain-part col-lg-8">
            <section>
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="page-header">
                        <h3>新闻列表</h3>

                    </div>


                    <div id="mainContainer">
                        <form action="likeTitleAction.action">
                            <input type="text" name="sel" style="margin-left: 400px"/>
                            <s:submit value="查询"/>
                        </form>
                        <div id="navContainer" class="navC mb10">
                            <ul>
                                <li><a href="clientShowAction.action" hidefocus="true">全部</a></li>
                                <s:iterator value="categoryNames" var="c">
                                <li><s:a href="likeCategoryNameAction.action?categoryName=%{#c}" hidefocus="true"><s:property value="#c"/></s:a></li>
                                </s:iterator>
                            </ul>
                        </div>
                        <div class="mb20">
                            <table class="tdtable">
                                <tbody>
                                <tr>
                                    <th>
                                        <strong>序号</strong>
                                    </th>
                                    <th>
                                        标题
                                    </th>
                                    <th>
                                        发布时间
                                    </th>
                                    <th>
                                        类型
                                    </th>
                                </tr>
                                <s:iterator value="newsList" var="news">
                                    <tr>
                                        <td><s:property value="#news.id"/> </td>
                                        <td><s:a href="detailAction.action?id=%{#news.id}"><s:property value="#news.title"/></s:a></td>
                                        <td><s:property value="#news.issue"/> </td>
                                        <td><s:property value="#news.categoryName"/> </td>
                                    </tr>
                                </s:iterator>


                                </tbody>
                            </table>

                        </div>
                    </div>



                    <%--<table align="center" border="2" cellspacing="0">--%>
                        <%--<tr>--%>
                            <%--<th>序号</th>--%>
                            <%--<th>类型名</th>--%>
                            <%--<th>操作</th>--%>
                        <%--</tr>--%>
                        <%--<s:iterator value="categories" var="category">--%>
                            <%--<tr>--%>
                                <%--<td><s:property value="#category.id"/> </td>--%>
                                <%--<td><s:property value="#category.categoryName"/> </td>--%>
                                <%--<td><s:a href="getByIdAction.action?id=%{#category.id}">修改</s:a>    <s:a href="deleteAction.action?id=%{#category.id}">删除</s:a> </td>--%>

                            <%--</tr>--%>
                        <%--</s:iterator>--%>
                        <%--<tr>--%>
                            <%--<td></td>--%>
                        <%--</tr>--%>
                    <%--</table>--%>




                </div>
            </section>
            <!-- :form -->
        </div>
        <div class="right-part col-lg-2"></div>
    </div>
    <div class="footer"></div>
</div>

<script src="js/jquery-2.2.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrapValidator.min.js"></script>

</body>
</html>