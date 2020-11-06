<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
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
<h1>mainEx1</h1>

<!-- param 액션테그를 사용시 String타입으로 변형후 주고받아야 한다는 제약있음 -->
<!-- 주는쪽이나 받는쪽이나 동일한 request객체를 사용하므로 request객체의
     속성을 이용하여 주고받으면 형변환없이 자유롭게 주고받을 수 있음
     reqeust.setAttribute("이름", "값") -->

<%
Object o = new Object();
System.out.println(o.hashCode());

request.setAttribute("obj", o);
%>
<jsp:forward page="subEx1.jsp">
	<jsp:param value="newVal" name="newParam"></jsp:param>
</jsp:forward>
</body>
</html>