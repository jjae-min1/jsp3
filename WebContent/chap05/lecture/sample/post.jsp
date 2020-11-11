<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "chap05.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
List<Post> list = (List<Post>) application.getAttribute("list");
if(list == null){
	list = new ArrayList<Post>();
	application.setAttribute("list", list);
}

/* list 생성 (맨 처음시 if문을 타고 ArrayList로 생성하고 list를 받는 Attr 생성 ) */

String title = request.getParameter("title");
String body = request.getParameter("body");
if(title != null && !title.isEmpty() && body != null && !body.isEmpty()){
	Post p = new Post();
	p.setTitle(title);
	p.setBody(body);

	list.add(p);
}
/* title, body에 입력받은 값이 있으면 request로 받아 객체p에 저장 후 list에 추가 */
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
<h1>방명록</h1>
<form action="" method="post">
	제목 : <input type="text" name="title" /> <br />
	<textarea name="body" id="" cols="30" rows="10"></textarea>
	
	<br />
	<input type="submit"  value="등록"/>
</form>
<hr />
<ul>
<%
for(int i = 0; i < list.size(); i++){
%>
	<li><a href="detail.jsp?id=<%= i %>"><%= list.get(i).getTitle() %></a></li>
<%	
	
	
}
%>
</ul>
<!-- list내부에 있는 Post객체의 타이틀과 바디 데이터를 출력 -->
</body>
</html>