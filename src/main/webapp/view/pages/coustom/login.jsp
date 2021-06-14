<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>舌尖上的烟大</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/css/login1.css"
	type="text/css">
</head>
<body>
	<!-- 页面头部 -->
	<jsp:include page="header.jsp"></jsp:include>

	<div id="loginmain">
		<p style="color: red">${message}</p>
		<div id="left">

			<p>
				登录帐号：<input class="text" type="text" id="loginName" value="tom">
			</p>
			<p>
				登录密码：<input class="text" type="password" id="password" value="123">
			</p>
			<p>
				<input class="btn" type="button" value="登  录" onclick="sub()">
			</p>
		</div>
		<div id="right">
			<ul>
				<li><span>*</span>&nbsp;&nbsp;如果你已经是会员请在左侧登录。</li>
				<li><span>*</span>&nbsp;&nbsp;如果你还没有注册会员， <a id="zc"
					href="${pageContext.request.contextPath}/view/pages/coustom/registered.jsp">
						点这里注册新会员。</a></li>
				<li><span>*</span>&nbsp;&nbsp;如果你忘记了密码，<a id="cz" href="${pageContext.request.contextPath}/view/pages/coustom/updatePwd.jsp">
						点这里重设一个密码。</a></li>
			</ul>
		</div>
	</div>
	<div style="padding-top: 2%">
		<!-- 页面头部 -->
		<jsp:include page="foot.jsp"></jsp:include>
	</div>
<script type="text/javascript">

	function sub() {
		//获得填写的用户名和密码
		var loginName = document.getElementById("loginName").value;
		var password = document.getElementById("password").value;
        //console.log(loginName+'  '+password);
		//window.location.href?页面登陆跳转
		window.location.href="${pageContext.request.contextPath}/user/login?loginName="+loginName+"&password="+password;
	}

</script>
</body>

</html>
