<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
String number = request.getParameter("number");
String sql = "SELECT e2.ename FROM employee e1, employee e2 "
			+"WHERE e1.eno = ? AND e1.eno = e2.manager";

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
List<String> list = new ArrayList<>();

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement stmt = con.prepareStatement(sql);
int numberInt = Integer.valueOf(number);
stmt.setInt(1, numberInt);

ResultSet rs = stmt.executeQuery();

while(rs.next()){
	list.add(rs.getString(1));
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
<ul>
<%for(String name : list) {%>
<li><%= number %> 의 부하 : <%= name %></li>
<%} %>
</ul>
</body>
</html>