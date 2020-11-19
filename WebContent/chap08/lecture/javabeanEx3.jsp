<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<jsp:useBean id="member" class="chop08.member.MemberInfo" scope="page"></jsp:useBean>
<!-- 액션태그가 하는 일 : memberinfo의 객체를 member(객체이름)로 생성하여
PageContext.SetAttribute("member", null)로 저장  -->

<!-- 만약 해당이름을 갖은 속성이 존재할 시 해당 속성에 해당 값을 저장 -->
<%
Object o = pageContext.getAttribute("Member");
System.out.print(o);
%>

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
<%= o %>
</body>
</html>