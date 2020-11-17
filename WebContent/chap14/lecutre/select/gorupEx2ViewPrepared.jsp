<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
String job = request.getParameter("job");
String sql = "SELECT max(salary), min(salary), avg(salary), sum(salary) "
		+"FROM employee WHERE job = ?";

String url = "jdbc:oracle:thin:@localhost:1521:orcl";

String id = "c##mydbms";
String pw = "admin";

int min = 0;
int max = 0;
double avg = 0.0;
int sum = 0;

Class.forName("oracle.jdbc.driver.OracleDriver");
try(
		Connection con = DriverManager.getConnection(url, id, pw);
		PreparedStatement stmt = con.prepareStatement(sql);
		){
	stmt.setString(1, job);
	ResultSet rs = stmt.executeQuery();
	while(rs.next()){
		min = rs.getInt(2);
		max = rs.getInt(1);
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
<h1>결과</h1>

max : <%= max %> <br />
min : <%= min %> <br />
avg : <%= avg %> <br />
sum : <%= sum %>

</body>
</html>