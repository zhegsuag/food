<%--
  Created by IntelliJ IDEA.
  User: 郑爽爸爸
  Date: 2020/11/6
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        function jumurl(){
            window.location.href = '${pageContext.request.contextPath}/user/goLogin';
        }
        setTimeout(jumurl,5000);
    </script>
</head>
<body>
   <p>您没有登录，请点击<a href="${pageContext.request.contextPath}/user/goLogin">登录</a></p>
<p>5秒后自动跳转.........</p>
</body>
</html>
