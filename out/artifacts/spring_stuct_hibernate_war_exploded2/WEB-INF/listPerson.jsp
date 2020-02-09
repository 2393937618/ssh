<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <%--<base href="<%=basePath%>">--%>
    <title>Index</title>
</head>
<body>
<s:iterator value="persons" var="person">
    <s:property value="#person.id"/>
    <s:property value="#person.name"/>
</s:iterator>


</body>
</html>