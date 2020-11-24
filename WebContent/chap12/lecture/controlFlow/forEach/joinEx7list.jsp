<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "chap14.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%


String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin"; 
String sql = "SELECT ename, eno FROM employee";

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection(url, id, pw);
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);
List<Employee> list = new ArrayList<>();


while(rs.next()){
	Employee emp = new Employee();
	emp.setEno(rs.getInt(2));
	emp.setEname(rs.getString(1));
	list.add(emp);
}
stmt.close();
con.close();


pageContext.setAttribute("list", list);

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
<div class="container">
<h1>사원목록</h1>
<table>
	<tr>
		<th>사번</th>
		<th>이름</th>
	</tr>
	
	
	<c:forEach var="myItem" items="${list }">
	
		<tr>
			<td>
				<a href="joinEx7Detail.jsp?eno=${myItem.eno }">
					${myItem.eno }
				</a>
			</td>
			<td>${myItem.ename }</td>
		</tr>
	</c:forEach>
	
	
	<%
	for(Employee emp : list){
	%>	
		<tr>
			<td>
				<a href="joinEx7Detail.jsp?eno=<%=emp.getEno()%>">
					<%=emp.getEno() %>
				</a>
			</td>
		<td><%=emp.getEname() %></td>
		</tr>
	<%
	}
	%>
	

</table>
<%

%>

</div>
</body>
</html>





