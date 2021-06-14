<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>舌尖上的烟大</title>


<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">


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

<body class="hold-transition skin-purple sidebar-mini">

	<div class="wrapper">

		<!-- 页面头部 -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- 页面头部 /-->
		<!-- 导航侧栏 -->
		<jsp:include page="aside.jsp"></jsp:include>
		<!-- 导航侧栏 /-->

		<!-- 内容区域 -->
		<div class="content-wrapper">
			<!-- 内容头部 -->
			<section class="content-header">
			<h1>
				菜品管理 <small>添加菜品</small>
			</h1>
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath}/view/pages/main.jsp"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a href="${pageContext.request.contextPath}/dishes/findAll/1/4">菜品管理</a></li>
				<li class="active">添加菜品</li>
			</ol>
			</section>
			<!-- 内容头部 /-->

			<!-- 正文区域 -->
			<section class="content">
			<form action="${pageContext.request.contextPath}/dishes/save" method="post" enctype="multipart/form-data">
			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">添加菜品</h3>
				</div>
				<!-- 表单内容 -->
				<!--tab内容-->
				<div class="tab-content">

					<!--label显示的内容-->
					<div class="tab-pane active" id="tab-label">
						<div class="row data-type">
							<div class="col-md-2 title">菜品名称</div>
							<div class="col-md-4 data text">
								<input type="text" name="dishesName" class="form-control" placeholder="请输入菜品名称"
									value="">
							</div>
							<div class="col-md-2 title">原料</div>
							<div class="col-md-4 data text">
								<input type="text" name="material" class="form-control" placeholder="请输入原料"
									value="">
							</div>
							<div class="col-md-2 title">市场价格</div>
							<div class="col-md-4 data text">
								<div class="input-group">
									<span class="input-group-addon">¥</span>
									<input type="text" name="marketPrice" placeholder="请输入市场价格" class="form-control">
									<span class="input-group-addon">.00</span>
								</div>
							</div>
							<div class="col-md-2 title">会员价格</div>
							<div class="col-md-4 data text">
								<div class="input-group">
									<span class="input-group-addon">¥</span>
									<input type="text" name="vipPrice" class="form-control" placeholder="请输入会员价格">
									<span class="input-group-addon">.00</span>
								</div>
							</div>
							<div class="col-md-2 title">菜品类别</div>
							<div class="col-md-4 data text">
								<select class="form-control" name="dishesTypeId">
									<option>---请选择---</option>
									<c:forEach items="${typeList}" var="type">
									<option value="${type.id}">${type.typeName}</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-md-2 title">上传图片</div>
							<div class="col-md-4 data text">
								<input type="file" name="uploadpic" id="exampleInputFile">
								<p class="help-block"></p>
							</div>
							<div class="col-md-2 title rowHeight2x">说明</div>
							<div class="col-md-10 data rowHeight2x">
								<textarea name="desc" class="form-control"  rows="3" placeholder="请输入菜品描述"></textarea>
							</div>
						</div>
					</div>

					<!--订单信息/-->
					<!--工具栏-->
					<div class="box-tools text-center">
						<button type="submit" class="btn bg-maroon">保存</button>
						<button type="button" class="btn bg-default"
							onclick="history.back(-1);">返回</button>
					</div>
					<!--工具栏/-->
				</div>
			</div>
			</form>
			</section>
			<!-- 正文区域 /-->

		</div>
		</div>
		<!-- 内容区域 /-->

		<!-- 底部导航 -->
		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 1.0.8
		</div>
			<strong>Copyright &copy; <a
					href="#">舌尖上的烟大</a>.
			</strong> All rights reserved.
		</footer>
		<!-- 底部导航 /-->


	<script
		src="${pageContext.request.contextPath}/view/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/jQueryUI/jquery-ui.min.js"></script>
	<script>
        $.widget.bridge('uibutton', $.ui.button);
    </script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/raphael/raphael-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/morris/morris.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/knob/jquery.knob.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/daterangepicker/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/daterangepicker/daterangepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/fastclick/fastclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/iCheck/icheck.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/adminLTE/js/app.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/treeTable/jquery.treetable.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/select2/select2.full.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-markdown/js/markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-markdown/js/to-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/ckeditor/ckeditor.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/input-mask/jquery.inputmask.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/chartjs/Chart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/flot/jquery.flot.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/flot/jquery.flot.resize.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/flot/jquery.flot.pie.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/flot/jquery.flot.categories.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/ionslider/ion.rangeSlider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-slider/bootstrap-slider.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>

	<script>
		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

			// WYSIHTML5编辑器
			$(".textarea").wysihtml5({
				locale : 'zh-CN'
			});
		});

		// 设置激活菜单
		function setSidebarActive(tagUri) {
			var liObj = $("#" + tagUri);
			if (liObj.length > 0) {
				liObj.parent().parent().addClass("active");
				liObj.addClass("active");
			}
		}

		$(document).ready(function() {
			$('#datepicker-a3').datetimepicker({
				format : "yyyy-mm-dd hh:ii",
				autoclose : true,
				todayBtn : true,
				language : "zh-CN"
			});
		});

		$(document).ready(function() {
			// 激活导航位置
			setSidebarActive("order-manage");
			$("#datepicker-a3").datetimepicker({
				format : "yyyy-mm-dd hh:ii",

			});

		});
	</script>


</body>

</html>
