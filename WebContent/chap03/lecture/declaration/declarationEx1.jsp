<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%!
void mymethod(){
	System.out.println("hello");
}

static void mymethod2(){
	System.out.println("hello static");
}

%>
    
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
<%!                    /* <%! : declaration : 선언부 = 위치에 상관없이 사용할 변수 선언 , 클래스레벨  */
int i = 3;
static int j = 10;
%>

<%!
int k = 20;
%>



<h1>Lorem ipsum dolor.</h1>

<% this.mymethod(); %>
<% mymethod2(); %>
</body>
</html>