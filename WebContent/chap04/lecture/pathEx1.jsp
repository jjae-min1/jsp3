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
<h1>path</h1>
<a href="<%= request.getContextPath()%>/chap04/lecture/contextPathEx2.jsp">other file</a>
<!-- webcontent경로라 getContextPath메소드의 리턴값이 /로 시작 (절대 경로)-->


<a href="contextPathEx2.jsp">other file 2</a> 
<!-- 상대경로 (현재페이지의 url의 뒤를 기준으로 선언한 내용이 변경된 url 소환) -->

<a href="<%= request.getContextPath() %>/chap04/subfolder/pathEx1.jsp">절대경로</a>
<a href="subfolder/pathEx1.jsp">상대경로</a>
</body>
</html>