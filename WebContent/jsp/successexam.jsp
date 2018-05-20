<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpSession,javax.websocket.Session,org.apache.struts2.ServletActionContext"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>报考成功，请牢记您的准考证号</title>
<script language="javascript" type="text/javascript">
</script>
</head>
<body>
   <%  
   		HttpSession sessions = ServletActionContext.getRequest().getSession();
        //驱动程序名   
        String driverName = "com.mysql.jdbc.Driver";  
        //数据库用户名   
        String userName = "root";  
        //密码   
        String userPasswd = "root";  
        //数据库名   
        String dbName = "csers";  
        //表名   
        String tableName = "user"; 
        //IDNUMBER
        String idnumber = (String)sessions.getAttribute("userna");
        //联结字符串   
        String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="  
                + userName + "&password=" + userPasswd;  
        Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection connection = DriverManager.getConnection(url);  
        Statement statement = connection.createStatement();  
        String sql = "SELECT name,examNumber FROM " + tableName +" where idNumber = "+ idnumber; 
        System.out.print(idnumber);
        ResultSet rs = statement.executeQuery(sql);
    %>  
      <p1>
      <%while (rs.next()) {%> 
      <%out.print(rs.getString("name")); %>，恭喜您报考成功，请牢记您的准考证号是：<% out.print(rs.getString("examNumber")); %>
      <%} %>
      </p1>
      <%  
        rs.close();  
        statement.close();  
        connection.close();  
    %> 
</body>
</html>