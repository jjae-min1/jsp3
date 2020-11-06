<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<h1>Lorem ipsum dolor.</h1>
<%
String name = "java";
%>

<%= name %> <!-- expression : out.print(); 내부에 선언될 값(파라미터)-->

<hr />
<%
java.util.List<String> list = new java.util.ArrayList<>();
%>
<%
list.add("java");
list.add("servelt");
list.add("html");
list.add("jsp");
%>

<ul>
<%
for(String item : list){
%>
	<li><%= item%></li>
<%
}
%>
</ul>


<%
String status = "danger";
%>

<h1 class="text-<%= status %>">Lorem ipsum dolor.</h1>


</body>
</html>