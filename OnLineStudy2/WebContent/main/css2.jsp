<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
	���󼿷���
	�±�:����(ex> a:hover, p:active)
	li:nth-child(1) (2) (3)... => �޴�����
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
/*�����Ͱ� Ŭ���� ������ ��*/
p:active {
	color: red;
}
/*�����Ϳ� ��Ŀ���� ���� ���� ��*/
input:focus {
	background-color: blue;
}


/* table, dl, li => ������ �����ؼ� ã�� ���
	�±׸�:nth-child(1~x)
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
	<!-- ����Ʈ �̵�(��ũ �±�) -->
	<!-- 
		a: �ζ��� �Ӽ�
		
		div, ul, ol, h1~h6 	: ��� �Ӽ�    => �ٳ��� �� ���
		a, input, img 		: �ζ��� �Ӽ� => ���� ���
	 -->
	<a href="http://daum.net" style="display: block;">����</a>
	<a href="http://naver.net" style="display: block;">���̹�</a>
	<p>Ŭ���ϼ���</p>
	<input type=text size=15>
	<ul>
		<li>�ڹ�</li>
		<li>����Ŭ</li>
		<li>������</li>
		<li>MyBatis</li>
		<li>�ڹٽ�ũ��Ʈ</li>
		<li>Ajax</li>
		<li>React</li>
	</ul>
	<table border="1" bordercolor=black width=500>
		<tr>
			<th>�̸�</th>
			<th>����</th>
			<th>����</th>
			<th>����</th>
		</tr>
		<tr>
			<td>��û��</td>
			<td>89</td>
			<td>90</td>
			<td>78</td>
		</tr>
		<tr>
			<td>ȫ�浿</td>
			<td>89</td>
			<td>90</td>
			<td>78</td>
		</tr>
		<tr>
			<td>�ڹ���</td>
			<td>89</td>
			<td>90</td>
			<td>78</td>
		</tr>
			
	</table>
</body>
</html>