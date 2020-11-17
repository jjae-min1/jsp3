<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
String eno = request.getParameter("eno");
String sql = "SELECT ename FROM employee WHERE eno = ? " 
		; 

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
String name = "";


Class.forName("oracle.jdbc.driver.OracleDriver");
try(
		Connection con = DriverManager.getConnection(url, id, pw);
		PreparedStatement stmt = con.prepareStatement(sql);){
	int enoInt = Integer.valueOf(eno);
	stmt.setInt(1, enoInt);
	/* 쿼리문에 변수를 ? 로 선언시 preparedStatement 객체로 넘겨서 set메소드로
			물음표의 순서에 맞게 넣어줌*/
	ResultSet rs = stmt.executeQuery();
	while(rs.next()){
		name = rs.getString(1);
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

<h1><%= name %></h1>
</body>
</html>