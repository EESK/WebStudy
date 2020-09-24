<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, com.sist.dao.*"%>
<%
	//DAO를 연결해서 데이터를 가지고 온다
	EmpDAO dao=new EmpDAO();
	ArrayList<EmpVO> list=dao.empListData();
	// 오라클에서 데이터를 읽어온다
	// 가지고 온 데이터를 화면에 츨력 => HTML (약간의 화면 디자인 => CSS)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>
	<center>
		<h1 id="sawon_list">사원 목록</h1>
		<table id="sawon_table">
			<tr id="table_header">
				<th>사번</th>
				<th>이름</th>
				<th>직위</th>
				<th>입사일</th>
				<th>급여</th>
			</tr>
			<%-- 출력위치 --%>
			<%
				for(EmpVO vo:list)
				{
			%>
			<tr>
				<td class="td1"><%=vo.getEmpno() %></td>
				<td class="td1"><%=vo.getEname() %></td>
				<td class="td1"><%=vo.getJob() %></td>
				<td class="td1"><%=vo.getHiredate() %></td>
				<td class="td1"><%=vo.getSal() %></td>
			</tr>
			<%
				}
			%>
		</table>
	</center>
</body>
</html>