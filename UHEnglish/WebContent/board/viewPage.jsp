<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Cos Blog</title>
<!-- Bootstrap core CSS -->
<link href="<%=request.getContextPath()%>/css/bootstrap.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/css/blog-home.css" rel="stylesheet">
<!-- Bootstrap core JavaScript -->
<%-- <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.bundle.min.js"></script> --%>
</head>

<body>
   <!-- Navigation -->
   <jsp:include page="/include/header.jsp" />

   <!-- Page Content -->
   <div class="container">
      <div class="row">

         <div class="col-md-12">
            <div class="card mb-4">
               <!--<img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap"> -->
               <!-- Post Content Column -->
               <div class="card-body main">
                  <!-- Title -->
                  <h1 class="mt-4">${board.title}</h1>
                  <!-- Author -->
                  <p class="lead">
                     by <a href="#">${board.id}</a>
                  </p>
                  <hr>
                  <c:if test="${board.id eq sessionScope.id}">
                     <a class="btn btn-warning" href="<%=request.getContextPath()%>/board?cmd=board_update&num=${board.num}">수정</a>
                     <a class="btn btn-danger" href="<%=request.getContextPath()%>/board?cmd=board_delete&num=${board.num}">삭제</a>
                     <hr>
                  </c:if>
                  <!-- Date/Time -->
                  <p>Posted on ${board.writedate}</p>
                  <hr>
                  <!-- Post Content -->
                  <div id="viewContent">${board.content}</div>
                  <hr>
                  <!-- Comments Form -->
                  <div class="card my-4">
                     <h5 class="card-header">Leave a Comment:</h5>
                     <div class="card-body">
                        <div class="form-group">
                           <textarea class="form-control" id="replyData" rows="3"></textarea>
                        </div>
                        <c:choose>
                           <c:when test="${empty sessionScope.id}">
                              <input type="button" class="btn btn-primary" onclick="alert('로그인 후 이용가능합니다.')" value="Submit">
                           </c:when>
                           <c:otherwise>
                              <input type="button" class="btn btn-primary" onclick="#" value="Submit">
                           </c:otherwise>
                        </c:choose>

                     </div>
                  </div>

                  <div id="reply">
                     <!-- Comment  -->
                        <div class="media mb-4">
                           <img class="d-flex mr-3 rounded-circle" src="<%=request.getContextPath()%>/img/reply.png">
                           <div class="media-body">
                              <h5 class="mt-0">ssar</h5>
                              0
                           </div>
                        </div>
                  </div>

               </div>
            </div>
         </div>
      </div>
      <!-- /.row -->

   </div>
   <!-- /.container -->
</body>
</html>