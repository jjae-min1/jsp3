<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import=" java.text.SimpleDateFormat" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
Date time = new Date();
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
/* 날짜를 어떠한 형식으로 표현할 건가를 결정하는 클래스 */
%>
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

세션ID : <%= session.getId() %> <br />
<% 
time.setTime(session.getCreationTime());
%>
세션 생성시간: <%= formatter.format(time) %> <br />
<%
time.setTime(session.getLastAccessedTime());
%>
최근접근시간 : <%= formatter.format(time) %>

<!-- 최초 서버에서 클라이언트에게 응답시 쿠키정보를 포함해서 전달,
 두번째 요청부터는 요청콘텐츠에 쿠키정보를 포함해서 서버에 전달
 30분간 서버에 요청이 없으면, 해당 세션은 삭제되고 , 쿠키정보를 갖고있다고 해도
 첫 요청과 똑같이 취급된다. -->
</body>
</html>