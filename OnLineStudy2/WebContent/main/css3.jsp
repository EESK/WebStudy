<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, com.sist.dao.*"%>
<%
	//���� => ����� �����͸� �о�´�
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
	/* center ������� �ʰ� margin�� �̿��ؼ� ��� ���� */
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
	font-family: ���� ����;
}

#sawon tr:nth-child(2n) {
	background-color: rgb(255,255,180);
}
</style>
</head>
<body>
	<div id="wrap">
		<div class="row">
			<h1>��� ���</h1>
			<table id="sawon" width=500>
			<tr>
				<th>���</th>
				<th>�̸�</th>
				<th>����</th>
				<th>�Ի���</th>
				<th>�޿�</th>
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