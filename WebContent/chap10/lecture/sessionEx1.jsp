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
<!-- session : 여러 request객체를 공유하고있는 객체 -->
<!-- 공유하고 있는 범위는 해당 브라우저 내에서만 공유 -->

<h1>session Ex1</h1>
<%
request.setAttribute("attr1", "value1");
session.setAttribute("attr2", "value2");

%>

attr1 : <%= request.getAttribute("attr1") %> <br />

attr2:  <%= session.getAttribute("attr2") %>
</body>
</html>