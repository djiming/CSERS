<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册成功，正在跳转</title>
<script language="javascript" type="text/javascript">
    var time = 3;
    function tiaozhuan()
    {
        if(time==0)
            window.location="userindex.jsp";
        document.all.tiao.innerText="注册成功,"+time+"秒后跳转到主界面";
        time--;
    }
    setInterval("tiaozhuan()",1000);
</script>
</head>
<body onload="tiaozhuan()">
    <form id="form1">
    <div>
        <a href="login.jsp" id="tiao"></a>
    </div>
    </form>
</body>
</html>