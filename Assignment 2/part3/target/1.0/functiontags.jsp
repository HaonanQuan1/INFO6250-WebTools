<%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 10/4/20
  Time: 4:02 下午
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
    <title>Function tags</title>
</head>
<body>
<h1>Function tag lib</h1>
<h3>fn:contains():</h3>
<c:set var="String" value="Welcome to java"/>
<c:if test="${fn:contains(String, 'java')}">
    <p>Found java string</p>
</c:if>
<br>
<h3>fn:endsWith():</h3>
<c:set var="String" value="Welcome to my page"/>
<c:if test="${fn:endsWith(String, 'page')}">
    <p>String ends with page</p>
</c:if>
<br>
<h3>fn:indexOf():</h3>
<c:set var="string1" value="It is assignment 3"/>
<p>Index of assignment in string1 is :${fn:indexOf(string1, "assignment")}</p>
<br>
</body>
</html>
