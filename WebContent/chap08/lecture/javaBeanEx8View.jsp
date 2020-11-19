<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<jsp:useBean id="car" class="chap08.car"></jsp:useBean>

<%-- 
<jsp:setProperty name="car" property="name" param="name" />
<jsp:setProperty name="car" property="speed" param="speed"/>
--%>

<%-- 
<jsp:setProperty name="car" property="name"  />
<jsp:setProperty name="car" property="speed" />
--%>

<jsp:setProperty name="car" property="*"/>

<%--프로퍼티 명과 파라미터 명이 같으면 파라미터명을 생략 가능하며, 
 그러한 프로퍼티가 많으면 위와같이 한줄로 축약 가능하다 --%>




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
<jsp:getProperty property="name" name="car"/>
<jsp:getProperty property="speed" name="car"/>
</body>
</html>