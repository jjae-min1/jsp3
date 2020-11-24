<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
${4 + 5 } <br />
${3 - 7 } <br />
${9 * 9 } <br />
${15 / 2 } <br />
${15 div 2 } <br />
${31 % 3  } <br />
${31 mod 3  } <br />
<!-- java연산과 달리 우리가 아는 결과값 그대로 나옴 -->

<hr />

${"10"+ 5 } <br />
<!-- java는 105가 나오지만 EL은 숫자로 변경할 수 있으면 변경해서 연산함 -->

${abc + 5 } <br />
<!-- abc의 값은 null로 취급되고 null + 5 = 5라는 결과값을 보여줌 -->




</body>
</html>