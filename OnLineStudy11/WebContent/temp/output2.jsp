<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.temp.*"%>
<%
	//한글변환
	request.setCharacterEncoding("UTF-8");
%>
<!-- 
	//사용자가 보내준 데이터 받기
	// 한글 => 변환
	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name");
	String sex=request.getParameter("sex");
	String age=request.getParameter("age");
	String addr=request.getParameter("addr");
	String tel=request.getParameter("tel");

	//한개의 클래스 묶어서 관리
	MemberBean bean=new MemberBean();
	bean.setName(name);
	bean.setSex(sex);
	bean.setAge(Integer.parseInt(age));
	bean.setAddr(addr);
	bean.setTel(tel);
	// DAO => 묶은 값을 전송
	
	↑ 위 내용이 ↓ 아래 3줄로 요약됨
 -->



<!-- <jsp:useBean> : 메모리할당 -->
<jsp:useBean id="bean" class=com.sist.temp.MemberBean>

	<!-- setProperty ==> 자동으로 setter에 값을 채워주는 역할 (JSP태그) -->
	<!-- name="bean" 은 클래스 		 property="*"은 *에 name, sex 등등 -->
	<jsp:setProperty name="bean" property="*"/>
	<!-- 
		request.getParameter("name"); 자동 
		bean.setName(name);
		
		bean.setName(request.getParameter("name"));
	-->
</jsp:useBean>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 묶여 있는 데이터 전송 -->
	<h1> JSP 태그로 받기</h1>
	이름 : <%= bean.getName() %> <br>
	성별 : <%= bean.getSex() %> <br>
	나이 : <%= bean.getAge() %> <br>
	주소 : <%= bean.getAddr() %> <br>
	전화 : <%= bean.getTel() %> <br>
</body>
</html>