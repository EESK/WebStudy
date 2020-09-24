<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
	1)������Ʈ ����
		=Java Resources => JRE System Library => JDK ����
		=

 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- ���� CSS -->
<style type="text/css">
/*
	div#aaa
	#aaa
	
	css ���� margin �� padding �Ӽ��� border �� �������� ���� �ٱ��� ����, ���� ������ �ǹ��Ѵ�.
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
	
	/* ���ڰ���
		font-size : ����ũ��
		font-weight : bold
		font-family : �۲� ==> �ܺο��� �ҷ��� ��� (google)
		
		����Ʈ�� �����ϰ� �������� : ���� �۲��� ���
	
	*/
	font-size: 12pt; /*��Ʈ�� �⺻ : 10pt */
	font-weight: bold;
	font-family: ���� ���;
}

</style>
</head>
<body>
	<!-- ȭ����� -->
	<!-- ���� �±׸��� ������ �� : id(�Ѱ��� �̿�), class(���� �±װ� �������� ��ÿ� ����) -->
	<div id="aaa">CSS (Box-model):���� CSS</div><%-- display : block --%>
	<%-- �ζ��� --%>
	<%--
		����(����, �켱����)
		3. �ܺ� CSS
		2. ���� CSS
		1. �ζ���
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