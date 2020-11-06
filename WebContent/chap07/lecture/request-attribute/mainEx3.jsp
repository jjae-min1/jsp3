<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="chap07.User" %>

<%
// 이름, 주소 , 나이... (사용자 정보)

User user = new User();
user.setName("ironman");
user.setAddress("ny");
user.setAge(50);

request.setAttribute("user", user);
%>

<jsp:forward page="subEx3.jsp"></jsp:forward>