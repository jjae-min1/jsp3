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
<h1>pageContext findAttribute</h1>
<%
/* pageContext.setAttribute("myattr1", "myval1"); */
/* request.setAttribute("myattr1", "reqval1"); */
/* session.setAttribute("myattr1", "sessionval1"); */
application.setAttribute("myattr1", "appval1");
%>

<%= pageContext.findAttribute("myattr1") %>
<!-- 동일한 attribute명으로 저장하고 findAttribute로 해당 attribute명을 넣으면
     가장 좁은범위의 객체가 갖고있는 attribute값으로 출력된다. -->

</body>
</html>