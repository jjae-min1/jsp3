<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="chap05.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("utf-8");%>







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
제목 : <input type="text" readonly value="${list[param.id].title}" /> <br />
내용 : <textarea cols="30" rows="15" readonly>${list[param.id].body }</textarea> <br />
	 	
<hr />

<pre>
<c:out value="${list[param.id].body }"></c:out>
<!-- 쿼리문으로 작성시 쿼리문으로 해석되지 않고 그대로 출력 : out태그 -->
</pre>
</body>
</html>