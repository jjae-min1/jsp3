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
<h1>pageContext methods</h1>

<%
pageContext.setAttribute("pageAttr1", "pageVal1");
request.setAttribute("reqAttr1", "reqVal1");
session.setAttribute("sessionAttr1", "sessionVal1");
application.setAttribute("appAttr1", "appVal1");
%>
<!-- pageContext는 가장 좁은지역에서 객체를 공유하기 때문에
     pageContext를 통해 request, session객체를 불러올 수 있다. 
     	getAttribute메소드 호출후 (attribute이름, 위치를 나타내는 int) 대입-->
     	
     	
<%= pageContext.getAttribute("pageAttr1") %> <br />
<%= pageContext.getAttribute("reqAttr1", pageContext.REQUEST_SCOPE) %> <br />
<%= pageContext.getAttribute("sessionAttr1", pageContext.SESSION_SCOPE) %> <br />
<%= pageContext.getAttribute("appAttr1", pageContext.APPLICATION_SCOPE) %>


</body>
</html>