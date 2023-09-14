<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>form태그를 이용한 데이터 전송</h1>
<form>
	<ul>
		<li>아이디</li>
		<li><input type="text" name="userid"/></li>
		<li>이름</li>
		<li><input type="text" name="userid"/></li>
		<li>수신여부</li>
		<li><input type="text" name="userid" value="수신함"/> 수신함
			<input type="text" name="userid" value="수신안함"/> 수신안함</li>
		<li>취미</li>
		<li>
			<input type="checkbox" name="hobby" value="축구"/> 축구
			<input type="checkbox" name="hobby" value="농구"/> 농구
			<input type="checkbox" name="hobby" value="야구"/> 야구
			<input type="checkbox" name="hobby" value="배구"/> 배구
		</li>
		<li>관심분야</li>
			<select name="interest">
				<option>등산</option>
				<option>독서</option>
				<option>달리기</option>
				<option>바이크</option>
			</select>
		<li>
		<li>메모</li>
		<li><textarea name="memo"></textarea></li>
		<li><input type="submit" value="전송하기"/></li>
	</ul>
</form>


</body>
</html>