<%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 9/23/20
  Time: 2:52 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Part 7</title>
</head>
<body>
<form action="show.jsp" method="post">
  Email:<input type="email" name="email" ><br>
  Password:<input type="password" name="password"><br>
  Confirm Password:<input type="password" name="repassword"> <br>
  Upload Your Picture:<input type="file" name="pic">
  <br>
  Gender:
  <input type="radio" name="gender" value="male">
  <label>Male</label>
  <input type="radio" name="gender" value="female">
  <label>Female</label>
  <br>
  Select Country:
  <select name="country">
    <option value="UK">UK</option>
    <option value="US">US</option>
    <option value="CHINA">China</option>
  </select>
  <br>
  Hobby:<input type="checkbox" name="hobby" value="Cricket">
  <label>Cricket</label>
  <input type="checkbox" name="hobby" value="Football">
  <label>Football</label>
  <br>
  Address:
  <textarea name="address"></textarea>
  <br>
  <input type="submit" value="register">
</form>
</body>
</html>
