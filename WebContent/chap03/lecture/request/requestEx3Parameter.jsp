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
<form>
	name : <input type="text" name="fname" /><br />
	age : <input type="number" name="age" id="" /><br />
	gender : 남자 <input type="radio" name="gender" value="male" /><br />
			 여자 <input type="radio" name="gender" value="female" /><br />
 	<!-- 라디오타입으로 선언시 체크한 항목의 value값이 parameter로 설정 됨 -->
 	
 	food : pizza <input type="checkbox" name="food" value="pizza" /><br />
 		   burger <input type="checkbox" name="food" value= "burger""id="" /><br />
 		   icecream <input type="checkbox" name="food" value="icecream" id="" /><br />
 		   water <input type="checkbox" name="food" value="water" id="" />	<br />
 	<!-- check박스는 여러항목 선택 가능 -->
	<input type="submit" value="전송" class="btn btn-primary" />
	
</form>

<%
String name = request.getParameter("fname");
String age = request.getParameter("age");
String gender = request.getParameter("gender"); 
String[] food = request.getParameterValues("food");
/* checkbox타입은 return값을 여러개 받아야 해서 배열타입으로 받음
 메소드도 Values가 붙음*/
%>

name : <%= name %> <br />
age : <%= age %> <br />
gender : <%= gender %> <br />
food:
<!-- food는 배열타입이므로 반복문을 통해서 출력 -->
<%
if(food != null){
	for(int i = 0; i < food.length; i++){
		out.print(food[i]);
		if(i != food.length-1){
			out.print(",");
		}
	}
}
%>
<!-- 향상for문 -->
<%
if(food!=null){
	for(String str : food){
		out.print(str + "   ");
	}
}
%>
</body>
</html>