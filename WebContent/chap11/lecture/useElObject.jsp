<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<% request.setAttribute("name", "최범균"); %>

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
요청 URI : ${pageContext.request } <br>
request의 name 속성 : ${requestScope.name } <br> <!-- name이라는 키값을 갖은 속성값 출력 -->
code의 파라미터 : ${param.code} <br><!-- El을 사용하면 null이 표시가 안됨 -->
<%= request.getParameter("code") %> <!-- 위와 같음 -->
</body>
</html>