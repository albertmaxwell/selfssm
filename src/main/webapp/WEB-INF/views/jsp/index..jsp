<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/5
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript" src="js/public_css.js"></script>

<!--图标库-->
<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<style type="text/css">

	html, body {
		margin: 0;
		padding: 0;
		/*  height: 100%;
		  width: 100%;
		  overflow: hidden;*/
	}
	.menu {
		height: 40px;
		margin-left: 22%;
		list-style: none
	}
	.parentdiv {
		margin: 0px;
		width: auto;
		height: 50px;
		background-color: #384766;
		padding: 5px 20px 5px 10px;
	}
	.daohanlaln {
		margin: 0px;
		background-color: #26344b;
		width: 200px;
		height: 800px;
	}
	.daohanglanfont{
		font-weight: bolder;
		color: #ffffff;
		font-size: large;
	}
	.centext{
		position: absolute;
		left: 200px;
		top: 60px;
		background-color: #ffffff;
		height:800px;
		width: 100%;
		padding: 0;
		margin: 0;
		border:0px;
	}

</style>
<html>
<head>
	<title>Title</title>
</head>
<body>
<div>
	<div class="parentdiv">
		<div><h1 style="color: #ffffff ;margin-bottom: 22px;">CRM</h1></div>

	</div>
	<div class="daohanlaln">
		<li></li>
		<li></li>

		<ul class="fa-ul">

			<li class="menu"><a style="text-decoration:none;" target="_parent";  href="MaterialDataController.do?materialList"><span><font
					class="daohanglanfont"><i
					class="fa-li fa fa-check-square"></i> 料号信息</font></span></a>
			</li>
			<li class="menu"><a style="text-decoration:none;" target="_parent" href="https://www.baidu.com/"><span><font
					class="daohanglanfont"><i class="fa-li fa fa-square"></i>工单工艺</font></span></a>
			</li>
			<li class="menu"><a style="text-decoration:none;" href="scanRecordController.do?list"><span><font
					class="daohanglanfont" ><i
					class="fa-li fa fa-check-square"></i> 合同管理</font></span></a>
			</li>
			<li class="menu"><a style="text-decoration:none;" href="reportinfoController.do?list"><span><font
					class="daohanglanfont"><i class="fa-li fa fa-square"></i>现场报工</font></span></a>
			</li>

		</ul>

	</div>

</div>


<iframe class="centext" name="_parent" src="material.html"></iframe>

</body>
</html>
