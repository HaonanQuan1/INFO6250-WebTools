<%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 10/4/20
  Time: 3:54 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored = "false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>core tag</title>
</head>
<body>
<h1>Core tag lib</h1>
<h3>C:OUT tag:</h3>
<c:out value="${'Welcome'}"/>
<br>
<h3>C:if tag:</h3>
<c:set var="income" scope="session" value="${4000*4}"/>
<c:if test="${income > 8000}">
<p>My income is: <c:out value="${income}"/><p>
    </c:if>
    <br>
<h3>C:forEach tag:</h3>
<c:forEach var="j" begin="1" end="3">
    Item:<c:out value="${j}"/>
</c:forEach>
</body>
</html>
