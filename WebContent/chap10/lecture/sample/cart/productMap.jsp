<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
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
String food = request.getParameter("food");
Map<String,Integer> map = new HashMap<>();
Object o = session.getAttribute("map");

if(o != null){
	map = (Map<String, Integer>) o;
}

session.setAttribute("map", map);
if(food != null && map.size() > 0){
	if(map.containsKey(food)){
		map.put(food, map.get(food) + 1);
	}else{
		map.put(food, 1);
	}
	
}else if(food != null){
	map.put(food, 1);
}


%>

<form action="" method="post">
<select name="food" id="">
	<option value="water">물</option>
	<option value="pizza">피자</option>
	<option value="burger">버거</option>
	<option value="cheeze">치즈</option>
	<option value="chicken">치킨</option>
</select>
<input type="submit" value="장바구니담기" />
</form>
장바구니 물품 수 : <%= map.size() %> <br />
<a href="cartMap.jsp">장바구니보기</a> <br />



</body>
</html>