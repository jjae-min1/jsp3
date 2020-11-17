<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
String sql = "SELECT ename, salary * 12 + NVL(commission, 0) AS sal FROM employee WHERE eno = 7499";

int sal = 0;
String ename = "";

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
Class.forName("oracle.jdbc.driver.OracleDriver");
try(
		Connection con = DriverManager.getConnection(url, id, pw);
		Statement stmt = con.createStatement();
){	
	ResultSet rs = stmt.executeQuery(sql);
	
	
	
	while(rs.next()){
		sal = rs.getInt("sal");
		ename = rs.getString("ename");
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
이름 : <%= ename %> <br />
연봉 : <%= sal %>
</body>
</html>