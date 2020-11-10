<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
Cookie cookie = new Cookie("mycookie2", "mycookie2-path");
cookie.setPath("/myjsp3/chap09");
/* setPath 안에 선언한 하위경로에서 요청시 응답객체에 cookie를 넣어서 보냄 */
response.addCookie(cookie);

cookie.setHttpOnly(true);
/* jsp에선 읽지 못하고 http에서만 읽을 수 있게 설정 */
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

<h1>쿠키 path랑 포함</h1>

</body>
</html>