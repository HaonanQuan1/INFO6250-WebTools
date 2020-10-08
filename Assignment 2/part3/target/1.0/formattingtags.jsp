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
    <title>formatting tags</title>
</head>
<body>
<h1>Formatting tags</h1>
<h3>fmt:parseNumber</h3>
<c:set var="Amount" value="786.970"/>
<fmt:parseNumber var="j"   type="number" value="${Amount}"/>
<p><i>AMount is:</i><c:out value="${j}"/></p>
<fmt:parseNumber var="j" integerOnly="true" type="number" value="${Amount}" />
<p><i>Amount is:</i>  <c:out value="${j}" /></p>
<br>
<h3>fmt:parseDate</h3>
<c:set var="date" value="12-08-2016" />

<fmt:parseDate value="${date}" var="parsedDate"  pattern="dd-MM-yyyy" />
<p><c:out value="${parsedDate}" /></p>
<br>
<h3>fmt:formatNumber</h3>
<c:set var="amount" value="8050.14155"></c:set>
<p>Formatted Number-1: <fmt:formatNumber value="${amount}" type="currency"/> </p>
<p>Formatted Number-2:<fmt:formatNumber value="${amount}" type="number" groupingUsed="true" /></p>
<p>Formatted Number-3:
    <fmt:formatNumber type="number" maxIntegerDigits="3" value="${Amount}" /></p>
</body>
</html>
