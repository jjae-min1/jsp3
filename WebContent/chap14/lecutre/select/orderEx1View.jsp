<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "chap14.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String name = request.getParameter("name");
String order = request.getParameter("order");

if(name == null){
	name = "";
}
name = name.toUpperCase();
if(order == null){
	order ="1";
}

List<String> list = null;


switch (order){
case "1" :
	list = EmployeeDao.getNameLike(name);
	break;
case "2" :
	list = EmployeeDao.getNameLike(name, true);
	break;
case "3" :
	list = EmployeeDao.getNameLike(name, false);
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
<%
if(list.size()> 0){
	for(String n : list){
		
	
%>
		<ul>
			<li><%= n%></li>
		</ul>
<%
	}
}else{
%>
	<li>검색결과 없음</li>
<%
}
%>
</body>
</html>