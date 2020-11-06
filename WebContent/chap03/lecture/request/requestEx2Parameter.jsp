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
<!-- form텝으로 묶어 id와 pw를 server에 제출하는 란 생성 -->
<form>
	<input type="text" name="id"/> <br>
	<input type="text" name="pw"/> <br>
	<input type="password" name="pw2" /> <br />
	<input type="number" name = "age" value="1"/> <br />
	<input type="submit" value="전송" />
	<input type="date" name = "date" />
</form>
<!-- type: 입력란의 타입
	 name: 입력란의 identity
	 value: 초기값 -->

<%
/* httpServletRequest 객체로 getParameter 메소드에 name에 해당하는 값을 넣어 
     서버에서 얻음 (return type은 String, 필요에 따라 강제형변환 필요)*/
String val1 = request.getParameter("id");
String val2 = request.getParameter("pw");
String val3 = request.getParameter("pw2");
String val4 = request.getParameter("age");
/* val4 의 input텝 안에서 기본값을 1로 설정했지만
 처음 컴파일 시 기본값이 서버에 전해지지 않으므로 처음 서버가 읽는 val4값은 null이다*/
int val4Int = 0;
if(val4 != null){
	
	val4Int = Integer.valueOf(val4);
}
String val5 = request.getParameter("date");

%>
id = <%= val1 %> <br />
pw = <%= val2 %> <br />
pw2 = <%= val3 %> <br />
age = <%= val4Int %> <br />
date = <%= val5 %> <br />
</body>
</html>







