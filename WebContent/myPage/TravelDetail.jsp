<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<!-- <title>Mentor Bootstrap Template - Index</title> -->
<meta content="" name="descriptison">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="../assets/img/favicon.png" rel="icon">
<link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
   href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
   rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="../assets/vendor/bootstrap/css/bootstrap.min.css"
   rel="stylesheet">
<link href="../assets/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="../assets/vendor/boxicons/css/boxicons.min.css"
   rel="stylesheet">
<link href="../assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="../assets/vendor/owl.carousel/assets/owl.carousel.min.css"
   rel="stylesheet">
<link href="../assets/vendor/animate.css/animate.min.css"
   rel="stylesheet">
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
<title>???????????????</title>
<meta charset="utf-8">
<script
   src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript"
   src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=0g63w7xmeu&submodules=geocoder"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8e5007416460a5bee56aaba2bb1ea6d&libraries=services"></script>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<link
   href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
   rel="stylesheet">
<style>
#mypage {
   width: 35%;
   height: 100%;
   float: left;
   line-height: 250px;
}

section {
   width: 90%;
   height: 75%;
   border: 1px solid white;
   box-sizing: border-box;
}

#navi {
   width: 15%;
   height: 40%;
   border: 1px solid white;
   box-sizing: border-box;
   float: left;
}

#contents {
   width: 85%;
   height: 100%;
   border: 1px solid white;
   box-sizing: border-box;
   float: left;
}

#mypageList {
   width: 100%;
   height: 100%;
}

#navi #navigator a {
   text-decoration: none;
   display: white;
}

#navigator {
   width: 100%;
   height: 100%;
}

#navigator li {
   text-align: center;
   line-height: 70px;
   list-style: none;
   border: 1px solid white;
   height: 20%;
   box-sizing: border-box;
}

#mybooking {
   border: 1px solid white;
   width: 100%;
   height: 10%;
}

#mybookinglist {
   border: 1px solid white;
   width: 100%;
   height: 90%;
}

#mybooking p {
   font-size: 1.6em;
   font-weight: bold;
}

#mybookinglist table {
   margin: 0 auto;
}

#mybookinglist table thead tr th {
   text-align: center;
   font-size: 100px;
}

#mybookinglist table thead tr td {
   text-align: center;
   font-size: 30px;
}

#travel:hover {
   background: #d9efff;
}

#main {
   width: 100%;
   height: 80%;
   border: 1px solid black;
}

#mainNav {
   width: 100%;
   height: 20%;
   border: 1px solid black;
}

#mainNav li {
   border: 1px solid white;
   float: left;
   list-style: none;
   width: 20%;
   height: 100%;
   line-height: 30px;
}

#jh1 {
   text-align: center;
   font-size: 15px;
   vertical-align: middle;
}

#jh2 {
   text-align: center;
   font-size: 15px;
   vertical-align: middle;
}

#jh3 {
   text-align: center;
   font-size: 15px;
   vertical-align: middle;
}

#jh4 {
   text-align: center;
   font-size: 15px;
   vertical-align: middle;
}

#jh5 {
   text-align: center;
   font-size: 15px;
   vertical-align: middle;
}

#jh6 {
   text-align: center;
   font-size: 15px;
   vertical-align: middle;
}

#jh7 {
   text-align: center;
   font-size: 15px;
   vertical-align: middle;
}

#jh8 {
   text-align: center;
   font-size: 15px;
   vertical-align: middle;
}

#jh9 {
   text-align: center;
   font-size: 15px;
   vertical-align: middle;
}

#jh10 {
   text-align: center;
   font-size: 15px;
   vertical-align: middle;
}
#btn{
      color: #fff;
      background-color: #a3d4f7;
      height: 45px;
      width: 100px;
      font-size:12px;
    }
#btn1{
      color: #fff;
      background-color: #a3d4f7;
      height: 45px;
      width: 130px;
      font-size:12px;
    }
#table{
   text-align: center;
   font-size: 13px;
   
   
}
</style>
</head>
<body>
   <c:choose>
      <c:when
         test="${sessionScope.customer eq null && sessionScope.driver eq null }">
         <script>
            alert('????????? ?????? ?????? ?????? ????????? ??????????????????. \n ????????? ??? ??????????????????.');
            location.href = '/index.jsp';
         </script>
      </c:when>
      <c:otherwise>

         <header>
            <!-- ======= Header ======= -->
            <header id="header" class="fixed-top">
               <div class="container d-flex align-items-center">

                  <h1 class="logo mr-auto">
                     <a href="/index.jsp">GUNDUEN</a>
                  </h1>
                  <!-- Uncomment below if you prefer to use an image logo -->
                  <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
                  <nav class="nav-menu d-none d-lg-block">
                     <ul>
                        <li class="active"><a href="/index.jsp">Home</a></li>
                        <li><a href="/notice/list">Notice</a></li>
                        <li><a href="/driverInfoPage/DriverInfoPage.jsp">Driver</a></li>
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
                  </c:if>

                  <!-- ??????/?????? ???????????? header -->
                  <c:if test="${sessionScope.customer.adminCheck < 1 }">
                     <a
                        href="/mypage/travel?customerId=${sessionScope.customer.customer_Id }"
                        class="get-started-btn">???????????????</a>
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
                  </c:if>

                  <c:if test="${sessionScope.driver ne null}">
                     <a
                        href="/DriverTravel/List?driverId=${sessionScope.driver.driverId }"
                        class="get-started-btn">???????????????</a>
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
                  </c:if>

                  &nbsp;&nbsp; <img src="../assets/img/happy.png"
                     style="height: 40px">

               </div>
            </header>
            <!-- End Header -->
         </header>

         <section>
            <c:if test="${sessionScope.customer.adminCheck < 1 }">
               <section id="navi">

                  <nav class="nav-menu d-none d-lg-block">
                     <nav id="navigator">
                        <ul>
                           <!-- if????????? li ?????? ?????? -->
                           <li class="active"><a
                              href="/mypage/travel?customerId=${sessionScope.customer.customer_Id }">????????????/
                                 ????????????</a></li>
                           <li><a
                              href="/message/receiverList?receiver=${sessionScope.customer.customer_Id }">?????????</a></li>
                           <li><a
                              href="/customer/myInfo?customerId=${sessionScope.customer.customer_Id }">????????????
                                 ??????</a></li>
                           <li><a
                              href="/customer/delete?customerId=${sessionScope.customer.customer_Id }"
                              onclick="return delete1();">?????? ??????</a></li>
                        </ul>
                     </nav>
                  </nav>
               </section>
            </c:if>
            <c:if test="${sessionScope.driver ne null}">
               <section id="navi">
                  <nav class="nav-menu d-none d-lg-block">
                     <nav id="navigator">
                        <ul>
                           <!-- if????????? li ?????? ?????? -->
                           <li class="active"><a
                              href="/DriverTravel/List?driverId=${sessionScope.driver.driverId }">????????????/
                                 ????????????</a></li>
                           <li><a
                              href="/message/receiverList?receiver=${sessionScope.driver.driverId }">?????????</a></li>
                           <li><a href="/login/driverMyInfo.jsp">???????????? ??????</a></li>
                           <li><a
                              href="/base/delete?driverId=${sessionScope.driver.driverId }"
                              onclick="return delete1();">?????? ??????</a></li>
                        </ul>
                     </nav>
                  </nav>
               </section>
            </c:if>
            <section id="contents">
               <h1>????????????</h1>
               <table class="table" style="width: 50%; height: 360px;">

                  <c:forEach items="${tdList }" var="travel">
                     <div id="map"
                        style="width: 350px; height: 350px; margin-top: 10px; float: left;"></div>
                     <br>
                     <tr>
                        <th id="jh1">??????</th>
                        <td id="jh2">${travel.customer_Id }</td>
                     </tr>
                     <tr>
                        <th id="jh3">????????????</th>
                        <td id="jh4">${travel.package_Area }</td>
                     </tr>
                     <tr>
                        <th id="jh5">?????? ??????</th>
                        <td id="jh6">${travel.package_TravelDate }</td>
                     </tr>
                     <tr>
                        <th id="jh7">????????????</th>
                        <td id="jh8">${travel.package_Code }</td>
                     </tr>
                     <tr>
                        <th id="jh9">?????? ?????? ??????</th>
                        <td id="jh10">${travel.driver_Name }</td>
                     </tr>
                     <tr>
                     	<th id="jh10">?????? ?????? ?????????</th>
                     	<td id="jh10">${travel.driver_Id }</td>
                     </tr>
                  </c:forEach>
               </table>
               <section id="contents">
                  <h1 id="High">????????????</h1>
                  <h2>
                     ?????? ????????? ?????? ?????? 24????????? ????????? ????????? ???????????????. ??? ???????????? ???????????? ??? ????????? ????????? ??????<br>
                     ????????? ?????? ???????????? ?????? ?????? ?????? ????????????.
                  </h2>
                  <table id="table" class="table" style="width: 100%; height: 30px;">
                     <c:forEach items="${tdList }" var="travel">
                        <tr>
                           <th>??????</th>
                           <th>????????????</th>
                           <th>?????? ??????</th>
                           <th>?????? ??????</th>
                        </tr>
                        <tr>
                           <td>${travel.customer_Id }</td>
                           <td>${travel.package_Area }</td>
                           <td>${travel.package_Date.getYear()+1900 }???${travel.package_Date.getMonth() }???
                              ${travel.package_Date.getDay()}???</td>
                           <td>${travel.package_Code }</td>
                        </tr>
                        </c:forEach>
                     </table>
                     
                     <br><br>
                     <div style="text-align:center;">
                     <c:forEach items="${tdList }" var="travel">      
                           <c:if test="${sessionScope.customer.adminCheck < 1 }">
                           <c:if test="${travel.package_Confirm <2 }">
                           <input id= "btn" type="button" value="????????????" name="cancle" onClick="return cancle();" class="btn btn-default">
                           <script>
                           function cancle() {
                              var cancle = confirm("????????? ?????????????????????????");
                              if(cancle){
                                 location.href='/travel/delete?package_Code=${travel.package_Code}'
                              }else{
                                 return false;
                              }
                           }
                           </script>
                           </c:if>
                           <c:if test="${travel.package_Confirm > 1 }">
                           <button id="btn1" class="btn btn-default" onclick="com();">????????? ???????????????.</button>
                           </c:if>
                           </c:if>
                        <c:if test="${sessionScope.driver ne null }">
                           <c:choose>
                              <c:when test="${travel.package_Confirm < 2 }">
                              <input id= "btn" type="button" value="????????????" name="cancle" onClick="return cancle();" class="btn btn-default">
                              <input id= "btn" type="button" value="????????????" name="cancle" onclick="return quest();" class="btn btn-default">
                              </c:when>
                              <c:otherwise>
                              <button id="btn1" class="btn btn-default" onclick="com();">????????? ???????????????.</button>
                              </c:otherwise>
                     
                           </c:choose>
                           <script>
                           function quest() {
                              var quest = confirm("????????? ??????????????????????");
                               if(quest){
                                  location.href="/travel/confirm?package_Code=${travel.package_Code}&driverId=${sessionScope.driver.driverId}&customerId=${travel.customer_Id}";
                               }else{
                                  return false;
                               }
                            }
                           function cancle() {
                              var cancle = confirm("????????? ?????????????????????????");
                              if(cancle){
                                 location.href='/travel/delete?package_Code=${travel.package_Code}'
                              }else{
                                 return false;
                              }
                           }
                           function com(){
                              alert("????????? ???????????????.");
                           }
                           </script>
                        </c:if>
                        </c:forEach>
                        </div>
                     

                  

               </section>
            </section>
         </section>

         <footer>
            <span id="copyright">Copyright 2020 CLOUD All rights reserved</span>
         </footer>

         <c:forEach items="${tdList }" var="travel">
            <script>
               var mapContainer = document.getElementById('map'), // ????????? ????????? div
               mapOption = {
                  center : new daum.maps.LatLng('${travel.coordx}',
                        '${travel.coordy}'), // ????????? ????????????
                  level : 5
               // ????????? ?????? ??????
               };
               //????????? ?????? ??????
               var map = new daum.maps.Map(mapContainer, mapOption);
               //??????-?????? ?????? ????????? ??????
               var geocoder = new daum.maps.services.Geocoder();
               //????????? ?????? ??????
               var marker = new daum.maps.Marker({
                  position : new daum.maps.LatLng('${travel.coordx}',
                        '${travel.coordy}'),
                  map : map
               });
               var infowindow = new kakao.maps.InfoWindow(
                     {
                        content : '<div style="width:150px;text-align:center;padding:6px 0;">???????????? : ${travel.package_Pickup}</div>'
                     });
               infowindow.open(map, marker);
            </script>
         </c:forEach>
      </c:otherwise>
   </c:choose>
   <script>
   function delete1() {
       return confirm("????????? ?????????????????????????");
    }
   </script>
   <footer>
      <%@include file="../include/includeFooter.jsp"%>
   </footer>
   <div id="preloader"></div>
</body>

</html>