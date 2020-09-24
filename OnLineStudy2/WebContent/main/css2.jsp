<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
	가상셀렉터
	태그:가상(ex> a:hover, p:active)
	li:nth-child(1) (2) (3)... => 메뉴제작
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">

a:link{
	color: green;
}
a:visited {
	color: darkgray;
}
a:hover {
	color: orange;
}
/*셀렉터가 클릭된 상태일 때*/
p:active {
	color: red;
}
/*셀렉터에 포커스가 들어와 있을 때*/
input:focus {
	background-color: blue;
}


/* table, dl, li => 순서를 지정해서 찾는 방법
	태그명:nth-child(1~x)
*/
li:nth-child(1){
	color:red;
}
li:nth-child(2){
	color:blue;
}
li:nth-child(3){
	color:green;
}

tr:nth-child(1) {
	background-color: orange;
}
tr:nth-child(2n) {
	background-color: RGB(255,255,180);
}



</style>
</head>
<body>
	<!-- 사이트 이동(링크 태그) -->
	<!-- 
		a: 인라인 속성
		
		div, ul, ol, h1~h6 	: 블록 속성    => 줄내림 후 출력
		a, input, img 		: 인라인 속성 => 옆에 출력
	 -->
	<a href="http://daum.net" style="display: block;">다음</a>
	<a href="http://naver.net" style="display: block;">네이버</a>
	<p>클릭하세요</p>
	<input type=text size=15>
	<ul>
		<li>자바</li>
		<li>오라클</li>
		<li>스프링</li>
		<li>MyBatis</li>
		<li>자바스크립트</li>
		<li>Ajax</li>
		<li>React</li>
	</ul>
	<table border="1" bordercolor=black width=500>
		<tr>
			<th>이름</th>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
		</tr>
		<tr>
			<td>심청이</td>
			<td>89</td>
			<td>90</td>
			<td>78</td>
		</tr>
		<tr>
			<td>홍길동</td>
			<td>89</td>
			<td>90</td>
			<td>78</td>
		</tr>
		<tr>
			<td>박문수</td>
			<td>89</td>
			<td>90</td>
			<td>78</td>
		</tr>
			
	</table>
</body>
</html>