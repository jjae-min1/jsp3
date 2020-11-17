<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
String eno = request.getParameter("eno");
String sql = "SELECT e2.ename "
			+"FROM employee e1, employee e2 "
			+"WHERE e1.eno = ? AND e1.manager = e2.eno";
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
String Manager = "";

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement stmt = con.prepareStatement(sql);
int enoInt = Integer.valueOf(eno);
stmt.setInt(1, enoInt);

ResultSet rs = stmt.executeQuery();

while(rs.next()){
	Manager = rs.getString(1);
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

<h1><%= eno %> 의 매니저 : <%= Manager %></h1>

</body>
</html>