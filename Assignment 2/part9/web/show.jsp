<%@ page import="java.util.Map" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 10/7/20
  Time: 11:18 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>part8</title>
</head>
<body>
    <%
        response.setContentType("text/html");

        Map<String,String[]> map = request.getParameterMap();

//        for(int i = 0 ;i < map.keySet().size();i++){
//            String[] arr = map.get(map.keySet())
//        }
        for(Map.Entry<String,String[]> entry : map.entrySet()){
            String para = entry.getKey();
            String[] arr= entry.getValue();
            out.println("<h2>");
            out.println(para);
            out.println("</h2>");
            for(String s :arr){
                out.println( s);
                out.println("<br>");
            }
//            out.println(Arrays.toString(arr));
        }
    %>
</body>
</html>
