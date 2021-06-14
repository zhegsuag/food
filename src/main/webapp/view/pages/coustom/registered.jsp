<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>舌尖上的烟大</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/css/registered.css"
	type="text/css">
</head>
<body>
	<!-- 页面头部 -->
	<jsp:include page="header.jsp"></jsp:include>
	<form action="${pageContext.request.contextPath}/user/regist" method="post" onsubmit="return my_form()"  >
	<div id="regmain">
		<table border="1" cellpadding="0" cellspacing="0">
			<thead>
				<tr>
					<th colspan="3">请填写用户信息(带<span>*</span>为必填项)
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="td1">用户名：</td>
					<td class="td2"><input class="text" type="text"
						name="loginName" id="loginName" value="" placeholder="请输入用户名"></td>
					<td class="td2"><span id="check_loginName" name="check_loginName">*</span>您用来登录的用户名</td>
				</tr>
				<tr>
					<td class="td1">密码：</td>
					<td class="td2"><input class="text" type="password"
						name="password" id="password" value="" placeholder="请输入密码"></td>
					<td class="td2"><span id="check_password" name="check_password">*</span>请输入密码</td>
				</tr>
				<tr>
					<td class="td1">确认密码：</td>
					<td class="td2"><input class="text" type="password"
						name="pwd" id="pwd" value="" placeholder="请输入确认密码"></td>
					<td class="td2"><span id="check_pwd" name="check_pwd">*</span>请你将输入的密码再次输入</td>
				</tr>
				<tr>
					<td class="td1">真实姓名：</td>
					<td class="td2"><input class="text" type="text"
						name="userName" id="userName" value="" placeholder="请输入真实姓名"></td>
					<td class="td2"><span id="check_name" name="check_name">*</span>请你输入你的真实姓名</td>
				</tr>
				<tr>
					<td class="td1">性别：</td>
					<td class="td2"><input type="radio" name="sex" value="1"
						checked="true">男&nbsp;&nbsp; <input type="radio"
						name="sex" value="0">女</td>
					<td class="td2"><span>*</span>请填写你的真实信息</td>
				</tr>
				<tr>
					<td class="td1">年龄：</td>
					<td class="td2"><input class="text" type="number" name="age"
					id="age"	value="0"></td>
					<td class="td2"><span id="check_age" name="check_age">*</span>请输入你的真实年龄</td>
				</tr>
				<tr>
					<td class="td1">身份证号：</td>
					<td class="td2"><input class="text" type="text" name="idCard"
					 name="idCard"	placeholder="请输入身份证号"></td>
					<td class="td2"><span id="check_identity" name="check_identity">*</span>请填写你的真实信息</td>
				</tr>
				<tr>
					<td class="td1">家庭住址：</td>
					<td class="td2"><input class="text" type="text" name="address"
					id="address"	placeholder="请输入家庭住址"></td>
					<td class="td2"><span id="check_address" name="check_address">*</span>请填写你的真实信息</td>
				</tr>
				<tr>
					<td class="td1">电话号码：</td>
					<td class="td2"><input class="text" type="text" name="phone"
					id="phone"	placeholder="请输入电话号码"></td>
					<td class="td2"><span id="check_phone" name="check_phone">*</span>请填写你的真实信息</td>
				</tr>
				<tr>
					<td class="td1">电子邮箱：</td>
					<td class="td2"><input class="text" type="text" name="email"
					id="email"	placeholder="请输入电子邮箱"></td>
					<td class="td2"><span id="check_email" name="check_email">*</span>请填写你有效的邮件地址，以便于我们为你提供有效的服务</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="3" style="text-align: center">
						<input id="btn" type="submit" value="提交"></td>
				</tr>
			</tfoot>
		</table>
	</div>
	</form>
	<!-- 页面头部 -->
	<jsp:include page="foot.jsp"></jsp:include>
   <script type="text/javascript" src="${pageContext.request.contextPath}/view/plugins/jQuery/jquery-2.2.3.min.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/view/plugins/jQueryUI/jquery-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/registered.js"></script>
</body>
</html>
