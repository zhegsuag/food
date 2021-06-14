<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>舌尖上的烟大</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/css/queryorders.css"
	type="text/css">
</head>
<body>
	<!-- 页面头部 -->
	<jsp:include page="header.jsp"></jsp:include>
	<div id="ordermain">
		<table id="tab1" border="1" cellpadding="0" cellspacing="0">
			<form action="" method="post">
				<tr>
					<td>按菜品名称查询：<input type="text" class="input" name="dishesName"
						value=""> 按日期查询：<input type="date" class="input"
						name="orderTime" value=""> <input type="submit" id="btn"
						value="查询">
					</td>
				</tr>
			</form>
			<tr>
				<td>
					<a href="">未派送订单</a>&nbsp;&nbsp;
					<a href="">已派送订单</a></td>
			</tr>
		</table>

		<table id="tab2" border="1" cellpadding="0" cellspacing="0">
			<thead>
				<tr>
					<th colspan="9">订单查询结果信息列表</th>
				</tr>
				<tr>
					<th>菜品名称</th>
					<th>真实姓名</th>
					<th>订购电话</th>
					<th>配送地址</th>
					<th>订购数量</th>
					<th>单价(元)</th>
					<th>合计(元)</th>
					<th>订购时间</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${ordersList}" var="orders">
				<tr>
					<td>${orders.dishesName}</td>
					<td>${orders.users.userName}</td>
					<td>${orders.users.phone}</td>
					<td>${orders.users.address}</td>
					<td>${orders.number}</td>
					<td>${orders.price}</td>
					<td>${orders.numPrice}</td>
					<td>${orders.orderTime}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<!-- 页面头部 -->
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>
