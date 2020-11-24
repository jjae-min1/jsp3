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
<c:set var="myvar1" value="my value1" ></c:set>
<c:set var="myvar2" value="my value2" scope="page"></c:set>
<c:set var="myvar2" value="my value2, request" scope="request"></c:set>

<!-- scope 기본값 : page -->

${myvar1 } <br />
${myvar2 } <br />
${requestScope.myvar2 }
<!-- 중복된 이름을 갖는 속성들이 존재한다면 4가지 영역중 어디에 포함되는지 표시(기본은 page로 호출하여 출력) -->


</body>
</html>