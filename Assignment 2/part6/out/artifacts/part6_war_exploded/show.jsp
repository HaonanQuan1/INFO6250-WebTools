<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 10/6/20
  Time: 10:55 下午
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
        String password = request.getParameter("password");
        String rePassword = request.getParameter("repassword");
        String file = request.getParameter("pic");
        String gender = request.getParameter("gender");
        String country = request.getParameter("country");
        String[] hobby = request.getParameterValues("hobby");
        String address = request.getParameter("address");
        if(!password.equals(rePassword)){
            print.println("Password doesn't equal, check the password");

        }
        print.println("Email is: "+request.getParameter("email"));
        print.println("<br>");
        print.println("Password is: "+password);
        print.println("<br>");
        print.println("Pic is "+file);
        print.println("<br>");
        print.println("gender is "+gender);
        print.println("<br>");
        print.println("hobbies are "+String.join(",",hobby));
        print.println("<br>");
        print.println("Address is "+address);
        print.println("<br>");


    %>
</body>
</html>
