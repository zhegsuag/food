<%--
  Created by IntelliJ IDEA.
  User: 郑爽爸爸
  Date: 2020/10/30
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>舌尖上的烟大</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/view/css/registered.css"
          type="text/css">
</head>
<body>
<!-- 页面头部 -->
<jsp:include page="header.jsp"></jsp:include>
<form action="${pageContext.request.contextPath}/user/updatePwd" method="post" onsubmit="return my_form()"  >
    <div id="regmain">
        <table border="1" cellpadding="0" cellspacing="0">
            <thead>
           <tr>
               <th>请输入你的电话号码或者邮箱，以便验证身份</th>
           </tr>
            </thead>
            <tbody>
        <tr>
                <td class="td1">电话号码：</td>
                <td class="td2"><input class="text" type="text" name="phone"
                                       id="phone"	placeholder="请输入电话号码"></td>
                <td class="td2"><span id="check_phone" name="check_phone">*</span></td>
            </tr>
            <tr>
                <td class="td1">电子邮箱：</td>
                <td class="td2"><input class="text" type="text" name="email"
                                       id="email"	placeholder="请输入电子邮箱"></td>
                <td class="td2"><span id="check_email" name="check_email">*</span></td>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/updatePwd.js"></script>
</body>
</html>
