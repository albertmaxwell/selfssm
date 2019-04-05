<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/5
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="jquery-3.3.1.min.js"></script>
<html>
<head>
	<title>Title</title>

	<style type="text/css">
		.table {
			margin-top: 200px;
			margin-left: 4px;
			margin-right: 4px;
			margin-bottom: 4px;
			text-align: center;
			font-size: large;
			font-weight: bolder;
		}

	</style>
	<script>

        function addUser() {
            alert("dfd");
            $.ajax({
                url: " user.do?addUser, //请求路径
                async: true, //是否异步请求，默认为true
                type: "GET",
                contentType: "application/x-www-form-urlencoded", //编码类型
                dataType: "json", //预处理服务端可能返回的数据类型
                scriptCharset: "UTF-8", //编码
                success: function (data) { //请求成功的回调函数
                    result = data.obj;
                }
            });
        }
	</script>
</head>
<body>
<table class="table" border="0" m cellspacing="0" height="180px" width="1300px; ">
	<tr style="background-color:#459df5;border: 0px ">
		<td>ID</td>
		<td>邮箱</td>
		<td>密码</td>
		<th>姓名</th>
		<th>姓名</th>
		<th>角色</th>
		<th>时间</th>
		<th>IP</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${entity}" var="user">
		<tr>
			<td>${user.id}</td>
			<td>${user.email}</td>
			<td>${user.password}</td>
			<td>${user.username}</td>
			<td>${user.role}</td>
			<td>${user.status}</td>
			<td>${user.regTime}</td>
			<td>${user.regIp}</td>
			<td>
				<button onclick="function addUser(){}"></button>
				<a href="get?id=${user.id}">删除</a>
				<a href="get?id=${user.id}">修改</a>
				<a href="get?id=${user.id}">查询</a>
			</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>
