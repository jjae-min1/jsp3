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
<c:set var="myVar1" value="my value1"></c:set>
<c:set var="myVar2" value="my value2, request" scope="request"></c:set>
<c:set var="myVar1" value="my value1, request" scope="request"></c:set>

<jsp:useBean id="myCar" class="chap08.car">
    <jsp:setProperty name="myCar" property="name" value="kia"></jsp:setProperty>
</jsp:useBean>







${myCar.name }

${myVar1 } <br />
${myVar2 } <br />
${requestScope.myVar1 } <br />
<br />
<c:remove var="myVar1"></c:remove>
<c:remove var="myVar2" ></c:remove>
${myVar1 }
${myVar2 }
${myVar1 }

<!--remove시 scope을 선언하지 않으면 4가지 모든 영역에 해당이름의 변수를 삭제 -->


</body>
</html>