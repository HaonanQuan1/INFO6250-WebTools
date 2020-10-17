<%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 10/16/20
  Time: 8:49 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="csv" uri="myTag" %>
<html>
<head>
    <title>Upload CSV file</title>
</head>
<body>
    <form action="csv" method="post">
        <input type="text" name="fileName" placeholder="type file name">
        <input type="submit" value="submit">
    </form>
</body>
</html>
