<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%

/* 재응답 요청(잘못왔을 시): 파라미터로 선언된 경로로 이동하라는 명령어 */
/* forward 액션텝과는 다르게 파라미터로 선언된 페이지의 url이 브라우저에 나타남 */
response.sendRedirect("redirectEx1taget.jsp");

%>
