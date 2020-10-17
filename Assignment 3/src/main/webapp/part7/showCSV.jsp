<%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 10/16/20
  Time: 8:52 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@taglib prefix="csv" uri="myTag" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Display CSV</title>
</head>
<body>
<%--    <c:set />--%>
<%--    <p>csv</p>--%>
<%--    ${requestScope.fileName}--%>
<%--    ${requestScope.path}--%>
    <csv:display name="${requestScope.fileName}" path="${requestScope.path}"/>
</body>
</html>
