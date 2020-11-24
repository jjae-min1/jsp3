<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<form action="elEx18ParamvaluesView.jsp">
<label for="">berry<input type="checkbox" name="food" value="berry"/></label>
<label for="">banana<input type="checkbox" name="food" value="banana"/></label>
<label for="">water<input type="checkbox" name="food" value="water"/></label>
<label for="">coffee<input type="checkbox" name="food" value="coffee"/></label>
<label for="">cake<input type="checkbox" name="food" value="cake"/></label>
<input type="submit" value="등록"/>

</form>
</body>
</html>