<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>报考志愿填写</title>
	<!-- <meta charset="UTF-8"> -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="公务员考试报名系统" />
	<link href="./css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="./css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
	<!--滚动坐标
	<script type="application/x-javascript">
		addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); }
	</script>
	-->
	<!-- font files
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'> -->
	<!-- /font files -->

	<!-- css files -->
	<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
	<link rel="stylesheet" href="css/j-forms.css">
	<!-- /css files -->

	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/pro_ci.js"></script>
	<script type="text/javascript" src="js/uploadimg.js"></script>
</head>
<body class="index" onload="init()">
<h1 class="header-w3ls">请填写您的报考信息</h1>
<div class="content-w3ls">

		<form name="creator" action="examregis.action" validate="true">

			<div class="content-wthree1">
                <div class="contact-forms">
                    <label class="rating">请上传您的个人照片</label>
                    <label class="input append-small-btn">
                        <div class="upload-btn">
                            上传
                            <input type="file" name="user.image" id="upload"  onclick="file.init()">
                        </div>
                    </label>
                </div>
                <div class="img_holder"></div>
				<!--<div class="grid-agileits1">-->
					<!--姓名-->
				<div class="form-control">
					<label class="header">姓名 <span>*</span></label>
					<input type="text" id="name" name="user.name" placeholder="例如：张三" title="请输入您的姓名" required="">
				</div>
					<!--性别
				<div class="main-row">
				<label class="header">性别 <span>*</span></label>
				<select name="gender">
					<option value="none" selected="" disabled="">选择性别</option>

					<option value="男">男</option>
					<option value="女">女</option>
				</select>
				</div>-->
				<div class="grid-w3layouts1">
					<label class="rating">性别<span>*</span></label>
					<ul>
						<li>
							<input type="radio" id="a-option" name="user.gender" value="男">
							<label for="a-option">男 </label>
							<div class="check"></div>
						</li>
						<li>
							<input type="radio" id="b-option" name="user.gender"value="女">
							<label for="b-option">女</label>
							<div class="check"><div class="inside"></div></div>
						</li>
						<div class="clear"></div>
					</ul>
				</div>
				<!--Email
					<div class="form-control">	
						<label class="header">Email <span>*</span></label>
						<input type="email" id="email" name="email" placeholder="Mail@example.com" title="Please enter a Valid Email Address" required="">
					</div>-->
					<!--出生日期-->
				<div class="form-control">
				<label class="header">出生日期 <span>*</span></label>
				<input id="email" size="16" name="user.birthdata" type="text" value=""  class="form_datetime">
				</div>

				<!--cript type="text/javascript" src="./jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>-->
				<script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
				<script type="text/javascript" src="./js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
				<script type="text/javascript" src="./js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
				<script type="text/javascript">
                    $(".form_datetime").datetimepicker({
                        format: 'yyyy-mm-dd',
                        language:  'zh-CN',
                        weekStart:0,
                        autoclose: true,
                        startView: 4,
                        minView: 2
                    });
				</script>
					<!--通讯方式-->
				<div class="form-control">
					<label class="header">手机号码 <span>*</span></label>
					<input type="text" id="phone" name="user.number" placeholder="例如：15616220567" title="Please enter your Phone No" required="">
				</div>
				<!--籍贯-->
				<div class="form-control">
					<label class="header">籍贯 <span>*</span></label>
					<select id="province" name="user.province" onchange="select()"></select>
					<select id="city" name="user.city" onchange="select()"></select>
				</div>

				<!--学历-->
				<div class="form-control">
					<label class="header">学历 <span>*</span></label>
					<select name="user.education">
						<option value="none" selected="" disabled="">选择您的学历</option>

						<option value="小学">小学</option>
						<option value="中学">中学</option>
						<option value="专科">专科</option>
						<option value="本科">本科</option>
						<option value="硕士">硕士</option>
						<option value="博士">博士</option>
					</select>
				</div>
				<!--报考的职位名称-->
				<div class="form-control">
					<label class="header">报考职位名称 <span>*</span></label>
					<input type="text" id="phone" name="user.positionName" placeholder="例如：纪检监察职位" title="请输入您要报考的职位" required="">
				</div>
                <div class="wthreesubmitaits">
                    <input type="submit" name="submit" value="提交">
                </div>
			</div>
			<!--
			<div class="content-wthree2">
				<div class="grid-w3layouts1">
					<div class="w3-agile1">
						<label class="rating">What is your current employment status?<span>*</span></label>
						<ul>
							<li>
								<input type="radio" id="a-option" name="selector1">
								<label for="a-option">Employed </label>
								<div class="check"></div>
							</li>
							<li>
								<input type="radio" id="b-option" name="selector1">
								<label for="b-option">Unemployed</label>
								<div class="check"><div class="inside"></div></div>
							</li>
							<li>
								<input type="radio" id="c-option" name="selector1">
								<label for="c-option">Self-Employed</label>
								<div class="check"><div class="inside"></div></div>
							</li>
							<li>
								<input type="radio" id="d-option" name="selector1">
								<label for="d-option">Student</label>
								<div class="check"></div>
							</li>
							<div class="clear"></div>
						</ul>
					</div>
					
				</div>
				
				<div class="clear"></div>
			</div>
			-->
            <!--
                    <div class="w3ls-btn">
                        <div class="contaorms">
                            <!--
                            <label class="rating">请上传您的个人照片</label>
                            <label class="input append-small-btn">
                                    <div class="upload-btn">
                                        上传
                                        <input type="file" name="file1" id="upload"  onclick="file.init()">
                                    </div>
                            </label>

                            <div class="img_holder"></div>

						<div class="wthreesubmitaits">
							<input type="submit" name="submit" value="提交">
						</div>
					</div>
             -->

		</form>
</div>

<p class="copyright">All Rights Reserved & Design by 董金明</a></p>


</body>
</html>
