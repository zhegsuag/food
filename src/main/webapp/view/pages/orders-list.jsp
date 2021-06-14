<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>舌尖上的烟大 - 菜品类型管理</title>
    <meta name="description" content="菜品">
    <meta name="keywords" content="菜品">
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
               订单查询 <small>订单列表</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/view/pages/main.jsp"><i
                        class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">订单查询</a></li>
                <li class="active">订单列表</li>
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
                        <!--工具栏-->
                        <div class="pull-left">
                            <div class="form-group form-inline">
                                <div class="btn-group">
                                    <button type="button" id="btnrefuse" class="btn btn-default" title="派送">
                                        <i class="fa fa-file-o"></i> 拒接
                                    </button>
                                    <button type="button" id="btnsend" class="btn btn-default" title="拒接">
                                        <i class="fa fa-trash-o"></i> 派送
                                    </button>
                                </div>
                            </div>
                        </div>
                        <!--工具栏/-->
                        <!--工具栏/-->

                        <!--数据列表-->
                        <table id="dataList"
                               class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="text-center" style="padding-right: 0px;"><input
                                        id="selall" type="checkbox" class="icheckbox_square-blue">
                                </th>
                                <th class="text-center">菜名</th>
                                <th class="text-center">点单时间</th>
                                <th class="text-center">是否派送</th>
                                <th class="text-center">下单用户</th>
                                <th class="text-center">地址</th>
                                <th class="text-center">电话</th>
                                <th class="text-center">邮箱</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${checkList}" var="order">
                                <tr>

                                    <td class="text-center"><input class="ids" type="checkbox" value="${order.id}"></td>
                                    <td class="text-center">${order.dishesName}</td>
                                    <td class="text-center">${order.orderTime}</td>
                                    <td class="text-center" id="ifsned">
                                     待确认
                                    </td>
                                    <td class="text-center">${order.users.loginName}</td>
                                    <td class="text-center">${order.users.address}</td>
                                    <td class="text-center">${order.users.phone}</td>
                                    <td class="text-center">${order.users.email}</td>
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
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });
        // 全选操作
        $("#selall").click(function () {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList td input[type='checkbox']").iCheck("check");
            }
            $(this).data("clicks", !clicks);
        });

        //批量删除
        var ids = "";
        $("#btnsend").click(function () {
            //获得被选中的check的id
            if(window.confirm("确定派送这些订单吗？")){
                $(".ids:checked").each(function () {
                   // console.log($(this).val());
                    ids += $(this).val()+",";
                });
                //console.log(ids);
                ids = ids.substring(0,ids.length-1);
                 window.location.href="${pageContext.request.contextPath}/orders/send?ids="+ids;
                return true;
            }else return false;

        });

        $("#btnrefuse").click(function () {
            if(window.confirm("确定拒接这些订单吗？")){
                $(".ids:checked").each(function () {
                    ids += $(this).val()+",";
                    //alert(ids);
                });
                 ids = ids.substring(0,ids.length-1);
                 window.location.href="${pageContext.request.contextPath}/orders/refuse?ids="+ids;
            }
        });
    });

</script>
</body>

</html>
