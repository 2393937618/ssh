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
                        <a href="/WebRoot/login.jsp" class="dropdown-toggle" data-toggle="dropdown">
                            <span class="username">辅导员</span>
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="/WebRoot/login.jsp"><i class="fa fa-user"></i>用户信息</a></li>
                            <li><a href="/WebRoot/login.jsp"><i class="fa fa-comment"></i>消息</a></li>
                            <li><a href="/WebRoot/login.jsp"><i class="fa fa-eye"></i>预留</a></li>
                            <li><a href="/WebRoot/login.jsp"><i class="fa fa-power-off"></i>注销</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="main row">
        <div class="left-part col-lg-2">
            <nav class="left-nav navbar-left col-md-12 " role="navigation">
                <a href="#base" class="nav-header menu-first collapse navbar-collapse" data-toggle="collapse"><i
                        class="fa fa-user"></i>&nbsp;类型管理</a>
                <ul class="nav nav-list collapse menu-second in" id="base">
                    <li role="presentation"><a href="/WebRoot/addCategory.jsp"><i class="fa fa-edit"></i>&nbsp;类型添加</a></li>
                    <li role="presentation"><s:a href="showAction.action"><i class="fa fa-key"></i>&nbsp;类型查看</s:a></li>
                </ul>
                <a href="#message" class="nav-header menu-first collapse navbar-collapse" data-toggle="collapse">
                    <i class="fa fa-comment"></i>&nbsp;新闻管理
                </a>
                <ul class="nav nav-list collapse menu-second in " id="message">
                    <li role="presentation"><a href="allNameAction.action"><i class="fa fa-comments"></i>&nbsp;新闻发布</a></li>
                    <li role="presentation"><a href="showNewsAction.action"><i class="fa fa-envelope"></i>&nbsp;新闻查看</a></li>
                </ul>

                <a href="#message" class="nav-header menu-first collapse navbar-collapse" data-toggle="collapse">
                    <i class="fa fa-comment"></i>&nbsp;用户管理
                </a>
                <ul class="nav nav-list collapse menu-second in " id="data">
                    <li role="presentation"><a href="selectAllPerson.action"><i class="fa fa-comments"></i>&nbsp;用户查看</a></li>
                </ul>
                <a href="#reserve" class="nav-header menu-first collapse navbar-collapse" data-toggle="collapse"><i
                        class="icon-book icon-large"></i>&nbsp;预留</a>
                <ul class="nav nav-list collapse menu-second " id="reserve">
                    <li><a href="#"><i class="fa fa-pencil"></i>&nbsp;one</a></li>
                    <li><a href="#"><i class="fa fa-pencil"></i>&nbsp;two</a></li>
                    <li><a href="#"><i class="fa fa-pencil"></i>&nbsp;>three</a></li>
                </ul>
            </nav>
        </div>
        <div class="col-lg-offset-2 domain-part col-lg-8">
            <section>
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="page-header">
                        <h3>更新新闻数据</h3>
                    </div>

                    <form action="updateNewsAction.action" method="post">
                        <s:hidden name="news.id" value="%{news.id}"/>
                        <input name="title" value="<s:property value="news.title"/>" style="width:400px;"/>
                        <br/><br/>
                        <textarea name="content" style="width:800px;height:200px;"><s:property value="news.content"/> </textarea>
                        <br/><br/>
                        <s:submit value="更新"/>

                    </form>
                    <%--<s:form action="updateAction">--%>
                        <%--<s:hidden name="category.id" value="%{category.id}"/>--%>
                        <%--<s:textfield name="category.categoryName" label="类项名"/>--%>
                        <%--<s:submit value="更新"/>--%>
                    <%--</s:form>--%>




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