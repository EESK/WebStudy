<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
/* #bbb 라고해도 됨 */
span#bbb h1{
	background-color: green;
}
#ccc h1{
	background-color: orange;
}
#aaa{
	background-color: blue;
}
</style>

<script type="text/javascript" 
src="http://code.jquery.com/jquery.js">
</script>

<script type="text/javascript">
$(function() {
	$('#ccc h1').click(function() {
		alert("id:ccc를 클릭")
	})
})

$(function() {
	$('#ccc h1').hover(function() {
		$('#bbb h1').css("color","green");
	}, function() {
		$('#bbb h1').css("color","blue");
	}
	})
})

</script>

</head>
<body>
<center>
	<h1 id="aaa">Java</h1>
	<span id="bbb">
		<h1>Oracle</h1>
		<h1>JSP</h1>
	</span>
	<span id="ccc">
		<h1>Spring</h1>
	</span>
</center>
</body>
</html>