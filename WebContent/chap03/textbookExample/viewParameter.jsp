<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>

<% request.setCharacterEncoding("euc-kr"); %>
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
name 파라미터 = <%= request.getParameter("name") %> <br />
address 파라미터 = <%= request.getParameter("address") %> <br />

<p>
<%
String[] values = request.getParameterValues("pet");
if(values != null){
	for(int i = 0; i<values.length; i++){
%>	
	<%= values[i] %> <br />
<% 	
	}
}
%>

</p>

<%
Enumeration paramEnum = request.getParameterNames();
while(paramEnum.hasMoreElements()){
	String name = (String)paramEnum.nextElement();
%>
 	<%= name %> <br />
<%
}
%>

<%
	Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[])parameterMap.get("name");
	if(nameParam != null){
		
%>
name = <%= nameParam[0] %> <br />

<%		
	}
%>


</body>
</html>