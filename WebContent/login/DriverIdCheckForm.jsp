<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크 페이지</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<script src="//code.jquery.com/jquery.min.js"></script>
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
		<!-- Font -->
		<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<style>
	#wrap {
            width: 490px;
            text-align :center;
            margin: 0 auto 0 auto;
        }
        
	#chk{
            text-align :center;
            width: 100%;
            height: 100%;
        }        
        #cancelBtn{
            visibility:visible;
        }
        
        #useBtn{
             visibility:hidden;
             
        }
		
		#title, #userId, #chk , #cancelBtn, #useBtn , #msg{
		font-family: 'Do Hyeon', sans-serif;
		}
		#userId, #chk , #cancelBtn, #useBtn, #msg{
			font-size : 1.1em;
		}
	
</style>
<script>

	var httpRequest = null; //getXMLHttpRequest()함수로 생성한 객체를 저장하기위해 선언한 변수.
	
	function getXMLHttpRequest(){
		if(window.ActiveXObject){
			try{
				httpRequest = new ActiveXObject("Msxml2.XMLHTTP");
				
			}catch(e){
				try{
					httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
					
				}catch(e1){
					httpRequest = null;}
			}
	
		}else if(window.XMLHttpRequest){
			httpRequest = new XMLHttpRequest();
		}
		return httpRequest;
			
	}
	function pValue(){
        document.getElementById("driverId").value = opener.document.driverEnrollForm.userId.value;
    }
    
    // 아이디 중복체크
    function idCheck(){

        var id = document.getElementById("driverId").value;

        if (!id) {
            alert("아이디를 입력하지 않았습니다.");
            document.getElementById("useBtn").style.visibility='hidden';
            document.getElementById("driverId").style.border = '3px solid red';
            return false;
        }else if((id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z")){ 
            alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
            document.getElementById("useBtn").style.visibility='hidden';
            document.getElementById("driverId").style.border = '3px solid red';
            return false;
        }else if(id.length<6){
        	alert("아이디는 6자 이상만 사용하실 수 없습니다.");
            document.getElementById("useBtn").style.visibility='hidden';
            document.getElementById("driverId").style.border = '3px solid red';
        }
        else{
            var param="id="+id
            httpRequest = getXMLHttpRequest();
            httpRequest.onreadystatechange = callback;
            httpRequest.open("POST", "/driver/check", true);    
            httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); 
            httpRequest.send(param);
            
        }
    }
    
    function callback(){
        if(httpRequest.readyState == 4){
            // 결과값을 가져온다.
            var resultText = httpRequest.responseText;
            if(resultText == 0){
                alert("사용할수없는 아이디입니다.");
                document.getElementById("cancelBtn").style.visibility='visible';
                document.getElementById("useBtn").style.visibility='hidden';
                document.getElementById("msg").innerHTML ="";
                document.getElementById("driverId").style.border = '3px solid red';
            } 
            else if(resultText == 1){ 
            	$("#driverId").attr('readonly',true);
                document.getElementById("cancelBtn").style.visibility='hidden';
                document.getElementById("useBtn").style.visibility='visible';
                document.getElementById("msg").innerHTML = "사용 가능한 아이디입니다.";
                document.getElementById("driverId").style.border = '3px solid green';
            }
        }
    }
    
    // 사용하기 클릭 시 부모창으로 값 전달 
    function sendCheckValue(){
        // 중복체크 결과인 idCheck 값을 전달한다.
        var finalChk = document.getElementById("driverId").value;
        if((finalChk < "0" || finalChk > "9") && (finalChk < "A" || finalChk > "Z") && (finalChk < "a" || finalChk > "z")){
    		opener.document.driverEnrollForm.idCheck.value = "idUncheck"; 
    		alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
    		history.back();
    		 document.getElementById("cancelBtn").style.visibility='visible';
             document.getElementById("useBtn").style.visibility='hidden';
             document.getElementById("msg").innerHTML ="";
             document.getElementById("driverId").style.border = '3px solid red';
    	}else{
    		opener.document.driverEnrollForm.idCheck.value ="idCheck";
            console.log(opener.document.driverEnrollForm.idCheck.value);
            console.log(document.getElementById("driverId").value);
            opener.document.driverEnrollForm.userId.value = document.getElementById("driverId").value;
            opener.document.driverEnrollForm.userId.readOnly = true;
            if (opener != null) {
                opener.chkForm = null;
                self.close();
            }    
        }   
    	}
        
        // 회원가입 화면의 ID입력란에 값을 전달
        



</script>
</head>
<body onload="pValue();">
<div id="wrap">
    <br>
    <b><font size="4" id="title" style="font-size: 1.6em;" color="gray">아이디 중복체크</font></b>
    <hr size="1" width="460">
    <br>
    <div id="chk">
        <form id="checkForm" class="form-inline">
        	<table style="width: 100%;">
        		<tr>
        			<td width="150">
        				<input type="text" name="idinput" class="form-control" id="driverId"  style="width: 70%; margin: 0 auto; float: right;">     				
        			</td>
        			<td width="60">
        				&nbsp;<input type="button" class="btn btn-default" value="중복확인" onclick="idCheck()" style="margin-left: -20px; width: 55%;">
        			</td>
        		</tr>
           
            
            </table>
        </form>
        <div id="msg"></div>
        <br>
        <input id="cancelBtn" type="button" value="취소" class="btn btn-danger"  onclick="window.close()"><br>
        <input id="useBtn" type="button" value="사용하기" class= "btn btn-info" onclick="sendCheckValue()">
    </div>
</div>    
</body>
</html>
