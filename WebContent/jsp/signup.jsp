<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
	<!-- Meta tags -->
	<title>考生注册</title>
	<meta name="keywords" content="Winter Login Form Responsive widget, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- stylesheets -->
	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="css/style.css">
	<!-- google fonts 
	<link href="//fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Raleway:400,500,600,700" rel="stylesheet">
	-->
</head>
<body>
	<div class="agile-login">
		<h1>公务员考试报名系统</h1>
		<div class="wrapper">
			<h2>考生注册</h2>
			<div class="w3ls-form">
				<form action="register.action" method="post">
					<label>身份证号</label>
					<input type="text" name="user.IdNumber" placeholder="例如：231181199705110000" maxlength="18" required/>
					<label>密码</label>
					<input type="text" name="user.password" placeholder="例如：example@#￥%4646" required />
					<label>密保问题</label>
					<input type="text" name="user.question" placeholder="例如：小学玩的最好的朋友是 ？" required/>
					<label>密保答案</label>
					<input type="text" name="user.answer" placeholder="例如：李狗蛋" required/>
					<a href="login.jsp" class="pass" style="display: inline;float:right">已有账户 ？</a>
					<input type="submit" value="点击注册" />
				</form>
			</div>
			<!--
			<div class="agile-icons">
				<a href="#"><span class="fa fa-twitter" aria-hidden="true"></span></a>
				<a href="#"><span class="fa fa-facebook"></span></a>
				<a href="#"><span class="fa fa-pinterest-p"></span></a>
			</div>
			-->
		</div>
		<br>
		<div class="copyright">
		<p>All Rights Reserved & Design by 董金明</p> 
		</div>
	</div>
	
</body>
</html>