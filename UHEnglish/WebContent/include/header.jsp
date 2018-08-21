<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



    <div class="top-bar">
        <ul>
            <li>
                <a href="#">로그인</a>
            </li>
            <li>
                <a href="#">회원가입 롤백 어떻게 하냐</a>
            </li>
        </ul>
    </div>

	  <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-warning fixed-top">
      <div class="container">
        <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">UM ENGLISH</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
               <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                엄잉글리쉬
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="portfolio-1-col.html">인사말</a>
                <a class="dropdown-item" href="portfolio-2-col.html">고객님께</a>
                <a class="dropdown-item" href="portfolio-3-col.html">선생님들 이야기</a>
                <a class="dropdown-item" href="portfolio-4-col.html">엄잉글리쉬 무료 수강하기</a>
              </div>
            </li>
               <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                스카이프영어
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="portfolio-1-col.html">스카이프 장점</a>
                <a class="dropdown-item" href="portfolio-2-col.html">스카이프 다운로드</a>

              </div>
            </li>
               <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                수강안내
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="portfolio-1-col.html">수강료</a>
                <a class="dropdown-item" href="portfolio-2-col.html">수강절차</a>
                <a class="dropdown-item" href="portfolio-3-col.html">결제안내</a>
                <a class="dropdown-item" href="portfolio-4-col.html">선생님 소개</a>

              </div>
            </li>
            <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                교재안내
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="portfolio-1-col.html">교재소개</a>
                <a class="dropdown-item" href="portfolio-2-col.html">유용한 표현</a>

              </div>
            </li>
            <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                커뮤니티
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="<%=request.getContextPath()%>/board/boardList.jsp">공지사항</a>
                <a class="dropdown-item" href="blog-home-2.html">무료 레벨테스트</a>
                <a class="dropdown-item" href="blog-post.html">FAQ</a>
                <a class="dropdown-item" href="blog-home-1.html">Q%A</a>
                <a class="dropdown-item" href="blog-home-2.html">수강후기</a>
                <a class="dropdown-item" href="blog-post.html">교정서비스</a>
                <a class="dropdown-item" href="blog-post.html">장학금 게임</a>
              </div>
            </li>
             <li class="nav-item">
              <a class="nav-link active" href="about.html">마이페이지
              </a>
            
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
    
