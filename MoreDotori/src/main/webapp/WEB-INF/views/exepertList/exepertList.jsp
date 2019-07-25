<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>MoreDotori ExpertList</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Datta Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
    <meta name="keywords" content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template">
    <meta name="author" content="Codedthemes" />

    <!-- Favicon icon -->
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <!-- fontawesome icon -->
    <link rel="stylesheet" href="fonts/fontawesome/css/fontawesome-all.min.css">
    <!-- animation css -->
    <link rel="stylesheet" href="plugins/animation/css/animate.min.css">
    <!-- vendor css -->
    <link rel="stylesheet" href="css/style.css">
	
	<!-- select2 css -->
    <link rel="stylesheet" href="plugins/select2/css/select2.min.css">
    
    <!-- multi-select css -->
    <link rel="stylesheet" href="plugins/multi-select/css/multi-select.css">
 
	<link rel="stylesheet" href="css/exepertList/exepert.css">

</head>

<body class="layout-8">
	<jsp:include page="../main/header.jsp"></jsp:include>
    <!-- [ Main Content ] start -->
    <div class="pcoded-main-container">
        <div class="pcoded-wrapper">
            <div class="pcoded-content">
                <div class="pcoded-inner-content">

                    <!-- [ breadcrumb ] start -->
                    <div class="page-header">
                    </div>
                    <!-- [ breadcrumb ] end -->

                    <div class="main-body">
                        <div class="page-wrapper">
            <div class="pcoded-content">
                <div class="pcoded-inner-content">
                    <!-- [ breadcrumb ] start -->
                    <div class="page-header">
                        <div class="page-block">
                            <div class="row align-items-center">
                                <div class="col-md-12">
                                    <div class="page-header-title" style="weight:80%;">
                                        <h5>전문가 찾기</h5>
                                    </div>
                                    <div class="find-list" style="weight:60%; float:left;">
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="/"><i class="feather icon-home"></i></a></li>
                                        <li class="breadcrumb-item"><a href="#!">재무 진단</a></li>
                                        <li class="breadcrumb-item"><a href="#!">전문가 찾기</a></li>
                                    </ul>
                                    </div>
                               <div class="reading-list" style="float : right;">
                                            <div id="search-menu">
                                            	<select class="js-example-basic-single form-control">
                                                    <option value="AS"></option>
                                                    <option value="AS">종합자산관리사</option>
                                                    <option value="AS">자산관리사</option>
                                                    <option value="AS">재무설계사</option>
                                              </select>
                                            </div>
                                           <div id="search-btn">
                                            <button type="button" class="btn btn-icon btn-primary btn-sm"><i class="fas fa-search"></i></button>
	                            		   </div>
	                            	</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </br></br>
					  <div class="reading-list" style="float:right;">
			             <a href=#!>최신순</a>ㅣ
			             <a href=#!>별점순</a>ㅣ
			    		 <a href=#!>후기순</a>ㅣ
			             <a href=#!>경력순</a>
		             </div>
		 			</br></br>
    				<!-- [ breadcrumb ] end -->
    				
                    <div class="main-body">
                        <div class="page-wrapper">
                            <!-- [ Main Content ] start -->
                            <div class="row">
                                <!-- [ Hyewon Choi] start -->
                                <div class="col-xl-4 col-md-6">
                                    <div class="card">
                                        <div class="card-block p-0">
                                            <div class="text-center project-main">
                                                <a href="/eListIn"><img class="img-fluid rounded-circle" src="images/user/avatar-5.jpg" alt="dashboard-user"></a>
                                                <h5 class="mt-4">최혜원</h5>
                                                <span>종합자산관리사
                                                </br>자산관리사 </br>경력2년</span>
                                            </div>
                                            <div class="border-top"></div>
                                            <div class="project-main">
                                                <div class="row text-center">
                                                    <div class="col-md-6 col-6">
                                                        <h6 class="text-muted"><i class="fas fa-star m-r-5"></i> 4.8</h6>
                                                    </div>
                                                    <div class="col-md-6 col-10">
                                                        <h6 class="text-muted m-0"><i class="fas fa-file-alt m-r-5"></i> 84개의 후기 </h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ Hyewon choi ] end -->
                                  <!-- [ Cheyeon kim ] start -->
                                <div class="col-xl-4 col-md-6">
                                    <div class="card">
                                        <div class="card-block p-0">
                                            <div class="text-center project-main">
                                                <a href="/eListIn"><img class="img-fluid rounded-circle" src="images/user/avatar-1.jpg" alt="dashboard-user"></a>
                                                <h5 class="mt-4">김채연</h5>
                                                <span>종합자산관리사
                                                </br>자산관리사</br>경력3년</span>
                                            </div>
                                            <div class="border-top"></div>
                                            <div class="project-main">
                                                <div class="row text-center">
                                                    <div class="col-md-6 col-6">
                                                        <h6 class="text-muted"><i class="fas fa-star m-r-5"></i> 4.2</h6>
                                                    </div>
                                                    <div class="col-md-6 col-10">
                                                        <h6 class="text-muted m-0"><i class="fas fa-file-alt m-r-5"></i> 101개의 후기 </h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ Cheyeon kim ] end -->
                                  <!-- [  jinyoung hong ] start -->
                                <div class="col-xl-4 col-md-6">
                                    <div class="card">
                                        <div class="card-block p-0">
                                            <div class="text-center project-main">
                                                <a href="/eListIn"><img class="img-fluid rounded-circle" src="images/user/avatar-3.jpg" alt="dashboard-user"></a>
                                                <h5 class="mt-4">홍진영</h5>
                                                <span>재무설계사
                                                </br>자산관리사</br>경력2년</span>
                                            </div>
                                            <div class="border-top"></div>
                                            <div class="project-main">
                                                <div class="row text-center">
                                                    <div class="col-md-6 col-6">
                                                        <h6 class="text-muted"><i class="fas fa-star m-r-5"></i> 4.4</h6>
                                                    </div>
                                                    <div class="col-md-6 col-10">
                                                        <h6 class="text-muted m-0"><i class="fas fa-file-alt m-r-5"></i> 62개의 후기 </h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ jinyoung hong ] end -->
            		               <!-- [  inhee kim ] start -->
                                <div class="col-xl-4 col-md-6">
                                    <div class="card">
                                        <div class="card-block p-0">
                                            <div class="text-center project-main">
                                                <a href="/eListIn"><img class="img-fluid rounded-circle" src="images/user/avatar-2.jpg" alt="dashboard-user"></a>
                                                <h5 class="mt-4">김인희</h5>
                                                <span>종합자산관리사
                                                </br>자산관리사</br>재무설계사</br>경력3년</span>
                                            </div>
                                            <div class="border-top"></div>
                                            <div class="project-main">
                                                <div class="row text-center">
                                                    <div class="col-md-6 col-6">
                                                        <h6 class="text-muted"><i class="fas fa-star m-r-5"></i> 4.6</h6>
                                                    </div>
                                                    <div class="col-md-6 col-10">
                                                        <h6 class="text-muted m-0"><i class="fas fa-file-alt m-r-5"></i> 132개의 후기 </h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ inhee kim ] end --> 
            		               <!-- [  nari kim ] start -->
                                <div class="col-xl-4 col-md-6">
                                    <div class="card">
                                        <div class="card-block p-0">
                                            <div class="text-center project-main">
                                                <a href="/eListIn"><img class="img-fluid rounded-circle" src="images/user/avatar-4.jpg" alt="dashboard-user"></a>
                                                <h5 class="mt-4">김나리</h5>
                                                <span>종합자산관리사
                                                </br>자산관리사</br>경력2년</span>
                                            </div>
                                            <div class="border-top"></div>
                                            <div class="project-main">
                                                <div class="row text-center">
                                                    <div class="col-md-6 col-6">
                                                        <h6 class="text-muted"><i class="fas fa-star m-r-5"></i> 4.8</h6>
                                                    </div>
                                                    <div class="col-md-6 col-10">
                                                        <h6 class="text-muted m-0"><i class="fas fa-file-alt m-r-5"></i> 84개의 후기 </h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ nari kim ] end -->
                            </div>
                            <!-- [ Main Content ] end -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   </div>
   </div>
   </div>
   </div> 
    <!-- [ Main Content ] end -->
    <jsp:include page="../main/footer.jsp"></jsp:include>
    
    <!-- Required Js -->
    <script src="js/vendor-all.min.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/pcoded.js"></script>

    <!-- Todo Js -->
    <script src="plugins/todo/js/todo.js"></script>

    <!-- select2 Js -->
    <script src="plugins/select2/js/select2.full.min.js"></script>

    <!-- multi-select Js -->
    <script src="plugins/multi-select/js/jquery.quicksearch.js"></script>
    <script src="plugins/multi-select/js/jquery.multi-select.js"></script>

    <!-- form-select-custom Js -->
    <script src="js/pages/form-select-custom.js"></script>

</body>
</html>