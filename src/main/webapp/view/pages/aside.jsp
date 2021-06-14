<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img
					src="${pageContext.request.contextPath}/view/${admin.pic}"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>${admin.adminName}</p>
				<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">菜单</li>
			<li id="admin-index"><a
				href="${pageContext.request.contextPath}/view/pages/main.jsp"><i
					class="fa fa-dashboard"></i> <span>首页</span></a></li>
			<li class="treeview"><a
				href="${pageContext.request.contextPath}/dishes/findAll/1/4">
					<i class="fa fa-sticky-note-o"></i><span>菜品管理</span>
			</a></li>
			<li class="treeview"><a
				href="${pageContext.request.contextPath}/type/findAll">
					<i class="fa  fa-cubes"></i><span>菜品类别管理</span>
				</a>
			</li>
			<li class="treeview"><a
				href="${pageContext.request.contextPath}/material/findAll"> <i
					class="fa fa-envelope-o"></i><span>原材料信息查看</span></a>
			</li>
			<li class="treeview"><a href="#">
				<i class="fa fa-book"></i><span>销售订单管理</span>
					<span class="pull-right-container">
					<i class="fa fa-angle-left pull-right"></i>
				</span>
				</a>
				<ul class="treeview-menu">
					<li id="admin-login">
						<a href="${pageContext.request.contextPath}/orders/checkOrders">
							<i class="fa fa-circle-o"></i>订单查询
						</a>
					</li>
					<li id="admin-login">
						<a href="all-admin-login.html">
							<i class="fa fa-circle-o"></i>销售统计
						</a>
					</li>
				</ul></li>
			<li class="treeview"><a
				href="${pageContext.request.contextPath}">
				<i class="fa fa-optin-monster"></i><span>系统用户管理</span></a>
			</li>
			</ul>
	</section>
	<!-- /.sidebar -->
</aside>
