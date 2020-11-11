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
<h1>pageContext method: 기본 객체 얻기</h1>

<!-- 각각의 객체가 pageContext객체를 통해 얻은 객체가 같음을 보여줌 -->

request : <%= request == pageContext.getRequest() %> <br />
session : <%= session == pageContext.getSession() %> <br />
application : <%= application == pageContext.getServletContext() %> <br />

response : <%= response == pageContext.getResponse() %> <br />

out : <%= out == pageContext.getOut() %> <br />
page : <%= page == pageContext.getPage() %> <br />
config : <%= config == pageContext.getServletConfig() %> <br />



</body>
</html>