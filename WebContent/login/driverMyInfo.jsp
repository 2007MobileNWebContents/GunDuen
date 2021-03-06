<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page import="driver.model.vo.Driver" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
   
   <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	//????????? ???????????? ?????? function
	function checkInputNum(){
    	if ((event.keyCode < 48) || (event.keyCode > 57)){
       	 	event.returnValue = false;
    	}
	}
	//????????????????????? ??????????????? ?????? ??????
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
	//???????????? ?????????????????? ?????????????????? ????????? ????????? ???????????? ??????????????? function
	function checkValue(){
		var driverInfo = document.driverEnrollForm;
		
		if(!driverInfo.userPwd.value){
			alert('??????????????? ??????????????????.');
			return false;
		}
		if(driverInfo.userPwd.value != driverInfo.userPwdChk.value){
			alert('??????????????? ????????????. ??????????????????');
			return false;
		}
		if(!driverInfo.userName.value){
			alert('????????? ??????????????????.');
			return false;
		}
		if(!driverInfo.secondPhone.value || !driverInfo.thirdPhone.value){
			alert('??????????????? ?????? ??????????????????.');
			return false;
		}
		
		if(!driverInfo.emailId.value){
			alert('????????? ???????????? ??????????????????.');
			return false;
		}
		if(!driverInfo.homeNum.value){
			alert('??? ????????? ??????????????????.');
			return false;
		}
		if(!driverInfo.userRrnFirst.value || !driverInfo.userRrnSecond.value){
			alert('??????????????? ?????? ??????????????????.');
			return false;
		}
		if(!driverInfo.driverInfo.value){
			alert('???????????? ????????? ??????????????? ???????????????.');
			return false;
		}
		
		
	}
	//????????? ???????????? ????????? ?????? ????????? fucntion
	function openIdChk(){
		window.name = "parentForm";
		window.open("/login/DriverIdCheckForm.jsp", "chkForm","width=500, height=300, resizable=no, scrollbars=no");
	}
	
	function openPhoneChk(){
		window.name = "parentForm";
		window.open("/login/DriverPhoneCheckForm.jsp", "chkForm", "width=500, height=300, resizable=no, scrollbars=no");
	}
	
	function openEmailChk(){
		window.name = "parentForm";
		window.open("/login/DriverEmailCheckForm.jsp", "chkForm", "width=500, height=300, resizable=no scrollbars=no");
	}
	
	//???????????? ?????? ????????? ???????????? ?????? idUncheck
	function inputIdChk(){
		document.driverEnrollForm.idCheck.value="idUncheck";
	}
	function inputPhoneChk(){
		document.driverEnrollForm.phoneCheck.value="phoneUncheck";
	}
	function inputEmailChk(){
		document.driverEnrollForm.emailCheck.value="emailUncheck";
	}
	//????????? API
	var roadAddress;
	var homeNum;
	function DaumPostCode(){
		 new daum.Postcode({
	            oncomplete: function(data) {
	            	roadAddress = data.address;
	            	homeNum = data.zonecode;	
	            	$("#homeNum").val(homeNum);
	            	$("#roadAddress").val(roadAddress);
	            }
	        }).open();
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
	#btn {
		margin:0 auto;
		text-align : center;
	}
	#formtable {
		margin-top : 150px; margin-bottom : 150px;
	}
	#table {
		margin:0 auto; width:300px;
	}
	#title {
		text-align : center;
		font-family : 'Do Hyeon', sans-serif;
		font-size : 1.4em;
		margin-bottom:10px;
	}
</style>
</head>
<body>
<!--  -->
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
   <!-- End Header -->
	<%-- <form action="/driver/update" name="driverEnrollForm" method="post" enctype="multipart/form-data" onsubmit="return checkValue();">
	ID : <input type="text" name="userId" onkeydown="inputIdChk();" value="${sessionScope.driver.driverId }"> <input type="button" value="????????????" onclick="openIdChk();">
	<input type="hidden" name="idCheck" value="idUncheck"><br>
	PW : <input type="password" name="userPwd" onkeyup="pwChk();" value="${driver.driverPwd }"><span id="pw_chk"></span><br>
	PW ??????: <input type="password" name="userPwdChk" onkeyup="pwChk();"><br>
	?????? : <input type="text" name="userName" value="${driver.driverName }" ><br>
	
	<c:set var="string1" value="${driver.driverPhone }"/>
	<c:set var="driverPhone1" value="${fn:substring(string1, 4, 8) }" />
	<c:set var="driverPhone2" value="${fn:substring(string1, 9, 13) }" />
	
	????????? ??????  : <select name="firstPhone">
		<option value="010">010</option>
		<option value="010">016</option>
		<option value="010">017</option>
		<option value="010">019</option>
	</select>
	-<input type="text" size="4" name="secondPhone" id="secondPhone" value="${driverPhone1 }" onkeypress="javascript:checkInputNum();" onkeydown="inputPhoneChk();" maxlength="4">
	-<input type="text" size="4" name="thirdPhone" id="thirdPhone" value="${driverPhone2 }" onkeypress="javascript:checkInputNum();" onkeydown="inputPhoneChk();" maxlength="4"><input type="button" value="????????????" onclick="openPhoneChk();">
	<input type="hidden" name="phoneCheck" value="phoneUncheck"><br>
	
	
	????????? ?????? : <input type="text" name="emailId" value="${fn:substringBefore( driver.driverEmail, '@') }">@
	<select name="emailTag" onkeydown="inputEmailChk();">
		<option value="@naver.com">?????????</option>
		<option value="@daum.net">??????</option>
		<option value="@google.com">??????</option>
		<option value="@iei.or.kr">kh???????????????</option>
	</select><input type="button" value="????????????" onclick="openEmailChk();"><input type="hidden" name="emailCheck" value="emailUncheck"><br>
	<c:set var="string2" value="${fn:split(driver.driverHome, ' ') }" />
	?????? ?????? : <input type="text" id="homeNum" name ="homeNum" placeholder="????????????" value="${firstHome}"> 
	<input type="button" onclick="DaumPostCode()" value="???????????? ??????" ><br>
	<input type="text" id="roadAddress" name="roadAddress" placeholder="???????????????">
	<input type="text" id="dAddress" name="dAddress" placeholder="????????????">
	<br>?????? ?????? : <select name="area" value="${driverArea }">
		<option value="??????">??????</option>
		<option value="??????">??????</option>
		<option value="??????">??????</option>
		<option value="??????">??????</option>
		<option value="??????">??????</option>
		<option value="??????">??????</option>
		<option value="??????">??????</option>
		<option value="??????">??????</option>
		<option value="??????">??????</option>
		<option value="??????">??????</option>
		<option value="??????">??????</option>
		<option value="??????">??????</option>
		<option value="??????">??????</option>
		<option value="??????">??????</option>
		<option value="??????">??????</option>
		<option value="??????">??????</option>
	</select><br>
	?????????????????? : <input type="text" id= "userRrnFirst" name="userRrnFirst" maxlength="6" value="${fn:substringBefore( driver.driverRrn, '-') }">-
	<input type="password" id="userRrnSecond" name="userRrnSecond" maxlength="7" value="${fn:substringAfter( driver.driverRrn, '-') }"><input type="button" name="chk" value="??????" onclick="RrnValCheck();">
	<input type="hidden"  id="RrnCheck" name="RrnCheck" value="RrnUncheck"><br>
 
	???????????? :<br> <textarea rows="10" cols="50" name="driverInfo">${driver.driverSelfInfo}</textarea><br>

	<script>
		function checkSize(inputImage){
			
			if(inputImage.files && inputImage.files[0].size> (3*1024*1024)){
			alert('3MB??? ???????????????. ?????? ??????????????????');
			inputImage.value=null;
			}
		}
	</script>          

 	?????? ?????? ?????????(3MB) : <input type="file" name="LicenseFile" onchange="checkSize(this)"><br>
	??????????????????(3MB) : <input type="file" name="BLicenseFile" onchange="checkSize(this)"><br>
	 ????????? ??????(3MB) : <input type="file" name="DriverInfoFile" onchange="checkSize(this)"><br>

	<input type="submit" value="??????????????????"><br>

	</form> --%>


	<form action="/driver/update"  name="driverEnrollForm" method="post" enctype="multipart/form-data" onsubmit="return checkValue();" id="formtable">
		<div id="title">?????????????????? ??????</div>
		<table id="table" >
			<tr><td>?????????</td>
			</tr>
			<tr>
				<td><input type="text" name="userId"value="${sessionScope.driver.driverId }"  class="form-control" onkeydown="inputIdChk();" style="width: 255px;"readonly></td>
				<td></td>
			</tr>
			<tr>
					<td width="100">????????????</td>				
				</tr>
				<tr>
					<td width="150"><input type="password" class="form-control" style="width: 255px;" name="userPwd" onkeyup="pwChk();" value="${driver.driverPwd }"></td>
					<td width="250px"><span id="pw_chk" style="font-family: 'Do Hyeon', sans-serif; font-size: 1.1em; float: left;"></span></td>
				</tr>
				<tr>
					<td width="150">???????????? ??????</td>
				</tr>
				<tr>
					<td width="150"><input type="password" class="form-control" name="userPwdChk" onkeyup="pwChk();" style="width: 255px;"></td>
				</tr>
				
			
			<tr><td>??????</td>
			</tr>
			<tr>
				<td><input type="text"  class="form-control" name="userName"  maxlength="10" value="${driver.driverName }" style="width:255px;"></td>
				<td></td>
			</tr>
			<tr><td>????????? ??????</td>
			</tr>
			<tr>
			<c:set var="string1" value="${driver.driverPhone }"/>
			<c:set var="driverPhone1" value="${fn:substring(string1, 4, 8) }" />
			<c:set var="driverPhone2" value="${fn:substring(string1, 9, 13) }" />
				<td width="300">
						<div class="form-group">
							<div class="input-group">
								<select name="firstPhone" style="width: 80px;" class="form-control">
							<option value="010">010</option>
							<option value="010">016</option>
							<option value="010">017</option>
							<option value="010">019</option>
						</select>-<input type="text" size="4" name="secondPhone" class="form-control" value="${driverPhone1 }" style="width: 80px;" id="secondPhone" onkeypress="javascript:checkInputNum();" onkeydown="inputPhoneChk();" maxlength="4">
						-<input type="text" size="4" name="thirdPhone" class="form-control"value="${driverPhone2 }"  style="width: 80px;" id="thirdPhone" onkeypress="javascript:checkInputNum();" onkeydown="inputPhoneChk();" maxlength="4">
							</div>
							
						</div>
						
					</td>
				<td><!-- <div class="input-group">
								<input type="button" value="????????????" onclick="openPhoneChk();"class="btn btn-outline-primary btn-lg btn-block" style="width: 90px; height: 40px; font-size: 0.9em; text-align: center; margin-left: 5px;"><input type="hidden" name="phoneCheck" value="phoneUncheck">
							</div> --></td>
			</tr>
			<tr><td>????????? </td>
			</tr>
			<tr>
				<td width="300">
						<div class="form-group">
							<div class="input-group" style="width: 120px;float:left;" >
								<input type="text" name="emailId" class="form-control" value="${fn:substringBefore( driver.driverEmail, '@') }">
							</div><div style="float:left;">@</div>
							<div class="input-group"style="width: 120px;float:left;">
								<select name="emailTag" onkeydown="inputEmailChk();" class="form-control">
									<option value="@naver.com">?????????</option>
									<option value="@daum.net">??????</option>
									<option value="@google.com">??????</option>
									<option value="@iei.or.kr">kh???????????????</option>
								</select>
							</div>
						</div>
					</td>
					<td><!-- <div class="input-group">
								<input type="button" value="????????????" onclick="openEmailChk();" class="btn btn-outline-primary btn-md btn-block" style="width: 90px; height: 40px; font-size: 0.9em; margin-left:5px; text-align: center;"><input type="hidden" name="emailCheck" value="emailUncheck">
							</div> --></td>
			</tr>
			
			<tr>
					<td width="150">?????? ??????</td>
				</tr>
				<tr>
					<td>
					<select name="area" class="form-control" style="width: 100px;" value="${driver.driverArea}">
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
					</select>
					</td>
				</tr>
			<tr>
					<td width="150">??????????????????</td>
				</tr>
			<tr>
				<td>
						<div class="form-group">
							<div class="input-group" style="width:122px;float:left;">
								<input type="text" id= "userRrnFirst" class="form-control" value="${fn:substringBefore( driver.driverRrn, '-') }"name="userRrnFirst" maxlength="6" style="width: 120px;">
							</div>
							<div style="float:left;">-</div>
							<div class="input-group" style="width:122px;float:left;">
								<input type="password" id="userRrnSecond" class="form-control"value="${fn:substringAfter( driver.driverRrn, '-') }" name="userRrnSecond" maxlength="7" style="width: 120px;">
							</div>
							
						</div>
					</td>
				<td><div class="input-group">
								<input type="button" name="chk" class="btn btn-outline-primary btn-md btn-block" style="margin-left: 5px;"  value="??????" onclick="RrnValCheck();">
								<input type="hidden"  id="RrnCheck" name="RrnCheck" value="RrnUncheck">
							</div></td>
			</tr>
			<tr>
					<td width="150">????????????</td>
				</tr>
			<tr>
				<td><textarea type="text"  name="driverInfo" value="${driver.driverSelfInfo }" class="form-control"style="width:255px;height:150px;resize:none;">${driver.driverSelfInfo }</textarea></td>
				<td></td>
			</tr>
			<tr>
					<td>?????? ?????? ?????????(3MB ??????)</td>
				</tr>
			<tr>
				<td><input type="file" name="LicenseFile" onchange="checkSize(this)" style="width:50px;float:left;font-family:'Do Hyeon', sans-serif;"></td>
				<td></td>
			</tr>
			<tr>
					<td>?????????????????? ?????????(3MB ??????)</td>
				</tr>
			<tr>
				<td><input type="file" name="BLicenseFile" onchange="checkSize(this)" style="width:50px;float:left;font-family:'Do Hyeon', sans-serif;"></td>
				<td></td>
			</tr>
			<tr>
			<td> ????????? ??????(3MB ??????)</td>
			</tr>
			<tr>
				<td><input type="file" name="DriverInfoFile" onchange="checkSize(this)" style="width:50px;float:left;font-family:'Do Hyeon', sans-serif;"></td>
				<td></td>
			</tr>
		</table>
		<div id="btn">
			<input type="submit" value="????????????" class="get-started-btn" style="border : 1px solid white; font-family:'Do Hyeon', sans-serif;"> <input
				type="reset" value="??????" class="get-started-btn" style="border : 1px solid white; font-family:'Do Hyeon', sans-serif;">
		</div>
		<script>
			function pwdChk() {
				var password = $("input[name='driverPwd']").val();
				var passwordChk = $("input[name='driverPwdChk']").val();
				if (password != passwordChk) {
					$("#pwChk").css("color","red");
					$("#pwChk").text('??????????????? ????????????.');
				} else if (password == '' && passwordChk == '') {
					$("#pwChk").css("color","red");
					$("#pwChk").text('??????????????? ??????????????????.');
				} else if (){
					$("#pwChk").css("color","green");
					$("#pwchk").text('??????????????? ???????????????.');
				}
			}
		</script>
	</form>
	
		<div id="preloader"></div>
	<script src="assets/js/main.js"></script>
	
</body>
</html>