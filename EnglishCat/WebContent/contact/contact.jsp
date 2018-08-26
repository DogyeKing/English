<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<head>
<title>Contact</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Unicat project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/styles/bootstrap4/bootstrap.min.css">
<link href="<%=request.getContextPath()%>/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/styles/contact.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/styles/contact_responsive.css">

<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
</head>
<body>

<div class="super_container">

<jsp:include page="/include/header.jsp"></jsp:include>
	<script>
		$( '.nav-contact' ).addClass('active');
	</script>
	<!-- Home -->

	<div class="home">
		<div class="breadcrumbs_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="breadcrumbs">
							<ul>
								<li><a href="index.jsp">Home</a></li>
								<li>Contact</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>			
	</div>

	<!-- Contact -->

	<div class="contact">
		
		<!-- Contact Map -->

		<div class="contact_map">

			<!-- Google Map -->
			
			<div class="map">
				<div id="google_map" class="google_map">
					<div class="map_container">
						<div id="map"></div>
					</div>
				</div>
			</div>

		</div>

		<!-- Contact Info -->

		<div class="contact_info_container">
			<div class="container">
				<div class="row">


		<!-- http://www.englishssam.com/NWS/level_01.asp 참조-->
					<!-- Contact Form -->
					<div class="col-lg-6">
						<div class="contact_form">
							<div class="contact_info_title">무료체험수업</div>
							<form action="#" class="comment_form">
								<div>
									<div class="form_title">이름</div>
									<input type="text" class="comment_input" required="required">
								</div>
								<div>
								<div class="form_title">연락처</div>
									<input type="text" class="comment_input" required="required">
								</div>
								<div>
								<div class="form_title">이메일</div>
									<input type="text" class="comment_input" required="required">
								</div>
								<div>
								<div class="form_title">날짜</div>
									<input type="text" class="comment_input" required="required">
								</div>
								
								<div>
									<div class="form_title">시간</div>
									<input type="text" class="comment_input" required="required">
								</div>
								<div>
									<div class="form_title">수업시작 희망일 선택</div>
									<textarea class="comment_input comment_textarea" required="required"></textarea>
								</div>
								<div>
									<button type="submit" class="comment_button trans_200">무료체험수업 신청하기</button>
								</div>
							</form>
						</div>
					</div>

					<!-- Contact Info -->
					<div class="col-lg-6">
						<div class="contact_info">
							<div class="contact_info_title">Contact Info</div>
							<div class="contact_info_text">
								<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a distribution of letters.</p>
							</div>
							<div class="contact_info_location">
								<div class="contact_info_location_title">New York Office</div>
								<ul class="location_list">
									<li>T8/480 Collins St, Melbourne VIC 3000, New York</li>
									<li>1-234-567-89011</li>
									<li>info.deercreative@gmail.com</li>
								</ul>
							</div>
							<div class="contact_info_location">
								<div class="contact_info_location_title">Australia Office</div>
								<ul class="location_list">
									<li>Forrest Ray, 191-103 Integer Rd, Corona Australia</li>
									<li>1-234-567-89011</li>
									<li>info.deercreative@gmail.com</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Newsletter -->

	<div class="newsletter">
		<div class="newsletter_background" style="background-image:url(<%=request.getContextPath()%>/images/newsletter_background.jpg)"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="newsletter_container d-flex flex-lg-row flex-column align-items-center justify-content-start">

						<!-- Newsletter Content -->
						<div class="newsletter_content text-lg-left text-center">
							<div class="newsletter_title">sign up for news and offers</div>
							<div class="newsletter_subtitle">Subcribe to lastest smartphones news & great deals we offer</div>
						</div>

						<!-- Newsletter Form -->
						<div class="newsletter_form_container ml-lg-auto">
							<form action="#" id="newsletter_form" class="newsletter_form d-flex flex-row align-items-center justify-content-center">
								<input type="email" class="newsletter_input" placeholder="Your Email" required="required">
								<button type="submit" class="newsletter_button">subscribe</button>
							</form>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->

<jsp:include page="/include/footer.jsp"></jsp:include>
</div>

<script src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>
<script src="<%=request.getContextPath()%>/styles/bootstrap4/popper.js"></script>
<script src="<%=request.getContextPath()%>/styles/bootstrap4/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/plugins/easing/easing.js"></script>
<script src="<%=request.getContextPath()%>/plugins/parallax-js-master/parallax.min.js"></script>
<script src="<%=request.getContextPath()%>/https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="<%=request.getContextPath()%>/plugins/marker_with_label/marker_with_label.js"></script>
<script src="<%=request.getContextPath()%>/js/contact.js"></script>
</body>
