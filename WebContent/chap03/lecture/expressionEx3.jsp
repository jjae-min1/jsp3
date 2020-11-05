<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.function.*" %>
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
java.util.Set<Integer> lotto = new java.util.HashSet<>();

while(lotto.size()<6){
	int rand = (int) (Math.random() * 45 + 1);
	lotto.add(rand);
}
%>
<ul>

 <%
 	final JspWriter out2 = out;
 	lotto.forEach((x)->{
	try{
		out2.print("<li>" +x+ "</li>");
//		System.out.println(x);
	 }catch(Exception e){
		e.printStackTrace();
	}
});%>


</ul>

<ul>
<li><%
for(int list : lotto){
	
	out.print(list);
	out.write("\n");
}
%>

</li>
</ul>

 <ul>
<li>
<%
for(int i = 0; i<5; i++){
	java.util.Iterator<Integer> iterator = lotto.iterator();
	while(iterator.hasNext()){
		Integer value = iterator.next();
		out.println(value);
		out.print("\n");
	}
}
%>
</li>
</ul> 





</body>
</html>