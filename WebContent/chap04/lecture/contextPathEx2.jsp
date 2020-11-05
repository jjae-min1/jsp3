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
<h1>contextPateEx2</h1>
<%= request.getContextPath() %>
 <%-- <jsp:include page="/chap04/lecture/contextPateEx2Sub.jsp"></jsp:include> <br />  --%>
<!-- <a href="/chap04/lecture/contextPateEx2Sub.jsp">to sub.jsp</a> -->
<a href="<%= request.getContextPath() %>/chap04/lecture/conTextPathEx2Sub.jsp">to sub.jsp</a>
</body>
</html>