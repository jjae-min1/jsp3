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

<%
int valueInt = 0;
String value = request.getParameter("value");
if(value != null){
	valueInt = Integer.valueOf(value);
}
%>


<%
for(int i = 1; i < 10; i ++){
%>
<% 
	out.print(valueInt);
	out.print(" * ");
	out.print(i);
	out.print(" = ");
	out.print(valueInt*i);
%>
<br>
<%
}
%>

</body>
</html>