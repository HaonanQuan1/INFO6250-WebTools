<%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 10/15/20
  Time: 2:29 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Success</title>
</head>
<body>
    <c:set var="books" value="${requestScope.books}"/>
    <h2> books added Successfully!</h2>
    <c:forEach var="book" items="books" >
        <p>${book.getTitle()}</p>
    </c:forEach>
    <a href="part5Home.jsp">GO back to home page</a>
</body>
<a href="../index.jsp">Back to Navigation Page</a>

</html>
