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
<form action="">
<input type="text" name="id" />
<input type="text" name="pw" />
<input type="text" name="age" />
<input type="submit" value="전송" />
</form>

id : <%= request.getParameter("id") %> <br />
pw : <%= request.getParameter("pw") %> <br />
age : <%= request.getParameter("age") %> <br />

<a href="requestEx4Form.jsp" class="btn btn-secondary">뒤로</a>
</body>
</html>