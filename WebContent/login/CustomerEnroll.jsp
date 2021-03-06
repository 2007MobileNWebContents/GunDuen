<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
   
   <!-- Font -->
  <title>?????? ????????????</title>


<script>
	function RrnValCheck(){
		var num1 = document.getElementById("userRrnFirst");
		var num2 = document.getElementById("userRrnSecond");
		
		var arrNum1 = new Array();
		var arrNum2 = new Array();
		
		for(var i=0; i<num1.value.length;i++){
			arrNum1[i] = num1.value.charAt(i);
		}
		for(var i=0; i<num2.value.length;i++){
			arrNum2[i] = num2.value.charAt(i);
		}
		
		var tempSum = 0;
		for(var i=0; i<num1.value.length;i++){
			tempSum += arrNum1[i] * (2+i);
		}
		
		for(var i=0; i<num2.value.length-1;i++){
			if(i>=2){
				tempSum += arrNum2[i] * i;
				
			}else{
				tempSum += arrNum2[i] * (8+i);
			}
		}
		
		if((11-(tempSum%11))%10 != arrNum2[6]){
			alert('????????? ??????????????? ????????????. ?????? ??????????????????.');
			num1.value="";
			num2.value="";
			num1.focus();
			return false;
		}else{
			alert('????????? ?????????????????????.');
			document.getElementById("RrnCheck").value = "RrnCheck";
		}
		
	}
		function checkInputNum(){
    		if ((event.keyCode < 48) || (event.keyCode > 57)){
       		 	event.returnValue = false;
    		}
		}
		function checkValue(){
			var form = document.userInfo;
			if(!form.userId.value){
				alert('???????????? ??????????????????.');
				return false;
			}
			if(form.idCheck.value == "idUncheck"){
				alert('????????? ?????????????????? ??????????????????.');
				return false;
			}
			if(!form.userPwd.value){
				alert('??????????????? ??????????????????.');
				return false;
			}
			if(form.userPwd.value != form.userPwdChk.value){
				alert('??????????????? ???????????? ??????????????????.');
				return false;
			}
			if(!form.userName.value){
				alert('????????? ??????????????????.');
				return false;
			}
			if(!form.secondPhone.value || !form.thirdPhone.value){
				alert('????????? ????????? ??????????????????.');
				return false;
			}
			if(form.phoneCheck.value=="phoneUncheck"){
				alert('????????? ?????? ??????????????? ????????????.');	
				return false;
			}
			if(!form.emailId.value){
				alert('????????? ???????????? ??????????????????.');
				return false;
			}
			if(form.emailCheck.value=="emailUncheck"){
				alert('????????? ??????????????? ????????????.');
				return false;
			}
			if(!form.userRrnFirst.value || !form.userRrnSecond){
				alert('??????????????? ????????? ??????????????????.');
				return false;
			}
			if(form.RrnCheck.value=="RrnUncheck"){
				alert('???????????????????????? ??????????????????.');
			}
			
		}
		
		function openIdChk(){
			window.name = "parentForm";
			window.open("/login/CustomerIdCheckForm.jsp","chkForm","width=500, height=400, resizable=no, scrollbars=no");
		}
		function openPhoneChk(){
			window.name = "parentForm";
			window.open("/login/CustomerPhoneCheckForm.jsp","chkForm","width=500, height=300, resizable=no, scrollbars=no");
		}
		function openEmailChk(){
			window.name = "parentForm";
			window.open("/login/CustomerEmailCheckForm.jsp","chkForm", "width=500, height=300, resizable=no, scrollbars=no");
		}
		
		
		function inputIdChk(){
			document.userInfo.idCheck.value = "idUncheck";
		}
		function inputPhoneChk(){
			document.userInfo.phoneCheck.value ="phoneUncheck";
		}
		function inputEmailChk(){
			document.userInfo.emailCheck.value ="emailUncheck";
		}
		
		function pwChk(){
			var password = $("input[name='userPwd']").val();
			var passwordChk = $("input[name='userPwdChk']").val();
			if(password!=passwordChk){
				$("#pw_chk").css("color","red");
				$("#pw_chk").text('??????????????? ????????????.');
			}else if(password=='' && passwordChk==''){
				$("#pw_chk").css("color","red");
				$("#pw_chk").text('??????????????? ??????????????????.');
			}else if(password == passwordChk){
				$("#pw_chk").css("color","green");
				$("#pw_chk").text('??????????????? ???????????????.');
			}
		}
	</script>
	<style>
		body{
			width: 100%;
			height: 100%;
		}
		section{
     	   width : 100%;
     	   	height: 900px;
     	   	padding-top:100px;
     	   }
     	table tr td:nth-child(2) {
			float: left;
		}
		table td:first-child {
			font-family: 'Do Hyeon', sans-serif;
			font-size: 1.2em;
			text-align: left;
		}
		.btn-outline-primary{
			font-family: 'Do Hyeon', sans-serif;
		}
		.get-started-btn:last-child {
			width: 400px; border:1px solid white;font-size:1.2em; margin-left:0px;
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
                  <li><a href= "/driver/autoMyinfo?area=??????">Driver</a></li>
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
   <!-- End Header --><br><br>
	<!--  -->
	<section>
		<article style="text-align: center; margin-left: 200px;">
			<form action="/customer/enroll" name = "userInfo" class="form-inline" method="post" onsubmit="return checkValue();">
				<table style="margin: 0 auto;">
				
				<tr>
					<td width="100">?????????</td>
				</tr>
				<tr>
					<td width="150"><input type="text" name="userId" class="form-control" onkeydown="inputIdChk();" style="width: 255px;"> &nbsp;</td>
					<td><input type="button" value="????????????" onclick="openIdChk();" class="btn btn-outline-primary btn-lg btn-block" style="float: left; width: 90px; height: 40px; font-size: 0.9em; text-align: center;"><input type="hidden" name="idCheck" value="idUncheck"></td>

				</tr>
				<tr>
					<td width="100">????????????</td>
				</tr>
				<tr>
					<td width="150"><input type="password" name="userPwd" class="form-control" onkeyup="pwChk();" style="width: 255px;"></td>
					<td width="250"><span id="pw_chk" style="font-family: 'Do Hyeon', sans-serif; font-size: 1.3em; float: left;"></span></td>
				</tr>
				<tr>
					<td width="150">???????????? ??????</td>
				</tr>
				<tr>
					<td width="150"><input type="password" name="userPwdChk" class="form-control"  onkeyup="pwChk();" style="width: 255px;"></td>
				</tr>
				<tr>
					<td width="100">??????</td>
				</tr>
				<tr>
					<td width="150"><input type="text" name="userName" class="form-control" style="width: 255px;"></td>
				</tr>
				<tr>
					<td width="150">????????? ??????</td>
				</tr>
				<tr>
					<td width="300">
						<select name="firstPhone"  style="width: 70px;" class="form-control">
							<option value="010">010</option>
							<option value="010">016</option>
							<option value="010">017</option>
							<option value="010">019</option>
					</select>
					- <input type="text" size="4" name="secondPhone" id="secondPhone" class="form-control" style="width: 70px;" onkeypress="javascript:checkInputNum();" onkeydown="inputPhoneChk();" maxlength="4">
					- <input type="text" size="4" name="thirdPhone" id="thirdPhone" class="form-control" style="width: 70px;" onkeypress="javascript:checkInputNum();" onkeydown="inputPhoneChk();" maxlength="4">
					</td>
					<td>
						<input type="button" value="????????????" onclick="openPhoneChk();" class="btn btn-outline-primary btn-lg btn-block" style="width: 90px; height: 40px; font-size: 0.9em; text-align: center;">
					</td>
					<td>
						<input type="hidden" name="phoneCheck" value="phoneUncheck">
					</td>
				</tr>
				<tr>
					<td width="150">?????????</td>
				</tr>
				<tr>
					<td width="300">
						<input type="text" name="emailId" style="width: 115px;" class="form-control">@
						<select name="emailTag" onkeydown="inputEmailChk();" class="form-control">
							<option value="@naver.com">?????????</option>
							<option value="@daum.net">??????</option>
							<option value="@google.com">??????</option>
							<option value="@iei.or.kr">kh???????????????</option>
						</select>	
					</td>
					<td>
						<input type="button" value="????????????" onclick="openEmailChk();" class="btn btn-outline-primary btn-lg btn-block" style="width: 90px; height: 40px; font-size: 0.9em; text-align: center;"><input type="hidden" name="emailCheck" value="emailUncheck">
					</td>
				</tr>
				<tr>
					<td width="150">??????????????????</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="userRrnFirst" id="userRrnFirst" class="form-control" maxlength="6" style="width: 120px;"> -
						<input type="password" name="userRrnSecond" id="userRrnSecond" class="form-control" maxlength="7" style="width: 120px;">
					</td>
					<td>
						<input type="button" name="chk" value="??????" onclick="RrnValCheck();" class="btn btn-outline-primary btn-lg btn-block" style="width: 90px; height: 40px; font-size: 0.9em; text-align: center;">
					</td>
					<td>
						<input type="hidden" id="RrnCheck" name="RrnCheck" value="RrnUncheck">
					</td>
				</tr>
				<tr>
					<td>
						<span></span>
					</td>
				</tr>
				<tr>
					<td colspan="3"><br><input type="submit" class="get-started-btn" value="??????????????????"></td>
				</tr>
			
				</table>
			</form>
		</article>
	</section>
	<div id="preloader"></div>
</body>
</html>