<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>

div > p {
	color:red;
	font-size: 35px;
}

div span p {
	color:blue;
	font-size: 35px;
}

a {
	/* ������, ������� ���� */
	text-decoration: none;
	color: black;
}

/* Ŭ���ϱ� ���� �������� ���콺�� �ø� ��� : ���� ������*/
a:hover {
	color:green;
}

img {
	/* ���� 0~1.0 */
	opacity: 1.0;
}

img:hover {
	opacity: 0.3;
}

</style>
</head>
<body>
	<center>
		<div>
			<p>Java</p>
			<p>JavaScript</p>
			<span><p>Oracle</p></span>
		</div>
		
		<a href="#">Hello1</a><br/>
		<a href="#">Hello2</a><br/>
		<img src="a.jpg" width="400" height="600">
		<img src="b.jpg" width="400" height="600">

	</center>
</body>
</html>