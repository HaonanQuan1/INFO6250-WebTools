<%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 10/15/20
  Time: 12:13 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Movie Page</title>
    <style> body{font-size: 14pt;
        text-align: center;
        background-color: antiquewhite;}
    form{ margin-left: 25%; margin-right: 30%;}

    label{display: inline-block;
        width: 140px;
        text-align: left;}
    textarea{ margin-left: 40%;}
    </style>
</head>
<body>
    <h1>Please Enter the details below:</h1><br>
    <form action="" method="post">
        <label>Title:</label>
        <input type="text" name="title"><br>
        <label>Actor:</label>
        <input type="text" name="actor"><br>
        <label>Actress:</label>
        <input type="text" name="actress"><br>
        <label>Genre:</label>
        <input type="text" name="genre"><br>
        <label>Year:</label>
        <input type="text" name="year"><br/>
        <input type='hidden' name='option' value='add'>
        <input align ="center" type="submit" value="Submit" >
    </form>
</body>
</html>
