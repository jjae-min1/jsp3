<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "chap05.*" %>
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
<%
List<Post> list = (List<Post>) application.getAttribute("list");
String index = request.getParameter("id");
if(index != null){
	int indexNum = Integer.valueOf(index);
	if(list != null){
	Post post = list.get(indexNum);
	
	
	
	
%>
	제목 : <input type="text" value=<%=post.getTitle() %> readobly/>
	<br />
	<textarea readonly id="" cols="30" rows="10"><%= post.getBody() %></textarea>
	</body>
	</html>
<% 
	}else{
		%>
		비어있음
		<%
	}
}
%>


