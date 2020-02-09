<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Index</title>

    <style>

        .show{
            width:100%;
        }
        .show>h2 {
            margin-top: 30px;
            font-size: 16px;
            text-align: center;
            color: #de141a;
            font-weight: bold;
        }
        .shownav{
            margin-top:25px;
            font-size:14px;
            text-align:center;
        }
        .shownav>h4 {
            padding-bottom: 20px;
            border-bottom: 1px solid #cccccc;

        }
        .content{
            margin-left:400px;
            width:800px;
            height:300px;
            font-size:12.0pt;
            font-family:宋体;
        }
    </style>
</head>
<body>


<div class="show">

    <h2><s:property value="detail.title"/> </h2>

    <div class="shownav">
        <h4><s:property value="detail.issue"/></h4>
    </div>

</div>
<div class="content">
    <s:property value="detail.content"/>
    <a href="clientShowAction.action">返回</a>
</div>


</body>
</html>