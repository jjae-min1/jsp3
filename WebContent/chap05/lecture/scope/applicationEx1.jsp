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

<h1>java웹 앱의 4개의 영역</h1>
<ul>
	<li>page - pageContext객체</li>
	<li>request - request객체</li>
	<li>session - session객체</li>
	<li>application - application객체 ( 모든 servlet이 공유하는 객체)</li>
	<!-- application은 thread와 같이 직접 사용할 경우 오차가 발생할 수 있어
	     읽기 전용으로 사용하는게 좋음 -->
</ul>


<%
request.setAttribute("reqAttr1", "reqVal1");
session.setAttribute("sessionAttr1", "sessionVal1");
application.setAttribute("appAttr1", "appVal1");
%>

</body>
</html>







