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
    <title>xmltags</title>
</head>
<body>
<h3>c:set</h3>
<c:set var="book">
    <books>
        <book>
            <name>Three mistakes of my life</name>
            <author>Chetan Bhagat</author>
            <price>200</price>
        </book>
        <book>
            <name>Tomorrow land</name>
            <author>Brad Bird</author>
            <price>2000</price>
        </book>
    </books>
</c:set>
<x:parse xml="${book}" var="output"/>
<x:set var="fragment" select="$output/books/book[2]/price"/>
<b>The price of the Tomorrow land book</b>:
<x:out select="$fragment" />
<h3>x:param</h3>
<c:import var="bookInfo" url="novels.xml"/>

<x:parse xml="${bookInfo}" var="output"/>
<p>First Book title: <x:out select="$output/books/book[1]/name" /></p>
<p>First Book price: <x:out select="$output/books/book[1]/price" /></p>
<p>Second Book title: <x:out select="$output/books/book[2]/name" /></p>
<p>Second Book price: <x:out select="$output/books/book[2]/price" /></p>

<h3>x:if</h3>
<c:set var="vegetables">
    <vegetables>
        <vegetable>
            <name>onion</name>
            <price>40</price>
        </vegetable>
        <vegetable>
            <name>Potato</name>
            <price>30</price>
        </vegetable>
        <vegetable>
            <name>Tomato</name>
            <price>90</price>
        </vegetable>
    </vegetables>
</c:set>
<x:parse xml="${vegetables}" var="output"/>
<x:if select="$output/vegetables/vegetable/price < 100">
    Vegetables prices are very low.
</x:if>
<br>
</body>
</html>
