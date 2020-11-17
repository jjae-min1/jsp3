<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
String eno = request.getParameter("eno");
String sql = "SELECT s.grade FROM employee e, salgrade s WHERE e.salary BETWEEN "
			+"s.losal AND s.hisal AND e.eno = ?";
int grade = 0;

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement stmt = con.prepareStatement(sql);
int enoInt = Integer.valueOf(eno);
stmt.setInt(1, enoInt);

ResultSet rs = stmt.executeQuery();

while(rs.next()){
	grade = rs.getInt(1);
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

<h1><%= eno %> 사원의 봉급등급 : <%= grade %></h1>

</body>
</html>