<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- 
	1. 간격
		margin, padding
	2. 정렬
		text-align: left, right, center
	3. \n, \n 없는경우
		display:block, display:inline
	4. font 관련
		font-size
		font-family
		font-weight
	5. 색상
		color 
		background-color
	6. 넓이 
		width
	7. 크기
		height
		
	=> text 관련
		=> 웹사이트 => 문자열
		1) 글자 색상 : color
			color:red
			color:RGB(255,255,255)
			color:RGBA()
		2)text-decoration:none, underline
		***3)text-align:left,center,right
		4)text-shadow:none 가로거리 세로거리 번짐정도 색상
		5)text-transform : 대문자변환, 소문자변환
		***6)white-space : 내용보기, 댓글
			 	white-space : normal|nowrap|pre(줄바꿈이 없다)|pre-line|pre-wrap(자동 줄바꿈)
			 	===> fixed 고정
	
	=> img 
	
	=> div
	
	=> sapn
	
	=> 애니메이션
	
	=> CSS3
		= 브라우져마다 속성명이 다르다
 -->
 <style type="text/css">
h1{
 	color:rgb(0,200,0);
}
h2{
	color: blue;
}
h3{
	text-decoration: underline; 
	/*a태그는 기본이 underline*/
}

.t{
	text-transform: uppercase; /*대문자*/
}
.t1{
	text-transform: capitalize; /*INITCAP 앞자만대문자*/
}
.t2{
	text-transform: lowercase; /*소문자*/
}

#h1{
	color: orange;
}
#h2{
	text-shadow: 5px 5px 3px #f00;
}
#h3{
	color: #FFF; /*흰색*/
	text-shadow: 7px -7px 5px #000;
}


 </style>
</head>
<body>
<h1>만개의레시피</h1>
<h2>블루라는색상</h2>
<h3>언더라인이라는것</h3>
<ul>
	<li class="t">java</li>
	<li class="t">oracle</li>
	<li class="t1">spring</li>
	<li class="t2">MYBATIS</li>
</ul>
<h1 id="h1">HTML&CSS</h1>
<h1 id="h2">HTML&CSS</h1>
<h1 id="h3">HTML&CSS</h1>

<table border=1 bordercolor=black width=100>
	<tr>
		<td>
		<pre style="white-space : pre-wrap">
		dasdadasasdasdsssddssdasdasdasddsaaszzzzzzzzzzzzzzzzzzzzzzzzdasddsa
		asdsasd
		</pre>
		</td>
	</tr>
</table>
</body>
</html>