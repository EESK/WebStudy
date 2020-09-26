<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="row">
    <h1 class="text-center">글쓰기</h1>
    <!-- 파일 업로드 : 프로토콜 (post)
    	 enctype="multipart/form-data" => 업로드시만 사용
    	 multipart/form-data : 파일 업로드 약속사항
    	  
    	  프로토콜
    	 http : 80
    	 ftp  : 21
    	 smtp : 25
     -->
    <form method="post" action="../board/insert_ok.jsp" enctype="multipart/form-data"> <!-- include 하면 insert가 main에 첨부되어있기 때문에  경로가 insert_ok 가아니라 ../board/ 이다-->
    <table class="table table-hover">
      <tr>
        <th class="danger text-right" width=15%>이름</th>
        <td width=85%>
          <input type=text name=name size=15 class="input-sm">
      </tr>
      <tr>
        <th class="danger text-right" width=15%>제목</th>
        <td width=85%>
          <input type=text name=subject size=45 class="input-sm">
      </tr>
      <tr>
      	<th class="danger text-right" width=15%>내용</th>
        <td width=85%>
         <textarea rows="10" cols="50" name="content"></textarea>
      </tr>
      <tr>
        <th class="danger text-right" width=15%>첨부파일</th>
        <td width=85%>
          <input type=file name=upload size=20 class="input-sm">
      </tr>
      <tr>
        <th class="danger text-right" width=15%>비밀번호</th>
        <td width=85%>
          <input type="password" name=pwd size=10 class="input-sm">
      </tr>
      <tr>
        <td colspan="2" class="text-center">
          <input type="submit" value="글쓰기" class="btn btn-sm btn-primary">
          <input type="button" value="취소" class="btn btn-sm btn-primary" onclick = "javascript:history.back()"
          >
      </tr>
    </table>
    </form>
  </div>
</body>
</html>