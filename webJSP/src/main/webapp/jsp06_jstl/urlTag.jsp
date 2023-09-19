<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<main>
	<h2>url 태그 : url 태그를 이용하여 주소관리하기</h2>
	
	<c:url var="home" value="/webJSP/index.jsp"/>
	<c:url var="view" value="/webJSP/board/board_view.jsp"/>
		<c:param name="no" value="7"></c:param>
	</c:url>
	<c:url var="Login" value="/webJSP/users/LoginForm.jsp"/>
	
	<a href="${home }">홈으로</a>
	<a href="${login }">로그인</a>
	<a href="${boardview }">글내용보기(7)</a>
</main>