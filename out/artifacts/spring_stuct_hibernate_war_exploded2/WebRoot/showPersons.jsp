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
                            <img alt="" src="${pageContext.request.contextPath}/WebRoot/images/avatar3.jpg"/>
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
                        <h3>查看新闻类型</h3>
                    </div>

                    <table align="center" border="2" cellspacing="0">
                        <tr>
                            <th>序号</th>
                            <th>用户名</th>
                            <th>密码</th>
                            <th>操作</th>
                        </tr>
                        <s:iterator value="persons" var="p">
                            <tr>
                                <td><s:property value="#p.id"/> </td>
                                <td><s:property value="#p.name"/> </td>
                                <td><s:property value="#p.password"/> </td>
                                <td><s:a href="getByIdAction.action?id=%{#category.id}">修改</s:a>    <s:a href="deleteAction.action?id=%{#category.id}">删除</s:a> </td>

                            </tr>
                        </s:iterator>
                        <tr>
                            <td></td>
                        </tr>
                    </table>



                    <%--<form id="defaultForm" method="post" class="form-horizontal" action="user/changePassword">--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-lg-3 control-label">旧密码</label>--%>
                            <%--<div class="col-lg-5">--%>
                                <%--<input type="password" class="form-control" name="oldPassword" />--%>
                            <%--</div>--%>
                        <%--</div>--%>

                        <%--<div class="form-group">--%>
                            <%--<label class="col-lg-3 control-label">新密码</label>--%>
                            <%--<div class="col-lg-5">--%>
                                <%--<input type="password" class="form-control" name="password" />--%>
                            <%--</div>--%>
                        <%--</div>--%>

                        <%--<div class="form-group">--%>
                            <%--<label class="col-lg-3 control-label">确认密码</label>--%>
                            <%--<div class="col-lg-5">--%>
                                <%--<input type="password" class="form-control" name="confirmPassword" />--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-lg-3 control-label" id="captchaOperation"></label>--%>
                            <%--<div class="col-lg-2">--%>
                                <%--<input type="text" class="form-control" name="captcha" />--%>
                            <%--</div>--%>
                        <%--</div>--%>

                        <%--<div class="form-group">--%>
                            <%--<div class="col-lg-9 col-lg-offset-3">--%>
                                <%--<button type="submit" class="btn btn-primary" name="save" value="保存">保存</button>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</form>--%>
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