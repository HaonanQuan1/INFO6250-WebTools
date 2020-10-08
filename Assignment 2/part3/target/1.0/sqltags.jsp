<%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 10/4/20
  Time: 4:04 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>sql tags</title>
</head>
<body>
<h1>SQL tags</h1>
<h3>setDataSource</h3>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/WEBTOOLS?useSSL=false&serverTimezone=UTC"
                   user="root"  password="Allen19971003"/>
<br>
<h3>sql query</h3>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/WEBTOOLS?useSSL=false&serverTimezone=UTC"
                   user="root"  password="Allen19971003"/>

<sql:query dataSource="${db}" var="rs">
    SELECT * from usettable;
</sql:query>

<table border="2" width="100%">
    <tr>
        <th>Student ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
    </tr>
    <c:forEach var="table" items="${rs.rows}">
        <tr>
            <td><c:out value="${table.id}"/></td>
            <td><c:out value="${table.First_Name}"/></td>
            <td><c:out value="${table.Last_Name}"/></td>
            <td><c:out value="${table.Age}"/></td>
        </tr>
    </c:forEach>
</table>
<h3>sql update</h3>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/WEBTOOLS?useSSL=false&serverTimezone=UTC"
                   user="root"  password="Allen19971003"/>
<sql:update dataSource="${db}" var="count">
    INSERT INTO usettable VALUES (120,'Nasreen', 'jaha', 25);
</sql:update>

<sql:query dataSource="${db}" var="rs">
    SELECT * from usettable;
</sql:query>

<table border="2" width="100%">
    <tr>
        <th>Student ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
    </tr>
    <c:forEach var="table" items="${rs.rows}">
    <tr>
        <td><c:out value="${table.id}"/></td>
        <td><c:out value="${table.First_Name}"/></td>
        <td><c:out value="${table.Last_Name}"/></td>
        <td><c:out value="${table.Age}"/></td>
    </tr>
    </c:forEach>

</body>
</html>
