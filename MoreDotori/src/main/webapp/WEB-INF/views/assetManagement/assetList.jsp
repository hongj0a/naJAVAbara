<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<head>
    <title>MoreDotori AssetList</title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
    <!-- Meta -->
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

	<link rel="stylesheet" href="css/assetManagement/assetm.css">

</head>

<body>
    <!-- [ Pre-loader ] start -->
    <div class="loader-bg">
        <div class="loader-track">
            <div class="loader-fill"></div>
        </div>
    </div>
    <!-- [ Pre-loader ] End -->

    <!-- [ navigation menu ] start -->
    <nav class="pcoded-navbar">
        <div class="navbar-wrapper">
            <div class="navbar-brand header-logo">
                <a href="index.html" class="b-brand">
                    <div class="b-bg">
                        <i class="feather icon-trending-up"></i>
                    </div>
                    <span class="b-title">More Dotori</span>
                </a>
                <a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
            </div>
            <div class="navbar-content scroll-div">
                <ul class="nav pcoded-inner-navbar">
                    <li data-username="dashboard Default Ecommerce CRM Analytics Crypto Project" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-home"></i></span><span class="pcoded-mtext">나의 자산</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="index.html" class="">가계부 작성</a></li>
                            <li class=""><a href="dashboard-ecommerce.html" class="">자산목록 관리</a></li>
                            <li class=""><a href="dashboard-crm.html" class="">현황 및 통계</a></li>
                        </ul>
                    </li>
                    <li data-username="Vertical Horizontal Box Layout RTL fixed static collapse menu color icon dark" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-layout"></i></span><span class="pcoded-mtext">재무진단</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="layout-horizontal.html" class="" target="_blank">전문가 찾기</a></li>
                            <li class=""><a href="layout-box.html" class="" target="_blank">상담 내역</a></li>
                        </ul>
                    </li>
                    <li data-username="widget Statistic Data Table User card Chart" class="nav-item pcoded-hasmenu active pcoded-trigger">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-layers"></i></span><span class="pcoded-mtext">자유게시판</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="widget-statistic.html" class="">공지사항</a></li>
                            <li class=""><a href="widget-data.html" class="">PR게시판</a></li>
                            <li class=""><a href="widget-table.html" class="">자유게시판</a></li>
                        </ul>
                    </li>
                    <li data-username="basic components Button Alert Badges breadcrumb Paggination progress Tooltip popovers Carousel Cards Collapse Tabs pills Modal Grid System Typography Extra Shadows Embeds" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-box"></i></span><span class="pcoded-mtext">고객센터</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="bc_alert.html" class="">QnA</a></li>
                            <li class=""><a href="bc_button.html" class="">FAQ</a></li>
            </div>
        </div>
    </nav>
    <!-- [ navigation menu ] end -->

    <!-- [ Header ] start -->
    <header class="navbar pcoded-header navbar-expand-lg navbar-light">
        <div class="m-header">
            <a class="mobile-menu" id="mobile-collapse1" href="#!"><span></span></a>
            <a href="index.html" class="b-brand">
                   <div class="b-bg">
                       <i class="feather icon-trending-up"></i>
                   </div>
                   <span class="b-title">More Dotori</span>
               </a>
        </div>
        <a class="mobile-menu" id="mobile-header" href="#!">
            <i class="feather icon-more-horizontal"></i>
        </a>
        <div class="collapse navbar-collapse">
           <ul class="navbar-nav mr-auto">
           	<li><a href="#!" class="full-screen" onclick="javascript:toggleFullScreen()"><i class="feather icon-maximize"></i></a></li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li>
                    <div class="dropdown">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="icon feather icon-bell"></i></a>
                        <div class="dropdown-menu dropdown-menu-right notification">
                            <div class="noti-head">
                                <h6 class="d-inline-block m-b-0">알림</h6>
                                <div class="float-right">
                                    <a href="#!" class="m-r-10">읽음 표시</a>
                                    <a href="#!">전체 삭제</a>
                                </div>
                            </div>
                            <ul class="noti-body">
                                <li class="n-title">
                                    <p class="m-b-0">새로운 알림</p>
                                </li>
                                <li class="notification">
                                    <div class="media">
                                        <img class="img-radius" src="images/user/avatar-1.jpg" alt="Generic placeholder image">
                                        <div class="media-body">
                                            <p><strong>김채연</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>30분</span></p>
                                            <p>새로운 댓글이 달렸습니다.</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="n-title">
                                    <p class="m-b-0">지난 알림</p>
                                </li>
                                <li class="notification">
                                    <div class="media">
                                        <img class="img-radius" src="images/user/avatar-2.jpg" alt="Generic placeholder image">
                                        <div class="media-body">
                                            <p><strong>김인희</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>2일전</span></p>
                                            <p>새로운 댓글이 달렸습니다.</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="notification">
                                    <div class="media">
                                        <img class="img-radius" src="images/user/avatar-3.jpg" alt="Generic placeholder image">
                                        <div class="media-body">
                                            <p><strong>홍진영</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>2일전</span></p>
                                            <p>새로운 댓글이 달렸습니다.</p>
                                        </div>
                                    </div>
                                </li>
            	               <li class="notification">
                                    <div class="media">
                                        <img class="img-radius" src="images/user/avatar-4.jpg" alt="Generic placeholder image">
                                        <div class="media-body">
                                            <p><strong>김나리</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>3일전</span></p>
                                            <p>새로운 댓글이 달렸습니다.</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <div class="noti-footer">
                                <a href="#!">전체보기</a>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="dropdown drp-user">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon feather icon-settings"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right profile-notification">
                            <div class="pro-head">
                                <img src="images/user/avatar-5.jpg" class="img-radius" alt="User-Profile-Image">
                                <span>최혜원</span>
                                <a href="auth-signin.html" class="dud-logout" title="Logout">
                                    <i class="feather icon-log-out"></i>
                                </a>
                            </div>
                            <ul class="pro-body">
                                <li><a href="#!" class="dropdown-item"><i class="feather icon-settings"></i> 정보수정</a></li>
                                <li><a href="#!" class="dropdown-item"><i class="feather icon-user"></i> 로그아웃</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </header>
    <!-- [ Header ] end -->

    <!-- [ chat user list ] start -->
    <section class="header-user-list">
        <div class="h-list-body">
            <a href="#!" class="h-close-text"><i class="feather icon-chevrons-right"></i></a>
            <div class="main-friend-cont scroll-div">
                <div class="main-friend-list">
                    <div class="media userlist-box" data-id="2" data-status="online" data-username="Lary Doe">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="images/user/avatar-2.jpg" alt="Generic placeholder image">
                            <div class="live-status">1</div>
                        </a>
                        <div class="media-body">
                            <h6 class="chat-header">Lary Doe<small class="d-block text-c-green">online</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="3" data-status="online" data-username="Alice">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="images/user/avatar-3.jpg" alt="Generic placeholder image"></a>
                        <div class="media-body">
                            <h6 class="chat-header">Alice<small class="d-block text-c-green">online</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="4" data-status="offline" data-username="Alia">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="images/user/avatar-1.jpg" alt="Generic placeholder image">
                            <div class="live-status">1</div>
                        </a>
                        <div class="media-body">
                            <h6 class="chat-header">Alia<small class="d-block text-muted">10 min ago</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="5" data-status="offline" data-username="Suzen">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="images/user/avatar-4.jpg" alt="Generic placeholder image"></a>
                        <div class="media-body">
                            <h6 class="chat-header">Suzen<small class="d-block text-muted">15 min ago</small></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- [ chat user list ] end -->

    <!-- [ chat message ] start -->
    <section class="header-chat">
        <div class="h-list-header">
            <h6>Josephin Doe</h6>
            <a href="#!" class="h-back-user-list"><i class="feather icon-chevron-left"></i></a>
        </div>
        <div class="h-list-body">
            <div class="main-chat-cont scroll-div">
                <div class="main-friend-chat">
                    <div class="media chat-messages">
                        <a class="media-left photo-table" href="#!"><img class="media-object img-radius img-radius m-t-5" src="images/user/avatar-2.jpg" alt="Generic placeholder image"></a>
                        <div class="media-body chat-menu-content">
                            <div class="">
                                <p class="chat-cont">hello Datta! Will you tell me something</p>
                                <p class="chat-cont">about yourself?</p>
                            </div>
                            <p class="chat-time">8:20 a.m.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- [ chat message ] end -->


    <!-- [ Main Content ] start -->
    <div class="pcoded-main-container">
        <div class="pcoded-wrapper">
            <div class="pcoded-content">
                <div class="pcoded-inner-content">
                    <!-- [ breadcrumb ] start -->
                    <div class="page-header">
                        <div class="page-block">
                            <div class="row align-items-center">
                                <div class="col-md-12">
                                    <div class="page-header-title" style="weight:80%;">
                                        <h5>자산목록 관리</h5>
                                    </div>
                                    <div class="find-list" style="weight:60%; float:left;">
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="/"><i class="feather icon-home"></i></a></li>
                                        <li class="breadcrumb-item"><a href="#!">나의 자산</a></li>
                                        <li class="breadcrumb-item"><a href="#!">자산목록 관리</a></li>
                                    </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
		             </div>
					  <div class="reading-list">
                                            <div id="exampleModalLive" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLiveLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div id="contentsize-plus" class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLiveLabel">항목 추가</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        </div>
                                                        <div class="modal-body">
                                                        </br>
                                            			<div class="col-12">
                                            				<span>타입 :  </span>
                                                    		&nbsp;
                                                    		<select class="js-example-basic-single form-control plus-imp">
                                                            	<option value="현금">현금</option>
                                                            	<option value="통장">통장</option>
                                                            	<option value="신용카드">신용카드</option>
                                                            	<option value="체크카드">체크카드</option>
                                                        	</select> 
                                                     		</div>
                                                     	</br>
                                                        <div class="col-12">
                                                     		<span>별칭 :  </span>
                                                     		&nbsp;
                                                        	<input type="address" class="form-control plus-imp">
                                                        </div>
                                                        </br>
                                                        <div class="col-12">
                                                     		<span>잔액 :  </span>
                                                     		&nbsp;
                                                        	<input type="address" class="form-control plus-imp">
                                                        </div>
                                                        </br>
                                                        <div class="col-12">
                                                     		<span>메모 :  </span>
                                                     		&nbsp;
                                                        	<input type="address" class="form-control plus-imp">
                                                        </div>	
                                                        </br>
                                                      </div>
                                                        <div id="plus-size" class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                                            <button type="submit" class="btn btn-primary">저장</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href=#! data-toggle="modal" data-target="#exampleModalLive">+ 항목 추가</a>
                                        </div>
		 			</br></br>
    				<!-- [ breadcrumb ] end -->
    				
                    <div class="main-body">
                        <div class="page-wrapper">
                            <!-- [ Main Content ] start -->
                            <div class="row">
                              <div id="cardsize1" class="card">
                              	 <div class="card-block p-0">
                             		 <div id="sizesize" class="text-center project-main">
	                                   <div class="col-xl-12 col-md-12" id="colxlmd">
										  <div>
												<table>
												  <tr>
												  	<th>분류</th>
												    <th>별칭</th>
												    <th>잔액</th>
												    <th>메모</th>
												    <th>삭제</th>
												  </tr>
												  <tr>
												    <td>현금</td>
												    <td>웅앵웅앵웅</td>
												    <td>10,000원</td>
												    <td>웅앵</td>
												    <td><a href=#!>삭제</a></td>
												  </tr>
												  <tr>
												    <td>통장</td>
												    <td>웅앵웅앵웅</td>
												    <td>100,000원</td>
												  	<td>웅앵</td>
												    <td><a href=#!>삭제</a></td>
												  </tr>
												  <tr>
												    <td>신용카드</td>
												    <td>웅앵웅앵웅</td>
												    <td>230,000원</td>
												    <td>웅앵</td>
												    <td><a href=#!>삭제</a></td>
												  </tr>
												  <tr>
												    <td>체크카드</td>
												 	<td>웅앵웅앵웅</td>
												    <td>5,000,000원</td>
												    <td>웅앵</td>
												    <td><a href=#!>삭제</a></td>
												</tr>
											</table>
                              		   </div>
                              		</div>
                              	</div>
                             </div>
                            </div>
                        </div>
                    </div>
                </div>
                 <!-- [ Main Content ] end -->
            </div>
        </div>
    </div>
    <!-- [ Main Content ] end -->

    <!-- Warning Section start -->
    <!-- Older IE warning message -->
    <!--[if lt IE 11]>
    <div class="ie-warning">
        <h1>Warning!!</h1>
        <p>You are using an outdated version of Internet Explorer, please upgrade
           <br/>to any of the following web browsers to access this website.
        </p>
        <div class="iew-container">
            <ul class="iew-download">
                <li>
                    <a href="http://www.google.com/chrome/">
                        <img src="images/browser/chrome.png" alt="Chrome">
                        <div>Chrome</div>
                    </a>
                </li>
                <li>
                    <a href="https://www.mozilla.org/en-US/firefox/new/">
                        <img src="images/browser/firefox.png" alt="Firefox">
                        <div>Firefox</div>
                    </a>
                </li>
                <li>
                    <a href="http://www.opera.com">
                        <img src="images/browser/opera.png" alt="Opera">
                        <div>Opera</div>
                    </a>
                </li>
                <li>
                    <a href="https://www.apple.com/safari/">
                        <img src="images/browser/safari.png" alt="Safari">
                        <div>Safari</div>
                    </a>
                </li>
                <li>
                    <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                        <img src="images/browser/ie.png" alt="">
                        <div>IE (11 & above)</div>
                    </a>
                </li>
            </ul>
        </div>
        <p>Sorry for the inconvenience!</p>
    </div>
    <![endif]-->
    <!-- Warning Section Ends -->

    <!-- Required Js -->
    <script src="js/vendor-all.min.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/pcoded.js"></script>
    

    <!-- Todo Js -->
    <script src="plugins/todo/js/todo.js"></script>

</body>
</html>
