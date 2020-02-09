<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Index</title>
</head>
<body>
<s:form action="addAction" namespace="/person">
    <s:textfield name="person.id" label="主键"/>
    <s:textfield name="person.name" label="用户名"/>
    <s:submit value="添加"/>
</s:form>

</body>
</html>