<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
	<meta charset="utf-8">
	
    <!-- append css -->
    <link rel="stylesheet" href="css/main/main.css">    
</head>
<body class="layout-8">
	<jsp:include page="../main/header.jsp"></jsp:include>
    <!-- [ Main Content ] start -->
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
		                    <img class="d-block w-100" src="images/main/women2.jpg" alt="First slide">
		                    <div class="carousel-caption d-none d-md-block">
		                        <h5 class="text-white">First slide label</h5>
		                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
		                    </div>
		                </div>
		                <div class="carousel-item">
		                    <img class="d-block w-100" src="images/main/notebook2.jpg" alt="Second slide">
		                    <div class="carousel-caption d-none d-md-block">
		                        <h5 class="text-white">Second slide label</h5>
		                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
		                    </div>
		                </div>
		                <div class="carousel-item">
		                    <img class="d-block w-100" src="images/main/coin_and_laptop2.jpg" alt="Third slide">
		                    <div class="carousel-caption d-none d-md-block">
		                        <h5 class="text-white">Third slide label</h5>
		                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
		                    </div>
		                </div>
		            </div>
		            <a class="carousel-control-prev" href="#carouselExampleIndicatorscaption" role="button" data-slide="prev"><span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="sr-only">Previous</span></a>
		            <a class="carousel-control-next" href="#carouselExampleIndicatorscaption" role="button" data-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span><span class="sr-only">Next</span></a>
		        </div>
                            <!-- [ Main Content ] start -->

								<div class="card-deck padding_30px" id="main_no_margin">
								    <div class="card">
								        <img class="card-img-top" src="images/slider/img-slide-4.jpg" alt="Card image cap">
								        <div class="card-body">
								            <h5 class="card-title">Card title</h5>
								            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
								        </div>
								        <div class="card-footer">
								            <small class="text-muted">Last updated 3 mins ago</small>
								        </div>
								    </div>
								    <div class="card">
								        <img class="card-img-top" src="images/slider/img-slide-2.jpg" alt="Card image cap">
								        <div class="card-body">
								            <h5 class="card-title">Card title</h5>
								            <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
								        </div>
								        <div class="card-footer">
								            <small class="text-muted">Last updated 3 mins ago</small>
								        </div>
								    </div>
								    <div class="card">
								        <img class="card-img-top" src="images/slider/img-slide-1.jpg" alt="Card image cap">
								        <div class="card-body">
								            <h5 class="card-title">Card title</h5>
								            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
								        </div>
								        <div class="card-footer">
								            <small class="text-muted">Last updated 3 mins ago</small>
								        </div>
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
    
</body>
</html>