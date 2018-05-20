<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
	<!-- Meta tags -->
	<title>考生登录</title>
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
	<script type="text/javascript">
	function r() {
		var pass = document.getElementById("rpassword");
		if (pass.value == "") {
			alert("请输入密码");
		}else if(pass.value=="admin"){
			window.location="table.jsp";
		window.event.returnValue = false;
		}else{
			alert("密码错误");
		}
		
			
	}
	</script>
</head>
<body>
	<div class="agile-login">
		<h1>公务员考试报名系统</h1>
		<div class="wrapper">
			<h2>管理员登陆</h2>
			<div class="w3ls-form">
				<form method="post">
					<label>管理员账号</label>
					<input type="text" value="admin"  maxlength="18" readonly="readonly"/>
					<label>管理员密码</label>
					<input id="rpassword" type="text" name="user.password" required />
					<input type="submit" onclick="r()" value="点击登陆" />
				</form>
			</div>
		</div>
		<br>
		<div class="copyright">
		<p>All Rights Reserved & Design by 董金明</p> 
	</div>
	</div>
	
</body>
</html>