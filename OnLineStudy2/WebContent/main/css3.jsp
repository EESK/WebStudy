<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, com.sist.dao.*"%>
<%
	//시작 => 출력할 데이터를 읽어온다
	EmpDAO dao=new EmpDAO();
	ArrayList<EmpVO> list=dao.empListData();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">

#wrap{
	width: 900px;
	border: 1px solid red;
	height: 700px;
}
.row{
	width: 700px;
	/* center 사용하지 않고 margin을 이용해서 가운데 정렬 */
	margin: 0px auto;
}

h1{
	text-align: center;
}

#sawon{
	border:1px solid black;
	width: 600px;
	border-collapse: collapse;
}

#sawon tr:nth-child(1) {
	background-color: orange;
	color:white;
}

#sawon td{
	text-align: center;
	font-family: 맑은 고딕;
}

#sawon tr:nth-child(2n) {
	background-color: rgb(255,255,180);
}
</style>
</head>
<body>
	<div id="wrap">
		<div class="row">
			<h1>사원 목록</h1>
			<table id="sawon" width=500>
			<tr>
				<th>사번</th>
				<th>이름</th>
				<th>직위</th>
				<th>입사일</th>
				<th>급여</th>
			</tr>
			<%
				for(EmpVO vo:list)
				{
			%>
			<tr>
				<td><%=vo.getEmpno() %></td>
				<td><%=vo.getEname() %></td>
				<td><%=vo.getJob() %></td>
				<td><%=vo.getHiredate() %></td>
				<td><%=vo.getSal() %></td>
			</tr>
			<%
				}
			%>
			
			</table>
		</div>
	</div>

</body>
</html>