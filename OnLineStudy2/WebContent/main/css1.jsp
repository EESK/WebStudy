<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
	1)프로젝트 생성
		=Java Resources => JRE System Library => JDK 변경
		=

 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- 내부 CSS -->
<style type="text/css">
/*
	div#aaa
	#aaa
	
	css 에서 margin 과 padding 속성은 border 를 기준으로 각각 바깥쪽 여백, 안쪽 여백을 의미한다.
*/
#aaa{
	width: 300px;
	height: 300px;
	
	/*
		padding : (top) (left) (bottom) (right)
		padding : 20px
				  20px  (20px)  (20px)  (20px)
		padding : 50px 20px
				  50px 20px (50px) (20px)
		padding : 50px 20px 30px (20px)
	*/
	padding : 20px;
	border: 1px solid red;
	margin: 50px;
	
	/* 글자관련
		font-size : 글자크기
		font-weight : bold
		font-family : 글꼴 ==> 외부에서 불러서 사용 (google)
		
		사이트가 정갈하게 나오려면 : 같은 글꼴을 사용
	
	*/
	font-size: 12pt; /*폰트의 기본 : 10pt */
	font-weight: bold;
	font-family: 맑은 고딕;
}

</style>
</head>
<body>
	<!-- 화면분할 -->
	<!-- 같은 태그명을 구분할 때 : id(한개만 이용), class(같은 태그가 여러개를 통시에 제어) -->
	<div id="aaa">CSS (Box-model):내부 CSS</div><%-- display : block --%>
	<%-- 인라인 --%>
	<%--
		순서(지원, 우선순위)
		3. 외부 CSS
		2. 내부 CSS
		1. 인라인
			==>bootstrap
	 --%>
	 <!-- 
		solid
		dashed
		dotted
	  -->
	<div style="border: 5px solid green;width: 100px;height: 100px"></div>
	<div style="border: 5px dashed green;width: 100px;height: 100px"></div>
	<div style="border: 5px dotted green;width: 100px;height: 100px"></div>
	
	<div style="border: 5px ridge green;width: 100px;height: 100px"></div>
	<div style="border: 5px outset green;width: 100px;height: 100px"></div>
	<div style="border: 5px groove green;width: 100px;height: 100px"></div>
	
</body>
</html>