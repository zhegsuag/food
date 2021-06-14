<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>舌尖上的烟大</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/view/css/main.css" type="text/css">


	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/ionicons/css/ionicons.min.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/iCheck/square/blue.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/morris/morris.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/datepicker/datepicker3.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/daterangepicker/daterangepicker.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/datatables/dataTables.bootstrap.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/treeTable/jquery.treetable.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/treeTable/jquery.treetable.theme.default.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/select2/select2.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/colorpicker/bootstrap-colorpicker.min.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/adminLTE/css/AdminLTE.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/adminLTE/css/skins/_all-skins.min.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/css/style.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/ionslider/ion.rangeSlider.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/ionslider/ion.rangeSlider.skinNice.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/bootstrap-slider/slider.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/view/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">

</head>
<body>
	<!-- 页面头部 -->
	<jsp:include page="header.jsp"></jsp:include>
	<div id="main">
		<form action="${pageContext.request.contextPath}/main/allDishes/1/${pageInfo.pageSize}" method="post">
		<div class="has-feedback">
			<input type="text" name="searchName" class="input-sm" placeholder="搜索">
			<button type="submit" class="glyphicon glyphicon-search"></button>
		</div>
	</form>
		<div id="left">

			<div class="ord">

				<c:forEach items="${dishesList}" var="dis">
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/view/${dis.pic}">
					</dt>
					<dd>菜名:${dis.dishesName}</dd>
					<dd>市场价:￥${dis.marketPrice}</dd>
					<dd>
						会员价:<span class="vip">￥${dis.vipPrice}</span>
					</dd>
					<dd>配料:${dis.material}</dd>
					<!-- 菜品类型-->
					<dd>菜品类型:${dis.dishesType.typeName}</dd>
					<p>
						<button type="button" class="addshop"><img src="${pageContext.request.contextPath}/view/img/shcar.png"></button>
						<a href="https://api.pwmqr.com/qrcode/create/?url=http://39.101.131.14:8003/trace?id=${dis.materialMap.factoryOutId}">查看</a>
					</p>
				</dl>

				</c:forEach>	<div class="box-footer">
				<div class="pull-left">
					<div class="form-group form-inline">
						总共${sessionScope.pageInfo.pages} 页，共${sessionScope.pageInfo.total} 条数据。 每页
						<select class="form-control" id="changesize" onchange="changeSize()">
							<option hidden>----请选择每页几条数据----</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select> 条
					</div>
				</div>

				<div class="box-tools pull-right">
					<ul class="pagination">
						<li>
							<a href="${pageContext.request.contextPath}/main/allDishes/1/${sessionScope.pageInfo.pageSize}" aria-label="Previous">首页</a>
						</li>
						<li><a href="${pageContext.request.contextPath}/main/allDishes/${sessionScope.pageInfo.pageNum-1}/${sessionScope.pageInfo.pageSize}">上一页</a></li>
						<c:forEach begin="1" end="${sessionScope.pageInfo.pages}" var="page" >
							<li><a href="${pageContext.request.contextPath}/main/allDishes/${page}/${pageInfo.pageSize}">${page}</a></li>
						</c:forEach>
						<li><a href="${pageContext.request.contextPath}/main/allDishes/${sessionScope.pageInfo.pageNum+1}/${sessionScope.pageInfo.pageSize}">下一页</a></li>
						<li>
							<a href="${pageContext.request.contextPath}/main/allDishes/${sessionScope.pageInfo.pages}/${sessionScope.pageInfo.pageSize}" aria-label="Next">尾页</a>
						</li>
					</ul>
				</div>

			</div>
			</div>


		</div>
		<div id="right">
			<div class="dv">
				<ul>
					<li class="li1"><img src="${pageContext.request.contextPath}/view/img/notice.png"> <span
						class="title">餐厅公告</span></li>
					<li class="li2">
						<ul>
							<li><span class="sp1">&gt;</span> <span><a href="">
										本店特色《咸菜肉饭》</a></span> <span class="sp3">2019-12-12</span></li>
							<li><span class="sp1">&gt;</span> <span><a href="">
										本店特色《咸菜肉饭》</a></span> <span class="sp3">2019-12-12</span></li>
							<li><span class="sp1">&gt;</span> <span><a href="">
										本店特色《咸菜肉饭》</a></span> <span class="sp3">2019-12-12</span></li>
							<li><span class="sp1">&gt;</span> <span><a href="">
										本店特色《咸菜肉饭》</a></span> <span class="sp3">2019-12-12</span></li>
							<li><span class="sp1">&gt;</span> <span><a href="">
										本店特色《咸菜肉饭》</a></span> <span class="sp3">2019-12-12</span></li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="dv">
				<ul>
					<li class="li1"><img src="${pageContext.request.contextPath}/view/img/sales.png"> <span
						class="title">销售排行榜</span></li>
					<li class="li2">
						<ul>
							<li><span class="sp1">&gt;</span> <span class="sp2">糖醋排骨</span>
								<span class="sp3">已售4次</span></li>
							<li><span class="sp1">&gt;</span> <span class="sp2">糖醋排骨</span>
								<span class="sp3">已售4次</span></li>
							<li><span class="sp1">&gt;</span> <span class="sp2">糖醋排骨</span>
								<span class="sp3">已售4次</span></li>
							<li><span class="sp1">&gt;</span> <span class="sp2">糖醋排骨</span>
								<span class="sp3">已售4次</span></li>
							<li><span class="sp1">&gt;</span> <span class="sp2">糖醋排骨</span>
								<span class="sp3">已售4次</span></li>
							<li><span class="sp1">&gt;</span> <span class="sp2">糖醋排骨</span>
								<span class="sp3">已售4次</span></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 页面头部 -->
	<jsp:include page="foot.jsp"></jsp:include>



	<script
			src="${pageContext.request.contextPath}/view/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
			src="${pageContext.request.contextPath}/view/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
	$(document).ready(function () {
		$(".addshop").click(function () {
			//alert("添加进购物车");
			var dishesName = $(this).parents("dl").children("dd").eq(0).text().split(":");
			var price = $(this).parents("dl").children("dd").eq(2).text().split(":￥");
			// alert(dishesName[1]+' '+price[1]);
			$.ajax({
				url:"../../../shoppingCar/add",
				data:{"dishesName":dishesName[1],"price":price[1]},
				dataType:"json",
				success:function (msg) {
					if(msg){
					    alert("成功添加进购物车");
					}else{
					    alert("网络异常，请稍后再试！")
					}
                }
			});

        });




    });




    function changeSize(){
        //获得下拉框的值
        var pageSize = 	$("#changesize").val();
        location.href="${pageContext.request.contextPath}/main/allDishes/1/"+pageSize;
    }
</script>
</body>
</html>
