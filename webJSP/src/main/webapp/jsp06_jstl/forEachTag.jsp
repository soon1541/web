<%@page import="java.util.ArrayList"%>
<%@ page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<main>
	<h1>forEach 태그 : 반복문</h1>
	<c:set var="dan" value="${8 }"/>
	
	<h2>구구단</h2>
	<ul>
		<!-- var : 변수선언
			 begin : 시작값
			 end : 마지막 값
			 step : 증감값(생략하면 1증가한다.) 
		
		 -->
		<c:forEach var="i" begin="2" end="9" step="1">
			<li> ${dan } * ${i } = ${dan*i } </li>
		</c:forEach>
	</ul>
	<h2>배열을 이용한 반복문</h2>
	<%
		int data[] = {454,325,765,32,65,26,165,76};
	%>
	<ol>
	<c:forEach var="d" items="<%=data %>">
		<li>${d }</li>
	</c:forEach>
	</ol>
	<h2>컬렉션(List)을 이용한 반복문</h2>
	<%
		List<MemberVO> list = new ArrayList<MemberVO>();
		list.add(new MemberVO(100,"안중근","010-5689-8888","강남구"));
		list.add(new MemberVO(200,"세종대왕","010-3333-5454","영등포구"));
		list.add(new MemberVO(300,"이순신","010-3333-9999","성동구"));
		list.add(new MemberVO(400,"김삿갓","010-5455-0000","종로구"));
		list.add(new MemberVO(500,"류승룡","010-5555-8888","송파구"));
		
		out.print("<ul>");
		for(int i=0; i<list.size(); i++){
			MemberVO mVo = list.get(i);
			out.println("<li>" + mVo.getNum() + ", " + mVo.getName() + ", " + mVo.getTel() + ", " + mVo.getAddr() + "</li>");
		}
			out.println("<ul>");
	%>
	<hr/>
	<ol>
		<c:forEach var="" items="<%=list %>">
			<li>${v.num }, ${v.name }, ${v.tel }, ${v.addr }</li>
		</c:forEach>
	</ol>
	
	<h2>Map을 이용한 반복문</h2>
	<%
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("no", "1234");
		map.put("subject", "새로나온 신차는");
		map.put("userid", "ggm");
		map.put("hit", "3");
	%>
	<c:forEach var="m" items="<%=map %>">
		[${m.key } : ${m.value }] <br/>
	</c:forEach>
	<hr/>
	<%
		HashMap<String, MemberVO> memMap = new HashMap<String, MemberVO>();
	
		memMap.put("AAA", new MemberVO(1,"홍길동", "02-1234-5677", "신사동"));
		memMap.put("BBB", new MemberVO(2,"김연아", "02-1111-3333", "논현동"));
		memMap.put("CCC", new MemberVO(3,"손흥민", "02-5555-5632", "압구정"));
	%>
	<style>
		.m_List{height:200px;}
		.m_List>li{float:Left; width:20%; border-bottom:1px solid #ddd;}
	</style>
	
	<ul>
		<c:forEach var="mm" items="<%=memMap %>">
			<li>${mm.key }</li>
			<li>${mm.value.num }</li>
			<li>${mm.value.name }</li>
			<li>${mm.value.tel }</li>
			<li>${mm.value.addr }</li>
		</c:forEach>
	</ul>
	
	
	
	
</main>




























