<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
String dno = request.getParameter("dno");
String sql = "SELECT * FROM department" ;

Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con = null;
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

con = DriverManager.getConnection(url, id, pw);

Statement stmt = null;
stmt = con.createStatement();

ResultSet rs = null;
rs = stmt.executeQuery(sql);

String loc = "";

if(rs.next()){
	if(rs.getString("loc") == null){
		loc = "";
	}else{
		loc = rs.getString("loc");
	}
	%>
	
	<%
	
}

stmt.close();
con.close();

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
<h1><%= loc %></h1>
</body>
</html>