<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="myAttr" %>
<%@ attribute name="myAttr2" required="true"%>
<!-- required : jsp페이지 내에서 해당 속성의 값을 꼭 명시해줘야 함 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>attribute 사용 가능 태그</h3>
<h3>받은 myAttr : ${myAttr }</h3>
<h3>받은 myAttr2 : ${myAttr2 }</h3>