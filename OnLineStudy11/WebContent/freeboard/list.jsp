<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.dao.*"%>
<%-- 목록 출력 : list.jsp : board폴더 --%>
<!-- 데이터를 읽어 온다 (1page)있는 게시물  -->
<%

     String strPage=request.getParameter("page");
     if(strPage==null) 
    	 strPage="1";
     int curpage=Integer.parseInt(strPage);

     
     int rowSize=10;
     int start=(curpage*rowSize)-(rowSize-1);
     int end=curpage*rowSize;
   
     Map map=new HashMap();
     map.put("start",start);
     map.put("end",end);
     
     //List<BoardVO> list=BoardDAO.boardList(map);

     int totalpage=0;

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function send()
{
	var f=document.frm;
	// 반드시 입력을 할 수 있게 만든다 
	if(f.ss.value=="")
	{
		f.ss.focus();
		return;
	}
	f.submit();
}
</script>
</head>
<body>
   <div class="row">
     <h1 class="text-center">자료실</h1>
     <table class="table">
       <tr>
         <td>
           <a href="main.jsp?mode=2" class="btn btn-sm btn-success">새글</a>
           <%-- 메뉴 , 로그인 , footer 고정 => main.jsp --%>
         </td>
       </tr>
     </table>
     <table class="table table-striped">
       <tr class="warning">
         <th class="text-center" width=10%>번호</th>
         <th class="text-center" width=45%>제목</th>
         <th class="text-center" width=15%>이름</th>
         <th class="text-center" width=20%>작성일</th>
         <th class="text-center" width=10%>조회수</th>
       </tr>
       <%
           for(BoardVO vo:list)
           {
       %>
               <tr>
		         <td class="text-center" width=10%><%=vo.getNo() %></td>
		         <td width=45%>
		          <a href="../main/main.jsp?mode=3&no=<%=vo.getNo()%>"><%=vo.getSubject() %></a>
		         </td>
		         <td class="text-center" width=15%><%=vo.getName() %></td>
		         <td class="text-center" width=20%><%=vo.getDbday() %></td>
		         <td class="text-center" width=10%><%=vo.getHit() %></td>
		       </tr>
       <%
           }
       %>
     </table>
     <table class="table">
       <tr>
         <td class="text-left">
          <form method="post" action="../main/main.jsp" name=frm>
	          Search:
	          <select name="fd" class="input-sm">
	            <option value="name">이름</option>
	            <option value="subject">제목</option>
	            <option value="content">내용</option>
	          </select>
	          <%-- 검색어 입력 --%>
	          <input type=text name=ss class="input-sm">
	          <input type=hidden name=mode value=4>
	          <%-- 검색버튼 --%>
	          <input type=button value=검색 class="btn btn-sm btn-danger"
	            onclick="send()"
	          >
          </form>
         </td>
         <td class="text-right">
          <a href="#" class="btn btn-sm btn-primary">이전</a>
           <%=curpage %> page / <%=totalpage %> pages
          <a href="#" class="btn btn-sm btn-primary">다음</a>
         </td>
       </tr>
     </table>
   </div>
</body>
</html>