<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="keywords" content="">
    <meta name="author" content=""/>

    <!-- Favicon icon -->
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <!-- fontawesome icon -->
    <link rel="stylesheet" href="fonts/fontawesome/css/fontawesome-all.min.css">
    <!-- animation css -->
    <link rel="stylesheet" href="plugins/animation/css/animate.min.css">
    <!-- prism css -->
    <link rel="stylesheet" href="plugins/prism/css/prism.min.css">
    <!-- vendor css -->
    <link rel="stylesheet" href="css/style.css">
    
    <!-- append css -->
    <link rel="stylesheet" href="css/main/footer.css">
</head>

<body class="layout-8">
	    <div class="col-2 noti_gotop">
	   		<button type="button" class="btn btn-icon btn-rounded btn-info" id="noti_gotop_btn"><i class="feather icon-chevrons-up"></i></button>
	    </div>
	    <div class="footer">
	    	<div>
	    		MOREDOTORI
	    	</div>
	    	<div>
	    		(주)naJAVAbara | 대표 김인희 | 사업자등록번호: 123-45-678901 | 개인정보보호무책임자 : 김채연(cheyeon5@naver.com)
	    	</div>
<!-- 	    	<div>
	    		서울시마포구 백범로 23 구프라자 3층 | 전화 : 02-1234-1234 | 팩스 : 02-1234-1234
	    	</div> -->
	    	<div>
	    		Copyrightⓒ 2019naJAVAbaraCompany All rights reserved.
	    	</div>
	    </div>
	    
    <script>
		$(document).ready(function(){
			$("#noti_gotop_btn").hide();
			
		    var speed = 400; // 스크롤속도
		    $("#noti_gotop_btn").css("cursor", "pointer").click(function(){
		        $('body, html').animate({scrollTop:0}, speed);
		    });
		});
	
		$(window).scroll(function(){
			if($(document).scrollTop() == 0){
				$("#noti_gotop_btn").hide("fast");
			}else{
				$("#noti_gotop_btn").show("fast");
			}		
		})
    </script> 
</body>
</html>