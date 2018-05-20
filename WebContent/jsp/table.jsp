<span style="font-size:12px;"><span style="font-size:14px;"><%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">  
table {  
    border: 2px #CCCCCC solid;  
    width: 360px;  
}  
  
td,th {  
    height: 30px;  
    border: #CCCCCC 1px solid;  
}  
</style>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>统计</title>
</head>
<body>
<%  
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
        //联结字符串   
        String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="  
                + userName + "&password=" + userPasswd;  
        Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection connection = DriverManager.getConnection(url);  
        Statement statement = connection.createStatement();  
        String sql = "SELECT * FROM " + tableName; 
        ResultSet rs = statement.executeQuery(sql);
    %>
      <br>  
    <br>  
    <table align="center">  
        <tr>  
            <th>  
                <%  
                    out.print("身份证号");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("姓名");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("性别");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("密码");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("生日");  
                %>  
            </th> 
            <th>  
                <%  
                    out.print("手机号码");  
                %>  
            </th> 
            <th>  
                <%  
                    out.print("省份");  
                %>  
            </th> 
            <th>  
                <%  
                    out.print("城市");  
                %>  
            </th> 
            <th>  
                <%  
                    out.print("学历");  
                %>  
            </th> 
            <th>  
                <%  
                    out.print("照片");  
                %>  
            </th> 
            <th>  
                <%  
                    out.print("密保问题");  
                %>  
            </th> 
            <th>  
                <%  
                    out.print("密保答案");  
                %>  
            </th> 
            <th>  
                <%  
                    out.print("报考职位");  
                %>  
            </th> 
            <th>  
                <%  
                    out.print("准考证号");  
                %>  
            </th> 
        </tr>  
  
        <%  
            while (rs.next()) {  
        %>  
        <tr>  
            <td>  
                <%  
                    out.print(rs.getString(1));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(2));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(3));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(4));  
                %>  
            </td>
            <td>  
                <%  
                    out.print(rs.getString(5));  
                %>  
            </td> 
            <td>  
                <%  
                    out.print(rs.getString(6));  
                %>  
            </td> 
            <td>  
                <%  
                    out.print(rs.getString(7));  
                %>  
            </td> 
            <td>  
                <%  
                    out.print(rs.getString(8));  
                %>  
            </td> 
            <td>  
                <%  
                    out.print(rs.getString(9));  
                %>  
            </td> 
            <%String str=rs.getString(10); %>
            <td> <img src="file:///<%=str%>"/>
            </td> 
            <td>  
                <%  
                    out.print(rs.getString(11));  
                %>  
            </td> 
            <td>  
                <%  
                    out.print(rs.getString(12));  
                %>  
            </td> 
            <td>  
                <%  
                    out.print(rs.getString(13));  
                %>  
            </td> 
            <td>  
                <%  
                    out.print(rs.getString(14));  
                %>  
            </td>  
        </tr>  
        <%  
            }  
        %>  
    </table>  
    <%  
        rs.close();  
        statement.close();  
        connection.close();  
    %> 
</body>
</html>