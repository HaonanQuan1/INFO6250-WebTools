<%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 10/15/20
  Time: 12:52 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  isELIgnored="false" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Browse</title>
    <style> body{font-size: 14pt; margin-left: 2%; margin-right: 2%; background-color: antiquewhite;}
    #clean{clear:left;}
    tr{white-space: nowrap;}
    td{white-space: nowrap; font-size: 20px; text-align: center;}
    </style>
</head>
<body>
<h1> Found Following movies with Search Criteria </h1><br><br/>

<table border = "1" width="60%">
    <thead>
    <th>Title</th>
    <th>Actor</th>
    <th>Actress</th>
    <th>Genre</th>
    <th>Year</th>
    </thead>
    <tbody>
    <c:forEach var="movie" items="${requestScope.searchedMovies}">
        <tr>
            <td><c:out value="${movie.getTitle()}" /></td>
            <td><c:out value="${movie.getActor()}" /></td>
            <td><c:out value="${movie.getActress()}" /></td>
            <td><c:out value="${movie.getGenre()}" /></td>
            <td><c:out value="${movie.getYear()}" /></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br><br/>
<a href="home.jsp"> Click here to go to the main page </a>
<a href="../index.jsp">Back to Navigation Page</a>

</body>
</html>
