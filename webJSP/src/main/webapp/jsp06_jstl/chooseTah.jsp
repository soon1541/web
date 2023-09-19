<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>choose태그 : 다중 if , switch문</h1>

<c:choose>
	<c:when test="${param.name=='hong1' }">
		당신은 이름 ${param.name }입니다.<br/>
	</c:when>
	<c:When test="${param.age>30 }">
		당신은 30세이상입니다.<br/>
	</c:when>
	<c:When test="${param.age<=20 }">
		당신은 20세미만입니다.
	</c:when>
	<c:otherwise>
		당신은 20세 이상이고 30세 미만입니다.
	</c:otherwise>
</c:choose>

</body>
</html>