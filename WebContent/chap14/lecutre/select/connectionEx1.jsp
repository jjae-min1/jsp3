<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
// 해당 명령문을 DB로 보낼 시 과정
/* 드라이버로딩 - 커낵션 객체생성 - 스테이트먼트 객체생성 - 리절트셋 객체 생성후 스테이
트먼트 실행 - 실행결과를 String으로 받음 - statement 객체 종료 - 커넥션 객체 종료*/
String sql = "SELECT ename FROM employee WHERE eno = 7499";



// 1. jdbc 드라이버 로딩
Class.forName("oracle.jdbc.driver.OracleDriver");
/* lib/ojdbc 안에 있는 클래스  (lib : 외부 라이브러리들 받아넣는 폴더)*/


//2. 데이터베이스 커넥션 구함
Connection con = null;
// getConnection(url, user, password) : parameterType = String
String id = "c##mydbms";
String pw = "admin";
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
con = DriverManager.getConnection(url, id, pw);

// stmt : 쿼리를 실행하는 메소드를 갖고있음


//3. 쿼리 실행을 위한 statement 객체 생성
Statement stmt = null;
stmt = con.createStatement();



//4. 쿼리 실행
ResultSet rs = null;
rs = stmt.executeQuery(sql);


//5. 쿼리 실행 결과 사용
String name = "";
if(rs.next()){
	name = rs.getString("ename");
}
//next() : 다음 행으로 이동할 수 있으면 true  다음 행 존재하지 않으면 false 리턴
//실행 전에는 커서가 1행 이전을 지칭하고 있음

//6. statement 종료
stmt.close();

//7. 데이터베이스 커넥션 종료
con.close();
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
<h1>성공</h1>
<h1><%= name %></h1>
</body>
</html>