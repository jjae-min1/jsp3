<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "chap07.User" %>
<% request.setCharacterEncoding("UTF-8"); %>
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
<%
List<User> users = (List<User>) request.getAttribute("users");

%>


<div class="container mt-5">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>#</th>
				<th>Name</th>
				<th>Address</th>
				<th>Age</th>
			</tr>
		</thead>
		<%
		int count=1;
		for(User u : users){
		%>
			
		
			<tr>
				<td><%= count%></td>
				<td><%= u.getName() %></td>
				<td><%= u.getAddress() %></td>
				<td><%= u.getAge() %></td>
			</tr>
			<% count++;%>
		<%} %>
	</table>
</div>

</body>
</html>