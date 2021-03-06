<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
   
   <!-- ???????????? ???????????? ?????? CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- ???????????? ?????? -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- ???????????? ???????????? ?????? ?????????????????? -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script>
	function subChk(){
		var userInfo = document.userIdFindInfo;
		
		if(!userInfo.username.value){
			alert('????????? ??????????????????.');
			return false;
		}
		if(!userInfo.useremail.value){
			alert('????????? ????????? ??????????????????.');
			return false;
		}
	}
</script>
<style>
	body{
		width: 100%;
		height: 100%;
	}
	
	section{
		width: 100%;
		height: 50%;
	}
	#title, .get-started-btn:last-child{
		font-family:'Do Hyeon', sans-serif;
		font-size: 1.6em;
	}
	h2 {
		margin-top : 0px;
	}
	
	
</style>
</head>

<body>
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
                  <li><a href="/review/list?reviewArea=??????">Review</a></li>
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
   <section>
   	<article style="text-align: center; margin-top: 50px;">
   	<div>
        <form action="/customer/findid" name="userIdFindInfo" method="post" onsubmit="return subChk();" style="width: 400px; margin: 0 auto;">
           <table>
            	<tr>
            		<td><a href="/index.jsp"><img src="../img/MainPageImg/gunduen.png" style="width: 150px; height: 150px;"></a></td>
            	</tr>
            	<tr>
            		<td id="title"><h2>?????? ????????? ??????</h2></td>
            	</tr>
            	<tr id="subtitle">
            		 <td style="font-size: 1.2em;">?????? ????????? ??????????????? ???????????? ?????? ??? ????????????.</td>
            	</tr>
            	<tr><td>    </td></tr>
            	<tr>
            		<td style="float: left;"><label for="username">??????</label></td>
            	</tr>
            	<tr>
            		<td>
            			<div class="input-group">
            				<input type="text" id="username" name="username" class="form-control" placeholder="??????">
            			</div>
            		</td>
            	</tr>
            	
            	<tr>
            		<td style="float: left;">
            			<label for="useremail">?????????</label>
            		</td>
            	</tr>
            	<tr>
            		<td>
            			<input type="text" id="useremail" name="useremail" class="form-control" placeholder="?????????">
            		</td>
            	</tr>
            	<tr>
            		<td>&nbsp;</td>
            	</tr>
            	<tr>
            		<td><button type="submit" class="get-started-btn" style="width: 100%;border:1px solid white;margin-left:0px;">???????????????</button></td>
            	</tr>
            </table>
        </form>
    </div>
    </article>
   </section>
    <div id="preloader"></div>
</body>


</html>