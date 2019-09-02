<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
	<meta charset="utf-8">
	<jsp:include page="../main/header.jsp"></jsp:include>
    <!-- append css -->
    <link rel="stylesheet" href="css/main/main.css">    
</head>
<body class="layout-8">
	<%-- <jsp:include page="../main/header.jsp"></jsp:include> --%>
    <!-- [ Main Content ] start -->
    <input type="hidden" id="errorCode" value="<%=request.getParameter("eCode")%>">
    <div class="pcoded-main-container">
        <div class="pcoded-wrapper">
            <div class="pcoded-content" id="main_content_nopadding">
                <div class="pcoded-inner-content">

                    <!-- [ breadcrumb ] start -->
                    <div class="page-header">
                    </div>
                    <!-- [ breadcrumb ] end -->

                    <div class="main-body">
                        <div class="page-wrapper">
					        <div id="carouselExampleIndicatorscaption" class="carousel slide" data-ride="carousel">
					            <ol class="carousel-indicators">
					                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
					                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					            </ol>
					            <div class="carousel-inner">
					                <div class="carousel-item active">
					                    <img class="d-block w-100" src="images/main/main_1.jpg" alt="First slide">
					                    <!-- <div class="carousel-caption d-none d-md-block">
					                        <h5 class="text-white">First slide label</h5>
					                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
					                    </div> -->
					                </div>
					                <div class="carousel-item">
					                    <img class="d-block w-100" src="images/main/main_2.jpg" alt="Second slide">
					                    <!-- <div class="carousel-caption d-none d-md-block">
					                        <h5 class="text-white">Second slide label</h5>
					                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
					                    </div> -->
					                </div>
					                <div class="carousel-item">
					                    <img class="d-block w-100" src="images/main/main_3.jpg" alt="Third slide">
					                    <!-- <div class="carousel-caption d-none d-md-block">
					                        <h5 class="text-white">Third slide label</h5>
					                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
					                    </div> -->
					                </div>
					            </div>
					            <a class="carousel-control-prev" href="#carouselExampleIndicatorscaption" role="button" data-slide="prev"><span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="sr-only">Previous</span></a>
					            <a class="carousel-control-next" href="#carouselExampleIndicatorscaption" role="button" data-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span><span class="sr-only">Next</span></a>
					        </div>
                            <!-- [ Main Content ] start -->

								<div class="card-deck padding_30px" id="main_no_margin">
								    <div class="card">
								        <img class="card-img-top" src="images/slider/img-slide-1.jpg" alt="Card image cap">
								        <div class="card-body">
								            <h5 class="card-title">절약하는 습관을 만듭니다</h5>
								            <p class="card-text">머리 속으로 절약만 한다고 돈이 과연 남을까요?<br>모아도토리와 함께 확실한 절약 습관을 길러봅시다. <br>당신이라면 분명히 할 수 있습니다.</p>
								        </div>
								        <!-- <div class="card-footer">
								            <small class="text-muted">Last updated 3 mins ago</small>
								        </div> -->
								    </div>
								    <div class="card">
								        <img class="card-img-top" src="images/slider/img-slide-2.jpg" alt="Card image cap">
								        <div class="card-body">
								            <h5 class="card-title">월급 받은지 3일 후 텅장?!</h5>
								            <p class="card-text">괜찮아요? 텅장 때문에 많이 놀라셨죠? <br> 더이상 텅장을 만나고 싶지 않다면 모아도토리와 함께하세요.</p>
								        </div>
								        <!-- <div class="card-footer">
								            <small class="text-muted">Last updated 3 mins ago</small>
								        </div> -->
								    </div>
								    <div class="card">
								        <img class="card-img-top" src="images/slider/img-slide-3.jpg" alt="Card image cap">
								        <div class="card-body">
								            <h5 class="card-title">경조사가 줄줄이 있다?!</h5>
								            <p class="card-text">내 지갑사정 모르는 남의 결혼식은 항상 줄지어있죠. <br>언제 결혼하든 진심으로 부조할 수 있는 사람이 되고싶지 않은가요?</p>
								        </div>
								        <!-- <div class="card-footer">
								            <small class="text-muted">Last updated 3 mins ago</small>
								        </div> -->
								    </div>
								</div>
                            <!-- [ Main Content ] end -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
	<!-- alert -->
	<script src="${pageContext.request.contextPath}/plugins/sweetalert/js/sweetalert.min.js"></script>
    <script>
    	$("#header_menu").addClass("navbar-collapsed");
    	
    	var $error = $('#errorCode').val();
 		switch($error) {
	   		case 'ER000':
	   			swal('해당 페이지에 권한이 없습니다.'); break;
  	  	}
    </script>    
</body>
</html>