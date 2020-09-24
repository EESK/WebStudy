<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style type="text/css">
/* CSS의 주석처리 */
/*
	오라클 대신 사용 : XML, JSON => JavaScript
*/
/* SELECTOR */
/* 태그 */
h1{
	background-color: orange;
	/*글자색상*/
	color : white;
}

/*
	CSS를 적용하는 태그 읽기
	=> 속성
	=> 값을 설정
*/

#aaa{
	color : black;
}
#bbb{
	color : green;
}
#ccc{
	color : red;
}
.ddd{
	color : magenta;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<center>
	<!-- 
		태그를 구분 
				1) ID => 중복이 없는 태그 (한개만 제어할 때 사용)
					#id명
				2) Class => 중복이 있는 경우 (포스터 여러개, 테이블, input)
					.class명
				============ JavaScript, CSS에 사용 (디자인, 태그제어)
				3) Name
				============ 자바에서 전송된 데이터를 받을 경우
	
	 -->
	 	<!-- 일일이 제어  id-->
		<h1 id="aaa">Java</h1>
		<h1 id="bbb">Oracle</h1>
		<h1 id="ccc">JSP</h1>
		<!-- 동시에 제어 class-->
		<h1 class="ddd">Spring</h1>
		<h1 class="ddd">Kotlin</h1>
	</center>
</body>
</html>