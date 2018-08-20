<%@page import="com.cos.dto.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cos.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="row"> <!-- 12개의 칼럼 -->
		<div class="col-lg-2"></div>
		<div class="col-lg-8">
			<table class="table table-striped" style="border:1px solid #dddddd">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>
				<%
					BoardDAO boardDAO = new BoardDAO();
					ArrayList<BoardVO> list = 
							boardDAO.getList(pageNum);
					for(BoardVO b : list){
				%>
					<tr>
						<td><%=b.getId()%></td>
						<td>
							<a href="/BBS/board/view.jsp?bdID=<%=b.getId()%>">
								<%=ReplaceHtml.getCode(b.getBdTitle()) %>
							</a>
						</td>
						<%-- <td><%=b.getMemID() %></td> --%>
						<td><%=b.getWritedate()%></td>
					</tr>
				<%
					}
				%>
				</tbody>
			</table>
		<%-- 	<%
				if(pageNum != 1){
			%> --%>
			<a class="btn btn-success" href="<%-- /BBS/board/board.jsp?pageNum=<%=pageNum-1%> --%>" style="margin:2px">이전</a>
			<%-- <%
				}
				if(boardDAO.nextPage(pageNum+1)){
			%> --%>
			<a class="btn btn-success" href="<%-- /BBS/board/board.jsp?pageNum=<%=pageNum+1%> --%>" style="margin:2px">다음</a>
	<%-- 		<%
				}
			%> --%>
			<a class="btn btn-primary float-right" href="/BBS/board/write.jsp" style="margin:2px">글쓰기</a>
		</div>
		<div class="col-lg-2"></div>
	</div>
</div>
</body>
</html>