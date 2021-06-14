<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>舌尖上的烟大- 菜品类型管理</title>

<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">
<!-- 页面meta /-->

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
					菜品类型管理 <small>菜品类型列表</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/view/pages/main.jsp"><i
							class="fa fa-dashboard"></i> 首页</a></li>
					<li><a href="${pageContext.request.contextPath}/type/findAll">菜品类型管理</a></li>
					<li class="active">菜品类型列表</li>
				</ol>
			</section>
			<!-- 内容头部 /-->

			<!-- 正文区域 -->
			<section class="content">
				<!-- .box-body -->
				<div class="box box-primary">
					<div class="box-body">

						<!-- 数据表格 -->
						<div class="table-box">

							<!--工具栏-->
							<div class="pull-left">
								<div class="form-group form-inline">
									<div class="btn-group">
										<button type="button" id="btnsave" class="btn btn-default" title="新建">
											<i class="fa fa-file-o"></i> 新建
										</button>
										<button type="button" id="btndel" class="btn btn-default" title="删除">
											<i class="fa fa-trash-o"></i> 删除
										</button>
									</div>
								</div>
							</div>
							<!--工具栏/-->

							<!--数据列表-->
							<table id="dataList"
								class="table table-bordered table-striped table-hover dataTable">
								<thead>
									<tr>
										<th class="text-center" style="padding-right: 0px;"><input
											id="selall" type="checkbox" class="icheckbox_square-blue">
										</th>
										<th class="text-center">ID</th>
										<th class="text-center">类型名称</th>
										<th class="text-center">操作</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${typeList}" var="type">
									<tr>
										<td class="text-center"><input class="ids" type="checkbox" value="${type.id}"></td>
										<td class="text-center">${type.id}</td>
										<td class="text-center">${type.typeName}</td>
										<td class="text-center">
											<button type="button" class="btn bg-olive btn-xs btnupdate">修改</button>
										</td>
									</tr>
								</c:forEach>

								</tbody>
							</table>
							<!--数据列表/-->
						</div>
						<!-- 数据表格 /-->
					</div>
				</div>
				<!-- /.box-footer-->
			</section>
		</div>

	</div>
	<!-- 内容区域 /-->

	<!-- 模态对话框 -->
	<div id="myModal" class="modal modal-primary" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close modalClose" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="title">标题</h4>
				</div>
				<div class="modal-body">
					<div class="box-body">
						<div class="form-horizontal">
							<div class="form-group">
								<label class="col-sm-2 control-label">菜品类型:</label>
								<div class="col-sm-5">
									<input id="typeName" type="text" class="form-control" placeholder="菜品类型" value="">
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline modalClose" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-outline" id="btnType" data-dismiss="modal">保存</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>

		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	</div>
	<!--模态窗口/-->



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
		// 设置激活菜单
		function setSidebarActive(tagUri) {
			var liObj = $("#" + tagUri);
			if (liObj.length > 0) {
				liObj.parent().parent().addClass("active");
				liObj.addClass("active");
			}
		}

		$(document).ready(function() {

			// 激活导航位置
			setSidebarActive("admin-datalist");

			// 列表按钮
			$("#dataList td input[type='checkbox']").iCheck({
				checkboxClass : 'icheckbox_square-blue',
				increaseArea : '20%'
			});
			// 全选操作
			$("#selall").click(function() {
				var clicks = $(this).is(':checked');
				if (!clicks) {
					$("#dataList td input[type='checkbox']").iCheck("uncheck");
				} else {
					$("#dataList td input[type='checkbox']").iCheck("check");
				}
				$(this).data("clicks", !clicks);
			});

			//显示添加弹出层
			$("#btnsave").click(function(){
				//显示弹出层
				$("#myModal").show();
				//修改标题
				$("#title").text("添加菜品类型");
				$("#btnType").text("添加");
			});
			var id = 0;
			//显示修改弹出层
			$(".btnupdate").click(function(){
				$("#myModal").show();
				$("#title").text("修改菜品类型");
				$("#btnType").text("修改");

				id = $(this).parents("tr").children("td").eq(1).text();

				var typeName = $(this).parents("tr").children("td").eq(2).text();
				//alert(id);
				$("#typeName").val(typeName);
			});

			//关闭弹出层
			$(".modalClose").click(function(){
				$("#typeName").val();
				$("#myModal").hide();
			});

			var id = 0;

			//添加-修改按钮
			$("#btnType").click(function () {
				//获得按钮上面的文本  判断是添加还是修改操作
				var btntype = $(this).text();
				if(btntype == "添加"){
					//获得管理员输入的菜品类别
					//alert("添加操作");
					var typeName = $("#typeName").val();
					window.location.href="${pageContext.request.contextPath}/type/save/"+typeName;
				}else if(btntype == "修改"){
					var typeName = $("#typeName").val();
					window.location.href="${pageContext.request.contextPath}/type/update?id="+id+"&typeName="+typeName;
				}

			});


			//批量删除
			var ids = "";
			$("#btndel").click(function () {
				//获得被选中的check的id
				if(window.confirm("确定删除所选选项吗？")){
					$(".ids:checked").each(function () {
						ids += $(this).val()+",";
						//alert(ids)
					});
					ids = ids.substring(0,ids.length-1);
					window.location.href="${pageContext.request.contextPath}/type/delete?ids="+ids;
					return true;
				}else return false;

			});
		});
	</script>
</body>

</html>
