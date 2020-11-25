<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="title" fragment="true" %>
<!-- 속성값으로 EL, JSTL 사용할 수 없다 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

${title }

<hr />

<jsp:invoke fragment="title" />
<!-- jsp페이지에 선언한 title이란 어트리뷰트를 호출 -->

<hr />
<jsp:doBody />