<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 10/6/20
  Time: 11:22 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show</title>
</head>
<body>
    <%
        response.setContentType("text/html");
        PrintWriter print = response.getWriter();
        Enumeration<String> em = request.getParameterNames();
        Iterator it = em.asIterator();
        while(em.hasMoreElements()){
            String name = em.nextElement();
            print.println(name+" is: "+request.getParameter(name));
            print.println("<br>");
        }
    %>
</body>
</html>
