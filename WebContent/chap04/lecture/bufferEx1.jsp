<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<%@ page buffer="1kb"  autoFlush="true"%>


<!-- buffer : �ӽ� �������(���Ͽ��� ���ۿ� ��û�� ������ �׾Ƶδٰ� ���۰� ����
              ���� ������), page ��Ƽ��� ����ũ�� ���� ���� -->
              
<!-- autoFlush : buffer�� ������ �������� ����ִ� ����(�⺻�� = true) 
				 false�� ���� �� �۾��ϰ��� �ϴ� �������� ���� buffer�� ũ�⸦
				 �Ѿ�� �����߻�(ù��° flush���� header���� ���� �Ұ�)-->


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