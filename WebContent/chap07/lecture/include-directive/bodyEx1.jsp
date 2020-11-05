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
<!-- 따로 관리하고자하는 코드부분이 있으면 파일을 생성하여 관리한 후 include디렉
			터리로 불러옴 -->
			
<!-- jsp페이지에서 java코드로 변경되기 이전에 jsp페이지에 해당 페이지가 삽입된 후
          해당소스가 포함된 jsp페이지를 java코드로 변환 -->
 <%@ include file="/WEB-INF/chap07/include-directive/navbarEx1.jsp" %> 
 
 <!-- WEB-INF 폴더에 관리하고자 하는 파일을 넣은 뒤 include 디렉티브로 호출하면
     해당jsp페이지는 브라우저에 나타나지만, WEB-INF안에 있는 파일은 외부에서 호출할
     수 없다.(자신만 관리할수 있게) -->

<h1><%= name %></h1>

<div class="container">
	<h1>cool page~!!</h1>
</div>

<%@ include file="/WEB-INF/chap07/include-directive/footerEx1.jsp" %>
</body>
</html>