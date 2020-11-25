<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag dynamic-attributes="attr" %>
<!-- jsp파일 내에서 어떤 어트리뷰트를 사용할지 모를 시
 임의의 attribute를 설정해놓는 법 
  (attr.jsp페이지에서 설정한 어트리뷰트 명)  꼴로 검색
  맵의 형태로 나타남--> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


${attr.attr1 } <br />

${attr["attr2"] } <br />

<hr />

<ul>
<c:forEach items="${attr }" var="entry">
	<li>${entry.key } : ${entry.value } </li>
</c:forEach>
</ul>

