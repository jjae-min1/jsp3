<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
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
<c:forEach var="i" begin="9" end="11">
	<h1>반복${i }</h1>
</c:forEach>
<!-- begin부터 end까지 증가하며 반복하겠다는 의미 ,
     var : foreach 영역에 있는 변수
     step : 선언한 수만큼 증가값을 증가시킴
     item : forEach문 내에서 사용하고자 하는 map, list등을 선언
     (var로 선언한 변수에 item을 받을 수 있다)
     varStatus : loopTagStatus 인터페이스의 메소드를 사용
     (count : 1부터 시작 , index : 0부터 시작-->
</body>
</html>