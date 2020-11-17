<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
String job = request.getParameter("job");
String sql = "SELECT max(salary), min(salary), avg(salary), sum(salary) "
				+"FROM employee WHERE job = '" + job + "'";
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
int max = 0;
int min = 0;
int sum = 0;
double avg = 0.0;

Class.forName("oracle.jdbc.driver.OracleDriver");
try(
		Connection con = DriverManager.getConnection(url, id, pw);
		Statement stmt = con.createStatement();){
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next()){
		max = rs.getInt(1);
		min = rs.getInt(2);
		avg = rs.getDouble(3);
		sum = rs.getInt(4);
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
<h1> 최대 : <%= max %></h1>
<h1> 최소 : <%= min %></h1>
<h1> 평균 : <%= avg %></h1>
<h1> 합계 : <%= sum %></h1>
</body>
</html>