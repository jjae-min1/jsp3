<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
String grade = request.getParameter("grade");
String sql = "SELECT e.ename FROM employee e, salgrade s "
			+"WHERE e.salary BETWEEN s.losal AND s.hisal AND s.grade = ?";

List<String> list = new ArrayList<>();
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement stmt = con.prepareStatement(sql);
int gradeInt = Integer.valueOf(grade);
stmt.setInt(1, gradeInt);
ResultSet rs = stmt.executeQuery();

while(rs.next()){
	list.add(rs.getString(1));	
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
<ul>
<%for(String name : list){ %>
	<li><%= name %></li>
<%} %>

</ul>
</body>
</html>