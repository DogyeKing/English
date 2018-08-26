<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
    
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
 <nav class="navbar navbar-default main-navigation" role="navigation" data-spy="affix" data-offset-top="50">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
							<div class="logo_container">
								<a href="#">
									<div class="logo_text">English<span>Cat</span></div>
								</a>
							</div>
							
            <!-- Brand End -->

            <!-- Collapse Navbar -->
            <div class="collapse navbar-collapse" id="navbar">
              <ul class="nav navbar-nav navbar-right">
                <li class="dropdown dropdown-toggle">
                  <a class="active" href="index.html" data-toggle="dropdown">Home <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a class="active" href="index.html">Home Page 1</a></li>    
                    <li><a href="index-1.html">Home Page 2</a></li>     
                  </ul>                        
                </li>
                <li class="dropdown dropdown-toggle">
                  <a href="#" data-toggle="dropdown">Courses <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="courses-list.html">Courses List</a></li>    
                    <li><a href="courses-grid.html">Courses Grid</a></li>  
                    <li><a href="courses-single.html">Single Course</a></li>   
                  </ul>                        
                </li>
                <li class="dropdown dropdown-toggle">
                  <a href="#" data-toggle="dropdown">Pages <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="about.html">About Page</a></li>                     
                    <li><a href="gallery.html">Image Gallery</a></li>
                    <li><a href="faq.html">FAQ</a></li>    
                    <li><a href="login.html">Login Page</a></li> 
                    <li><a href="single-teacher.html">Single Teacher</a></li> 
                    <li><a href="registration.html">Registration Form</a></li> 
                    <li><a href="contact.html">Contacts</a></li> 
                    <li><a href="404.html">404</a></li> 
                  </ul>                        
                </li>
                <li class="dropdown dropdown-toggle">
                  <a href="#" data-toggle="dropdown">Events <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="event-grid.html">Events Grid</a></li>                     
                    <li><a href="event.html">Single Event</a></li>
                  </ul>                        
                </li> 
                <li class="dropdown dropdown-toggle">
                  <a href="#" data-toggle="dropdown">Blog <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="blog.html">Blog - Right Sidebar</a></li>                     
                    <li><a href="blog-left-sidebar.html">Blog - Left Sidebar</a></li>
                    <li><a href="blog-full-width.html">Blog - Full Width</a></li>   
                    <li><a href="single-post.html">Blog Single Post</a></li>   
                  </ul>                        
                </li>              
              <!--   <li><a href="contact.html">Contact</a></li> -->
              </ul>
            </div>     

          </div>
      </nav>
      <!-- Navbar End -->

    </header>
    <!-- Header area wrapper End -->