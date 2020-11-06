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
context : <%= request.getContextPath() %>
<br />
           
<!-- <a href="/myjsp/chap04/lecture/bufferEx1.jsp">buffer</a> -->
<!-- contextPath는 설정에 따라 변할 수 있어 위와 같이  코드에 직접 넣으면
     위험하다. 따라서 아래와 같이 메소드를 통해 선언해 주는 게 좋다.  -->
     <!-- 경로가 / 로 시작하는 경우 : 절대경로 -->
     <!-- /없이 시작하는 경우 : 상대경로-->
     <!-- 서버의 webcontent 기준으로 내부에서 작업하는 경우
     		경로 선언시 contextPath를 생략해야함(다른 webcontent 폴더나
     		브라우저에서는 선언해야 함 -->
     
<a href="<%= request.getContextPath() %>/chap04/lecture/bufferEx1.jsp">buffer</a>
</body>
</html>