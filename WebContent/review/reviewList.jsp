<%@page import="review.model.vo.Review"%>
<%@page import="travel.model.vo.Travel"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <!-- <title>Mentor Bootstrap Template - Index</title> -->
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Mentor - v2.1.0
  * Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <style>
   	section {
  		border : 1px solid white;
  	}
  	/*
  	#menu {
  		position : absolute;
  		margin-top : 50px;
  		margin-left : 50px;
  	}
  	#content {
  		padding-top : 150px;
  		padding-left : 50px;
  		height : 630px;
  		margin-left : 150px;
  	}
  	<!-- -->
  	#menu nav {
  		text-align : center;
  		padding-left : 0;
  		width : 100px;
  		list-style : none;
  		background-color : lightgray;
  	}
  	#menu li:first-child{
  		color : white;
  		background-color : blue;
  	} */
  	#wrap {
  		margin-top : 20px;
  	}
  	#nav-menu {
  		
  	}
  	#left {
  		margin-top :50px;
  		padding-top : 0px;
  		border-radius : 1.1em;
  	}
  	#nav-menu ul {
  		list-style: none; padding-left: 0px; text-align: center; float: left; width:100%;
  		background-color : #FAFAFA;border-radius : 1.1em;
	}
  	#nav-menu a {
  		color : black;
  	}
  	#nav-menu ul li:first-child {
  		color : white;
  		background : #a3d4f7;
  		padding-top : 4px;
  		height : 30px;
  	}
  	#nav-menu ul li {
  		padding-top : 4px;
  		height : 30px;
  	}
  	#nav-menu li:hover a{
  		color : #a3d4f7;
  	}
  	.table-hover tbody tr:hover td {
  		background-color : #a3d4f7;
  		color : white;
  	}
  	.table-hover tbody tr:last-child:hover td {
  		background-color : white;
  	}
  	.main {
  		padding-top : 30px;
  	}
  	.table tbody>tr {
  		height : 30px;
  	}
  </style>
</head>
<body>
 		<header>
		<header id="header" class="fixed-top">
         <div class="container d-flex align-items-center">

            <h1 class="logo mr-auto">
               <a href="/index.jsp">GUNDUEN</a>
            </h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
            <nav class="nav-menu d-none d-lg-block">
               <ul>
                  <li><a href="/index.jsp">Home</a></li>
                  <li><a href="/notice/list">Notice</a></li>
                  <li><a href="/driver/autoMyinfo?area=??????">Driver</a></li>
                  <li><a href="/qna/list">Q&A</a></li>
                  <li class="active"><a href="/review/list?reviewArea=??????">Review</a></li>
                  <li></li>
               </ul>
            </nav><!-- .nav-menu -->
            
            <!-- admin ???????????? header -->
            <c:if
            test="${sessionScope.customer.adminCheck == 1 }">
            <a href="/admin/driverList" class="get-started-btn">???????????????</a>
            <a href="/member/logout" class="logout-btn" onclick="return warning();">????????????</a>
                <script>
                   function warning(){
                      var question = confirm('?????? ????????????????????????????');
                      if(question){
                         return true;
                      }else{
                      return false;
                      }
                   }
                </script>
                &nbsp;&nbsp; <img src="../assets/img/happy.png" style="height: 40px">
         </c:if>
         
         <!-- ??????/?????? ???????????? header -->
         <c:if
            test="${sessionScope.customer.adminCheck < 1 }">
            <a href="/mypage/travel?customerId=${sessionScope.customer.customer_Id }" class="get-started-btn">???????????????</a>
            <a href="/member/logout" class="logout-btn" onclick="return warning();">????????????</a>
                <script>
                   function warning(){
                      var question = confirm('?????? ????????????????????????????');
                      if(question){
                         return true;
                      }else{
                      return false;
                      }
                   }
                </script>
                &nbsp;&nbsp; <img src="../assets/img/happy.png" style="height: 40px">
         </c:if>
            
            <c:if test="${sessionScope.driver ne null}">
               <a href="/DriverTravel/List?driverId=${sessionScope.driver.driverId }" class="get-started-btn">???????????????</a>
            <a href="/member/logout" class="logout-btn" onclick="return warning();">????????????</a>
                <script>
                   function warning(){
                      var question = confirm('?????? ????????????????????????????');
                      if(question){
                         return true;
                      }else{
                      return false;
                      }
                   }
                </script>
            </c:if>
         <c:if test="${sessionScope.driver eq null && sessionScope.customer eq null}">
            <a href="/login/Customerlogin.jsp" class="get-started-btn">???????????????</a>
            <a href="/login/DriverLogin.jsp" class="get-started-btn">???????????????</a>
            &nbsp;&nbsp; <img src="../assets/img/smile.png" style="height: 40px">
         </c:if>
      </div>
   </header>
   <!-- End Header -->

	<!-- ======= main ========= -->
	<section id="wrap" class="container-fluid" style="padding-left:80px; padding-right:80px;">
		<section class="main" class="row">
			<%-- <c:if  test="${ sessionScope.review ne null}"> --%>
			<section id="left" class="col-sm-auto"
				style="width: 100px; border: 1px solid white; float: left; padding-left:0px; padding-right:0px; padding-bottom:0px;">
				<nav id="nav-menu">
					<ul id="navi">
						<li>??????</li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
						<li><a href="/review/list?reviewArea=??????">??????</a></li>
					</ul>
				</nav>
			</section>
			<section id="right"
				style="margin: border: 1px solid white; height: 650px; text-align:center; padding-left : 10px;padding-top : 25px;">
				<div id="title" style="font-family: 'Do Hyeon', sans-serif; font-size:1.7em;">?????? ?????????</div>
				<c:if test="${fn:length(RList) == 0 }">
					<div style="padding-top:100px; color : #A4A4A4;'">?????? ???????????? ???????????? ????????????.</div>
				</c:if>
				<c:if test="${fn:length(RList) > 0}">
				<br>
					<table class="table table-hover"
						style="text-align: center; width: 90%; margin:0 auto; font-size:0.9em;">
						<thead>
							<th>?????????</th>
							<th>?????????</th>
							<th>??????</th>
							<th>??????</th>
						</thead>
						<tbody>
							<c:forEach items="${ RList }" var="review">
								<tr onclick="selnumFunc(${review.reviewNo});">
									<td>${review.customerId }</td>
									<td>${review.reviewSubject }</td>
									<td>${review.reviewArea }</td>
									<td>${review.reviewDate }</td>
								</tr>
								<script>
						 function selnumFunc(num) {
							 location.href="/review/select?reviewNo="+ num;
						 }
						</script>
							</c:forEach>
						</tbody>
						
					</table>
					<tr>
							<td colspan="4" align="center">${ reviewpageNavi }
						</tr>
				</c:if>
			</section>
			<section id="button" style="padding: 0px; float: right;">
				<!-- ????????? ??????  -->
				<c:if test="${fn:length(rTravel) == 0 }">
					<div></div>
				</c:if>
				<c:if test="${fn:length(rTravel) > 0}">
					<!-- https://okky.kr/article/187911 -->
					<c:if
						test="${ sessionScope.customer ne null || ( sessionScope.driver ne null)}">
						<!-- <button type="button" id="btn1"
							onclick="location.href='/review/form'">?????????</button> -->
						<a href="/review/form" class="get-started-btn">?????????</a>
					</c:if>
				</c:if>
			</section>
		</section>
	</section>
	<!-- End Main -->
	
	
	<!-- footer -->
    <%@include file="../include/includeFooter.jsp" %>
   
   <div id="preloader"></div>
</body></html>
