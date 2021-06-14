<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>舌尖上的烟大</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/view/css/header.css" type="text/css">
</head>
<body>
	<div id="headermain">
		<!--右上角链接导航-->
		<div id="titleLinke">
			<ul>
				<li><a href="${pageContext.request.contextPath}/user/goLogin">会员登录</a>&nbsp;&nbsp;|</li>
				<li><a href="${pageContext.request.contextPath}/user/goRegist">会员注册</a>&nbsp;&nbsp;|</li>
				<li><a href="${pageContext.request.contextPath}/user/logout">注销退出</a>&nbsp;&nbsp;|</li>
				<li><a href="#">配送说明</a>&nbsp;&nbsp;|</li>
				<li><a href="${pageContext.request.contextPath}/view/pages/aboutour.html">关于我们</a>&nbsp;&nbsp;|</li>
				<li><a href="${pageContext.request.contextPath}/admin/goLogin">后台登录</a></li>
			</ul>
		</div>
		<!--用户欢迎信息-->
		<div id="userinfo">亲爱的${user.userName} 你好！欢迎光临！</div>
		<!--菜单导航-->
		<div id="navdiv">
			<div id="logo">
				<img src="${pageContext.request.contextPath}/view/img/logo.png">
			</div>

			<div id="navLink">
				<ul>
					<li><a href="${pageContext.request.contextPath}/main/allDishes/1/4">首页</a></li>
					<li><a href="${pageContext.request.contextPath}/shoppingCar/myfood">我的餐车</a></li>
					<li><a href="${pageContext.request.contextPath}/orders/myOrders">我的订单</a></li>
					<li><a href="">用户中心</a></li>
					<li><a href="">配送说明</a></li>
					<li><a href="${pageContext.request.contextPath}/view/pages/aboutour.html">关于我们</a></li>
					<li><a href="${pageContext.request.contextPath}/user/logout">注销退出</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
