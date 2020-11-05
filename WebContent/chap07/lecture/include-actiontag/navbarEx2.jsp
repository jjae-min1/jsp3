<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<h1>navbarEx2
request 참조값 : <%= System.identityHashCode(request) %>
</h1>


<% 
Object origianl = ((ServletRequestWrapper) request).getRequest();
out.print(System.identityHashCode(origianl));
%>