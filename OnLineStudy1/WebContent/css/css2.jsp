<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style type="text/css">
/* CSS�� �ּ�ó�� */
/*
	����Ŭ ��� ��� : XML, JSON => JavaScript
*/
/* SELECTOR */
/* �±� */
h1{
	background-color: orange;
	/*���ڻ���*/
	color : white;
}

/*
	CSS�� �����ϴ� �±� �б�
	=> �Ӽ�
	=> ���� ����
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
		�±׸� ���� 
				1) ID => �ߺ��� ���� �±� (�Ѱ��� ������ �� ���)
					#id��
				2) Class => �ߺ��� �ִ� ��� (������ ������, ���̺�, input)
					.class��
				============ JavaScript, CSS�� ��� (������, �±�����)
				3) Name
				============ �ڹٿ��� ���۵� �����͸� ���� ���
	
	 -->
	 	<!-- ������ ����  id-->
		<h1 id="aaa">Java</h1>
		<h1 id="bbb">Oracle</h1>
		<h1 id="ccc">JSP</h1>
		<!-- ���ÿ� ���� class-->
		<h1 class="ddd">Spring</h1>
		<h1 class="ddd">Kotlin</h1>
	</center>
</body>
</html>