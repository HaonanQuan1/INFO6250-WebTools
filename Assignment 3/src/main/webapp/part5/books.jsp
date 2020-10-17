<%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 10/15/20
  Time: 2:26 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false"  language="java" %>
<html>
<head>
    <title>Books</title>
</head>
<body>
    <%
        String amount = request.getParameter("amount");
        int count = Integer.valueOf(amount);
    %>
    <form action="book" method="post">
        <table border="0.5">
            <tr/><th/>ISBN<th/>Book Title<th/>Authors<th/>Price
            <%for (int i = 0; i < count; i++) {%>
            <tr/>
            <td/><input type="text" name="isbn<%=String.valueOf(i)%>"/>
            <td/><input type="text" name="title<%=String.valueOf(i)%>"/>
            <td/><input type="text" name="authors<%=String.valueOf(i)%>"/>
            <td/><input type="text" name="price<%=String.valueOf(i)%>"/>
            <%}%>
            <tr/><td/>
            <input type="submit" name="submit" value="Add Books">
            <input type="hidden" name="amount" value="<%=amount%>">
        </table>
    </form>
    <a href="../index.jsp">Back to Navigation Page</a>

</body>
</html>
