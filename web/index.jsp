<%--
  Created by IntelliJ IDEA.
  User: zhegsuag
  Date: 2021/6/14
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" 
            + request.getServerName() + ":" 
            + request.getServerPort() 
            + request.getContextPath() + "/";
%>
<html>
  <head>
    <title>$Title$</title>
    <base href="<%=basePath%>">
  </head>
  <body>
  $END$
  </body>
</html>
