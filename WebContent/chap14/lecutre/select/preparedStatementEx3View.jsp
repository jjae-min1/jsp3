<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
String dno = request.getParameter("dno");
String name = request.getParameter("name");

String sql = "SELECT ename FROM employee WHERE dno = ? AND "
			+ "ename LIKE ?";

Class.forName("oracle.jdbc.driver.OracleDriver");
int resultDno = 0;
String resultName = "";
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
List<String> list = new ArrayList<>();
try(
		
		Connection con = DriverManager.getConnection(url, id, pw);
		PreparedStatement stmt = con.prepareStatement(sql);){
	int dnoInt = Integer.valueOf(dno);
	stmt.setInt(1, dnoInt);
	stmt.setString(2, "%" + name + "%");
	ResultSet rs = stmt.executeQuery();
	

	
	while(rs.next()){
		list.add(rs.getString(1));
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

<h1><%= dno %> 부서 직원 목록</h1>

<%
for(String n : list){
%>
	<li><%= n %></li>
<%
}
%>

</body>
</html>