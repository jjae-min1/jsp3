<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
Cookie[] cookies = request.getCookies();
if(cookies != null && cookies.length > 0){
	for(Cookie cookie : cookies){
		if(cookie.getName().equals("name")){
			Cookie cookie2 = new Cookie("name", URLEncoder.encode("newValue", "utf-8"));
			response.addCookie(cookie2);
		}
	}
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
name 쿠키의 값을 변경합니다.
</body>
</html>