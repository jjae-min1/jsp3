<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<%@ page buffer="1kb"  autoFlush="true"%>


<!-- buffer : 임시 저장공간(톰켓에서 버퍼에 요청한 정보를 쌓아두다가 버퍼가 가득
              차면 내보냄), page 디렉티브로 버퍼크기 선언 가능 -->
              
<!-- autoFlush : buffer의 공간이 가득차면 비워주는 역할(기본값 = true) 
				 false로 선언 시 작업하고자 하는 콘텐츠의 양이 buffer의 크기를
				 넘어가면 오류발생(첫번째 flush이후 header정보 수정 불가)-->


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
<%
for(int i = 0; i < 1000; i++){
	out.print("lorem ipsum.");
}
%>
</body>
</html>