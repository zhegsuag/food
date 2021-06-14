<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>舌尖上的烟大</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/css/shoppingcart.css"
	type="text/css">
</head>
<body>


	<!-- 页面头部 -->
	<jsp:include page="header.jsp"></jsp:include>

	<div id="shoppingmain">
		<table border="1" cellpadding="0" cellspacing="0">
			<thead>
				<tr>
					<th colspan="5">我的订餐信息列表</th>
				</tr>
				<tr>
					<th>序号</th>
					<th>菜品名称</th>
					<th>单价</th>
					<th>数量</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${shoppingCarList}" var="shoppingCar" varStatus="vs">
				<tr>
					<td class="text-center"><input type="hidden" id="dish${shoppingCar.id}" value="${shoppingCar.id}"/>${vs.index+1} </td>
					<td>${shoppingCar.dishesName}</td>
					<td>${shoppingCar.price}</td>
					<td>${shoppingCar.number}</td>
					<td><button name="reduce" class="reduce" onclick="reduce(${shoppingCar.id})" value="取消">取消</button></td>
				</tr>
			</c:forEach>


			</tbody>
			<tfoot>
				<tr>
					<td colspan="5">小计：<span class="textsp">${orderPrice}</span>&nbsp;&nbsp;元&nbsp;&nbsp;&nbsp;&nbsp;
						共：<span class="textsp">${num}</span>&nbsp;&nbsp;件
					</td>
				</tr>
				<tr>
					<td colspan="5"><input type="button" id="btnok" value="全部提交">
						<input type="button" id="btreset" value="全部取消"></td>
				</tr>
			</tfoot>

		</table>
	</div>

	<!-- 页面底部 -->
	<jsp:include page="foot.jsp"></jsp:include>
	<script
			src="${pageContext.request.contextPath}/view/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
			src="${pageContext.request.contextPath}/view/plugins/jQueryUI/jquery-ui.min.js"></script>
	<script type="text/javascript">

		function reduce(id){
			$.ajax({
				url:".../../../shoppingCar/del",
				data:{id:id},
				dataType:"json",
				success:function (msg) {
                   if(msg) {
					   window.location.href="${pageContext.request.contextPath}/shoppingCar/myfood";
				       }
                   	  else{
					   alert("取消失败");
					  }
				   }
			});
		}
  $(document).ready(function () {


	  $("#btreset").click(function () {
	  	if(window.confirm("确认取消吗？")){
			$.ajax({
				url:"../../../shoppingCar/delAll",
				data:"",
				dataType:"json",
				success:function (msg) {
					if(msg){
						alert("取消成功！");
						window.location.href="${pageContext.request.contextPath}/shoppingCar/myfood"
					}else{
						alert("网络异常，请稍后再试");
					}
				}

			});
			alert("取消了");
			return true;
		}else
	  		 return false;


	  });

      $("#btnok").click(function () {
         $.ajax({
			 url:"../../../shoppingCar/submit",
             data:"",
			 dataType:"json",
			 success:function (msg) {
               if(msg){
               	alert("提交成功！");
               	window.location.href="${pageContext.request.contextPath}/shoppingCar/myfood"
			   }else{

               	alert("网络异常，请稍后再试");
			   }
			 }
		 });
	  });

  });




    //全选、全不选
    function checkAll(){
        var all=document.getElementById('all');//获取到点击全选的那个复选框的id
        var ids=document.getElementsByName('ids');//获取到复选框的名称
        //因为获得的是数组，所以要循环 为每一个checked赋值
        for(var i=0;i<ids.length;i++){
            ids[i].checked=all.checked;
        }
        //alert(ids);
    }
</script>
</body>
</html>
