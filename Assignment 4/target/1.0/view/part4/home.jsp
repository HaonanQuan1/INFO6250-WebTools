<%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 10/15/20
  Time: 12:56 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        form{
            margin-left: 42%;
            margin-right: 20%;

        }
        label{
            display: inline-block;
            width: 140px;
            text-align: right;
        }

        h1{
            text-align: center;
        }

        h3{
            text-align: center;
        }

        body{
            background-color: antiquewhite;
        }

        input[type=submit]  {
            margin-left:10%;
        }

    </style>
</head>
<body>
<h1>Welcome</h1>
<h3>Please make your selection below</h3>
<form action="select" method="POST">
    <select name="option">
        <option value="Browse">Check Movie Details</option>
        <option value="Add">Add New Movie</option>
    </select><br/><br/>
    <input type="submit" value="Submit" >
</form>
<a href="../index.jsp">Back to Navigation Page</a>

</body>
</html>
