<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <!-- <title>Mentor Bootstrap Template - Index</title> -->
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="../assets/img/favicon.png" rel="icon">
  <link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
  <!-- Vendor CSS Files -->
  <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="../assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="../assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="../assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../assets/css/style.css" rel="stylesheet">
  
   <!-- Vendor JS Files -->
   <script src="../assets/vendor/jquery/jquery.min.js"></script>
   <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   <script src="../assets/vendor/jquery.easing/jquery.easing.min.js"></script>
   <script src="../assets/vendor/php-email-form/validate.js"></script>
   <script src="../assets/vendor/waypoints/jquery.waypoints.min.js"></script>
   <script src="../assets/vendor/counterup/counterup.min.js"></script>
   <script src="../assets/vendor/owl.carousel/owl.carousel.min.js"></script>
   <script src="../assets/vendor/aos/aos.js"></script>
   
   <!-- Template Main JS File -->
   <script src="../assets/js/main.js"></script>
   
    <title>????????? - ???????????? ????????????</title>
    <style>
        #notice {
            font-size: 30px;
            margin: 0 auto;
            text-align: center;
            margin-bottom: 15px;
        }
        #top {
            height: 30px;
            width: 900px;
            text-align: center;
            margin: 0 auto;
        }
        .topside {
            text-align: center;
            
            float: left;
        }
        textarea {
            border: 1px solid black;
        }
        .btn {
            font-size: 20px;
            margin-top: 30px;
        }
        #bottom {
            text-align: center;
        }
        div.stop-dragging
        {
          -ms-user-select: none; 
          -moz-user-select: -moz-none;
          -khtml-user-select: none;
          -webkit-user-select: none;
          user-select: none;
        }
    </style>
</head>
    <body>
        
        <header id="header" class="fixed-top">
		<div class="container d-flex align-items-center">

			<h1 class="logo mr-auto">
				<a href="../index.jsp">GUNDUEN</a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
			<nav class="nav-menu d-none d-lg-block">
				<ul>
					<li><a href="../index.jsp">Home</a></li>
					<li class="active"><a href="/notice/list">Notice</a></li>
					<li><a href="/driver/autoMyinfo?area=??????">Driver</a></li>
					<li><a href="/qna/list">Q&A</a></li>
					<li><a href="/review/list?reviewArea=??????">Review</a></li>
					<li></li>
				</ul>
			</nav>
			<!-- .nav-menu -->

			<!-- admin ???????????? header -->
			<c:if test="${sessionScope.customer.adminCheck == 1 }">
				<a href="/admin/driverList" class="get-started-btn">???????????????</a>
				<a href="/member/logout" class="logout-btn"
					onclick="return warning();">????????????</a>
				<script>
					function warning() {
						var question = confirm('?????? ????????????????????????????');
						if (question) {
							return true;
						} else {
							return false;
						}
					}
				</script>
				&nbsp;&nbsp; <img src="../assets/img/happy.png" style="height: 40px">
			</c:if>

			<!-- ??????/?????? ???????????? header -->
			<c:if test="${sessionScope.customer.adminCheck < 1 }">
				<a href="/myPage/CustomerMyPage.jsp" class="get-started-btn">???????????????</a>
				<a href="/member/logout" class="logout-btn" onclick="return warning();">????????????</a>
				<script>
					function warning() {
						var question = confirm('?????? ????????????????????????????');
						if (question) {
							return true;
						} else {
							return false;
						}
					}
				</script>
				&nbsp;&nbsp; <img src="../assets/img/happy.png" style="height: 40px">
			</c:if>

			<c:if test="${sessionScope.driver ne null}">
				<a href="/myPage/DriverMyPage.jsp" class="get-started-btn">???????????????</a>
				<a href="/member/logout" class="logout-btn"
					onclick="return warning();">????????????</a>
				<script>
					function warning() {
						var question = confirm('?????? ????????????????????????????');
						if (question) {
							return true;
						} else {
							return false;
						}
					}
				</script>
				&nbsp;&nbsp; <img src="../assets/img/happy.png" style="height: 40px">
			</c:if>
			<c:if test="${sessionScope.driver eq null && sessionScope.customer eq null}">
				<a href="/login/Customerlogin.jsp" class="get-started-btn">???????????????</a>
				<a href="/login/DriverLogin.jsp" class="get-started-btn">???????????????</a>
				&nbsp;&nbsp; <img src="../assets/img/smile.png" style="height: 40px">
			</c:if>

		</div>
	</header>
	<!-- End Header -->
      
        <br><br><br>
        <section>
            <article style="text-align:center;"><h1 onClick="location.href='/notice/list'" style="font-family: 'Do Hyeon', sans-serif; font-size:2em;">????????????</h1></article>
            <br>
            <table id="top">
            	<tr>
	                <td class="topside" style="word-break:break-all;width:60%;font-size: 1.2em;background-color: #a3d4f7;">?????? : ${ content.notice_Subject }</td>
	                <td class="topside" style="width:20%;font-size: 0.8em;">????????? : ${ content.customer_Id }</td>
	                <td class="topside" style="width:20%;font-size: 0.8em;">????????? : ${ content.notice_Date }</td>
                </tr>
            </table>
            <article>
                <div class="stop-dragging" align="center"><textarea onclick="keypress();" cols="85" rows="15" style="border:none;resize:none;word-break:break-all;font-size: 1.2em;" readonly>${ content.notice_Contents }</textarea></div>
                
            </article>
            <article id="bottom">
            	<c:if test="${ sessionScope.customer.adminCheck == 1 }">
                	<a href="/notice/updateform?notice_No=${ content.notice_No }"><input class="get-started-btn" style="border:none;" type="button" value="??????"></a>
                	<a href="/notice/delete?notice_No=${ content.notice_No }" onclick="return question();"><input class="logout-btn" style="border:none;" type="button" value="??????"></a>
                </c:if>
                <input class="get-started-btn" style="background:#D8D8D8;border:none;" type="button" value="????????????" onClick="location.href='/notice/list'">  <!-- onclick="location.href='/notice/select'" -->
            </article>
        </section>
        <%@include file="/include/includeFooter.jsp" %>   
        <script>
        	function question()
        	{
        		return confirm("????????? ?????????????????????????");
        	}
        </script>
        <div id="preloader"></div>
    </body>
</html>