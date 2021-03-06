<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    

	<!-- Header -->

	<header class="header">
			
		<!-- Top Bar -->
		<div class="top_bar">
			<div class="top_bar_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="top_bar_content d-flex flex-row align-items-center justify-content-start">
								<ul class="top_bar_contact_list">
									<li><div class="question">Have any questions?</div></li>
									<li>
										<i class="fa fa-phone" aria-hidden="true"></i>
										<div>051-753-5600</div>
									</li>
									<li>
										<i class="fa fa-envelope-o" aria-hidden="true"></i>
										<div>info.busanIT@gmail.com</div>
									</li>
								</ul>
								<div class="top_bar_login ml-auto">
									<div class="login_button"><a href="<%=request.getContextPath()%>/login/login.jsp">Register or Login</a></div>	
								</div>
								
								
							</div>
						</div>
					</div>
				</div>
			</div>				
		</div>

		<!-- Header Content -->
		<div class="header_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_content d-flex flex-row align-items-center justify-content-start">
							<div class="logo_container">
								<a href="#">
									<div class="logo_text">English<span>Cat</span></div>
								</a>
							</div>
							<nav class="main_nav_contaner ml-auto">
								<div class="main_nav_items">
									<ul class="main_nav">
										<li class="nav-home"><a class="dropdown" href="<%=request.getContextPath()%>/index.jsp">잉글리쉬캣</a></li>
										<li class="nav-about"><a href="<%=request.getContextPath()%>/about/about.jsp">수강안내</a></li>
										<li class="nav-contact"><a href="<%=request.getContextPath()%>/contact/contact.jsp">수강신청</a></li>
										<li class="nav-courses"><a href="<%=request.getContextPath()%>/course/courses.jsp">수업과정</a></li>
										<li class="nav-community"><a href="#">커뮤니티</a></li>
										<li class="nav-account"><a href="<%=request.getContextPath()%>/blog/blog.jsp">마이페이지</a></li>					
									</ul>
									<div class="dropdown-menu">
									    <div class="drop-item-wrap">
											<a class="dropdown-item" href="#">잉글리쉬캣?</a>
											<a class="dropdown-item" href="#"></a>
											<a class="dropdown-item" href="#"></a>
										</div>
										<div class="drop-item-wrap">
											<a class="dropdown-item" href="#">수강료안내</a>
											<a class="dropdown-item" href="#">Skype설치</a>
											<a class="dropdown-item" href="#">스카이프<br>화상영어장점</a>
											
										</div>
												<div class="drop-item-wrap">
											<a class="dropdown-item" href="#">주니어과정</a>
											<a class="dropdown-item" href="#">시니어과정</a>
											<a class="dropdown-item" href="#">교재안내</a>
											<a class="dropdown-item" href="#">강사소개</a>
										</div>
												<div class="drop-item-wrap">
											<a class="dropdown-item" href="#">공지사항</a>
											<a class="dropdown-item" href="#">FAQ</a>
											<a class="dropdown-item" href="#">자유게시판</a>
											<a class="dropdown-item" href="#">수강후기</a>
											<a class="dropdown-item" href="#">자주쓰이는표현</a>
										</div>
												<div class="drop-item-wrap">
											<a class="dropdown-item" href="#">회원정보</a>
											<a class="dropdown-item" href="#">로그아웃</a>
											<a class="dropdown-item" href="#">레벨테스트결과</a>
										</div>
												<div class="drop-item-wrap">
											<a class="dropdown-item" href="#">세글자</a>
											<a class="dropdown-item" href="#">네글자</a>
											<a class="dropdown-item" href="#">다섯글자</a>
										</div>
									</div>
								</div>
								
								<div class="search_button"><i class="fa fa-search" aria-hidden="true"></i></div>

								<!-- Hamburger -->

								<div class="shopping_cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></div>
								<div class="hamburger menu_mm">
									<i class="fa fa-bars menu_mm" aria-hidden="true"></i>
								</div>
							</nav>

						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Header Search Panel -->
		<div class="header_search_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_search_content d-flex flex-row align-items-center justify-content-end">
							<form action="#" class="header_search_form">
								<input type="search" class="search_input" placeholder="Search" required="required">
								<button class="header_search_button d-flex flex-column align-items-center justify-content-center">
									<i class="fa fa-search" aria-hidden="true"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>			
		</div>			
	</header>

	<!-- Menu -->

	<div class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
		<div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>
		<div class="search">
			<form action="#" class="header_search_form menu_mm">
				<input type="search" class="search_input menu_mm" placeholder="Search" required="required">
				<button class="header_search_button d-flex flex-column align-items-center justify-content-center menu_mm">
					<i class="fa fa-search menu_mm" aria-hidden="true"></i>
				</button>
			</form>
		</div>
		<nav class="menu_nav">
			<ul class="menu_mm">
				<li class="menu_mm"><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
				<li class="menu_mm"><a href="#">About</a></li>
				<li class="menu_mm"><a href="#">Courses</a></li>
				<li class="menu_mm"><a href="#">Blog</a></li>
				<li class="menu_mm"><a href="#">Page</a></li>
				<li class="menu_mm"><a href="<%=request.getContextPath()%>/contact.jsp">Contact</a></li>
				<li class="menu_mm"><a href="#">login</a></li>
			</ul>
		</nav>
	</div>
