<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

<style type="text/css">

	#wrap{ border:1px solid pink; width:600px;  margin:auto;}

	#header {height:50px; background:pink;  }

	#footer {height:50px; background:skyblue;}

	#main{margin-top:10px;}

	#main_left{float:left; }

	#main_right{float:right;}

	

</style>

</head>

<body>

<div id="wrap"> <!--  div 나 table 또는 html5에서는 header footer nav section article  -->

	<header><%@ include file="sub/header.jsp" %></header>

	<div id="main">

		<div id="main_left"><%@ include file="sub/left.jsp" %></div>

		<div id="main_right"><%@ include file="sub/right.jsp" %></div>

	</div> 

	<div style="clear:both">

		<div id="footer"><%@ include file="sub/footer.jsp" %></div>

	</div>

</div>

</body>

</html>