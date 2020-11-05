<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>


<%
List<String>list = new ArrayList<>();

if(request.getParameter("Age").equals("kid")){
	list.add("뽀로로");
	list.add("토마스");
	list.add("펭구");
}else{
	list.add("어벤져스1");
	list.add("어벤져스1");
	list.add("어벤져스1");
}
%>
<div class="card-deck">
<%
for(String str : list){
%>

	<div class="card">
		<div class="card-body">	
			<div class="card-title">
				<%= str%> 
			</div>
		</div>
	</div>


<%
}
%>
</div>