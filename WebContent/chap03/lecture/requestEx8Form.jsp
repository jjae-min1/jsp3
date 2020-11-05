<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

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
<form action="requestEx8Process.jsp" method="post">
<!-- method : 기본값 = get,       post는 넘겨주는 데이터를 url에 표시 x -->
<!-- post방식과 get방식은 encoding방법의 차이가 있어서 post는 한글 못읽음 -->


 id : <input type="text" name="id" /> <br />
 pw : <input type="password" name="pw"/><br />
 <input type="submit" value="login" class="btn btn-primary"/>
</form>
</body>
</html>