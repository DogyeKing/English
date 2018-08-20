<%@page import="com.cos.dto.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cos.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%-- <c:if test="${empty list}"> <!-- empty는 null의 의미이다. -->
   <%
      RequestDispatcher dis = request.getRequestDispatcher("board?cmd=board_list");
      dis.forward(request, response);
   %>
</c:if>
 --%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/custom.css">


<title>Insert title here</title>
</head>
<body>
<form name="w_form" method="POST" action="<%=request.getContextPath()%>/board?cmd=board_list" >
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
						<th>조회</th>
					</tr>
				</thead>
				
				<tbody>

				<c:forEach var="item" items="${list}">
					<tr>
						<td>${board.num}</td>
						<td>${board.title}</td>
						<td>${board.id}</td>
						<td>${board.writedate}</td>
						<td>${board.readCount}</td>
					</tr>
				</c:forEach>		
				</tbody>
			</table>

			<a class="btn btn-success" href="/BBS/board/board.jsp?pageNum=" style="margin:2px">이전</a>

			<a class="btn btn-success" href="/BBS/board/board.jsp?pageNum=" style="margin:2px">다음</a>

			<a class="btn btn-primary float-right" href="<%=request.getContextPath()%>/board/writeForm.jsp" style="margin:2px">글쓰기</a>
		</div>
		<div class="col-lg-2"></div>
	</div>
</div>
</form>
</html>