<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>注册</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WebRoot/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WebRoot/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WebRoot/fonts/iconic/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WebRoot/css/util.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WebRoot/css/main.css">
</head>

<body>

<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">


            <form class="login100-form validate-form" action="addPersonAction.action" method="post">
            <span class="login100-form-title p-b-49">注册</span>
                <div class="wrap-input100 validate-input m-b-23" data-validate="请输入用户名">
                    <span class="label-input100">用户名</span>
                    <input class="input100" type="text" name="person.name" placeholder="请输入用户名" autocomplete="off">
                    <span class="focus-input100" data-symbol="&#xf206;"></span>
                </div>
                <span style="color: red;font-size: 12px;"><s:fielderror fieldName="person.name"></s:fielderror></span>

                <div class="wrap-input100 validate-input" data-validate="请输入密码">
                    <span class="label-input100">密码</span>
                    <input class="input100" type="password" name="person.password" placeholder="请输入密码">
                    <span class="focus-input100" data-symbol="&#xf190;"></span>
                </div>
                <span style="color: red;font-size: 12px;"><s:fielderror fieldName="person.password"></s:fielderror></span>
                <br/>
                <div class="wrap-input100 validate-input" data-validate="请确认密码">
                    <span class="label-input100">确认密码</span>
                    <input class="input100" type="password" name="person.password1" placeholder="请确认密码">
                    <span class="focus-input100" data-symbol="&#xf190;"></span>
                </div>
                <span style="color: red;font-size: 12px;"><s:fielderror fieldName="person.password1"></s:fielderror></span>
                <div class="text-right p-t-8 p-b-31">

                </div>

                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button class="login100-form-btn">注 册</button>
                    </div>
                </div>






                <div class="flex-col-c p-t-25">
                    <a href="/WebRoot/login.jsp" class="txt2">返回登录</a>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/WebRoot/vendor/jquery/jquery-3.2.1.min.js"></script>
<%--<script src="${pageContext.request.contextPath}/WebRoot/js/main.js"></script>--%>
</body>

</html>