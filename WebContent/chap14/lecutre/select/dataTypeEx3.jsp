<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
String sql = "SELECT hiredate FROM employee WHERE eno = 7369";
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
java.sql.Date hiredate = null;
Class.forName("oracle.jdbc.driver.OracleDriver");
try(
	Connection con = DriverManager.getConnection(url, id, pw);
	Statement stmt = con.createStatement();
		){
	ResultSet rs = stmt.executeQuery(sql);
	
	while(rs.next()){
		hiredate = rs.getDate("hiredate");
	}
}catch(Exception e){
	e.printStackTrace();
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1><%= hiredate %></h1>

</body>
</html>