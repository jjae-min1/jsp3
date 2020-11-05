<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
    
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
<!-- Header : 클라이언트로 부터 받은 요청의 부가정보 -->
<!-- Enueration : iterator와 같은 역할을 하는 인터페이스로
           둘다 java.util클래스 안에 존재 -->
<%
Enumeration<String> headerNames = request.getHeaderNames();

while(headerNames.hasMoreElements()){
	String name = headerNames.nextElement();
	out.print(name);
	out.print(":");
	out.print(request.getHeader(name));
	out.print("<br>");
}
%>
</body>
</html>