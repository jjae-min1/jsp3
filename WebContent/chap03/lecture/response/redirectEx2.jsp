<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String queryString = "?" + "name=abc";
String queryString2 = "&" +"id=def" + "&han=";
String han = "한글";
String hanEncoded = java.net.URLEncoder.encode(han, "utf-8"); 
response.sendRedirect("redirectEx2Target.jsp" + queryString + queryString2 + hanEncoded);
                       

%>