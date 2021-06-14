
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
  <h3>修改成功，点击跳转<a href="${pageContext.request.contextPath}/user/goLogin">登录页面</a></h3>
  <h3>5秒后自动跳转</h3>
</body>
</html>
