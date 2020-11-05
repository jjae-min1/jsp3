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

<!-- 액션태그 : 역할을 수행하는 태그 -->
<!-- 디렉티브와 차이는 해당파일을 실행후 servlet으로 넘김 -->
<jsp:include page="navbarEx1.jsp"></jsp:include>
<div class="container">
	<h1>액션 태그 본문</h1>
</div>


<%-- <%= str %> --%>
<!-- navbar파일 내에 str라는 변수를 선언했지만 본 파일에서는 해당변수 사용 불가 -->

<jsp:include page="footerEx1.jsp"></jsp:include>
</body>
</html>