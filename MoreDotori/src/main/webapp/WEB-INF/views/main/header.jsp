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
    <link rel="stylesheet" href="css/main/header.css">    
</head>

<body class="layout-8">
    <!-- [ navigation menu ] start -->
    <nav id="header_menu" class="pcoded-navbar menu-light brand-lightblue active-lightblue">
        <div class="navbar-wrapper">
            <div class="navbar-brand header-logo" id="moredotori_menu">
                <a href="/main" class="b-brand">
                    <div class="b-bg">
                        <i class="feather icon-trending-up"></i>
                    </div>
                    <span class="b-title">MORE DOTORI</span>
                </a>
                <a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
            </div>
            <div class="navbar-content scroll-div">
                <ul class="nav pcoded-inner-navbar" id="moredotori_navbar">
                    <!-- 회원 메뉴 -->
                    <li id="menu0" class="nav-item pcoded-menu-caption">
                        <label>MEMBER MENU</label>
                    </li>                    
                    <li id="menu1" data-username="dashboard Ecommerce CRM Analytics Crypto Project" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-book"></i></span><span class="pcoded-mtext">나의 자산</span></a>
                        <ul class="pcoded-submenu">
                            <li id="menu1_1"><a href="/book" class="">가계부 작성</a></li>
                            <li id="menu1_2"><a href="" class="">자산목록관리</a></li>
                            <li id="menu1_3"><a href="/asset_cond" class="">현황 및 통계 </a></li>
                        </ul>
                    </li>
                    <li id="menu2" data-username="Vertical Horizontal Box Layout RTL fixed static collapse menu color icon dark" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-check-square"></i></span><span class="pcoded-mtext">재무진단</span></a>
                        <ul class="pcoded-submenu">
                            <li id="menu2_1"><a href="" class="" target="_blank">전문가찾기</a></li>
                            <li id="menu2_2"><a href="" class="" target="_blank">상담내역</a></li>
                        </ul>
                    </li>
                    
                    <!-- 전문가 메뉴 -->
                    <li id="menu3" class="nav-item pcoded-menu-caption">
                        <label>EXPERT MENU</label>
                    </li>
                    <li id="menu4" data-username="widget Statistic Data Table User card Chart" class="nav-item">
                        <a href="/expert_cal" class="nav-link "><span class="pcoded-micon"><i class="feather icon-calendar"></i></span><span class="pcoded-mtext">상담 관리</span></a>
                    </li>                                       
                    
                    <!-- 공통 메뉴 -->
                    <li id="menu5" class="nav-item pcoded-menu-caption">
                        <label>ETC MENU</label>
                    </li>                     
                    
                    <li id="menu6" data-username="widget Statistic Data Table User card Chart" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-message-square"></i></span><span class="pcoded-mtext">자유게시판</span></a>
                        <ul class="pcoded-submenu">
                            <li id="menu6_1"><a href="/board_notice" class="">공지사항</a></li>
                            <li id="menu6_2"><a href="/board_pr" class="">PR게시판</a></li>
                            <li id="menu6_3"><a href="/board_free" class="">자유게시판</a></li>
                        </ul>
                    </li>
                    <li id="menu7" data-username="widget Statistic Data Table User card Chart" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-help-circle"></i></span><span class="pcoded-mtext">고객센터</span></a>
                        <ul class="pcoded-submenu">
                            <li id="menu7_1"><a href="/faq" class="">F A Q</a></li>
                            <li id="menu7_2"><a href="/qna" class="">Q & A</a></li>
                        </ul>
                    </li>                                   
                                       
                    <!-- 관리자 메뉴 -->
                    <li id="menu8" class="nav-item pcoded-menu-caption">
                        <label>NAJAVABARA MENU</label>
                    </li>                    
                    <li id="menu9" data-username="widget Statistic Data Table User card Chart" class="nav-item">
                        <a href="/mem" class="nav-link "><span class="pcoded-micon"><i class="feather icon-users"></i></span><span class="pcoded-mtext">회원 관리</span></a>
                    </li>
                    <li id="menu10" data-username="widget Statistic Data Table User card Chart" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-clipboard"></i></span><span class="pcoded-mtext">게시물 관리</span></a>
                        <ul class="pcoded-submenu">
                            <li id="menu10_1"><a href="/board_notice" class="">공지사항</a></li>
                            <li id="menu10_2"><a href="/report" class="">신고내역</a></li>
                        </ul>
                    </li>
                     <li id="menu11" data-username="widget Statistic Data Table User card Chart" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-help-circle"></i></span><span class="pcoded-mtext">고객센터</span></a>
                        <ul class="pcoded-submenu">
                            <li id="menu11_1"><a href="/faq" class="">F A Q</a></li>
                            <li id="menu11_2"><a href="/qna" class="">Q & A</a></li>
                        </ul>
                    </li>                    
                </ul>
            </div>
        </div>
    </nav>
    <!-- [ navigation menu ] end -->

    <!-- [ Header ] start -->
    <header class="navbar pcoded-header navbar-expand-lg navbar-light header-lightblue headerpos-fixed" id="moredotori_header">
        <div class="m-header">
            <a class="mobile-menu" id="mobile-collapse1" href="#!"><span></span></a>
            <a href="/main" class="b-brand">
                   <div class="b-bg">
                       <i class="feather icon-trending-up"></i>
                   </div>
                   <span class="b-title">MORE DOTORI</span>
               </a>
        </div>
        <a class="mobile-menu" id="mobile-header" href="#!">
            <i class="feather icon-more-horizontal"></i>
        </a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
            	<!-- 헤더오른쪽 -->
            </ul>
            <ul class="navbar-nav ml-auto">
            	<li>
            		<a href="/signin">로그인</a>
            	</li>
            	
                <li>
                    <div class="dropdown2 dropdown">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                       	    <img src="images/user/avatar-1.jpg" class="img-radius width_40px magin_right_10" alt="User-Profile-Image">
                            <span>김채연님</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right notification">
                            <div class="noti-head">
                                <h6 class="d-inline-block m-b-0">김채연님의 프로필</h6>
                            </div>
                            <ul class="noti-body">
                                <li class="notification" id="notification2">
                                        <div class="media-body profile">
                                        <img class="img-radius" id="profile_img" src="images/user/avatar-1.jpg" alt="Generic placeholder image">
                                            <p><strong>김채연</strong>님 </p> 
                                            <p>kcy8729@gmail.com</p>
                                            <p><a href="/mypage" id="update_info"> 정보수정 </a></p>
                                        </div>
                                </li>
                            </ul>
                            <a href="#!">
                            <div class="noti-footer" id="logout">
                                                                   로그아웃 
                            </div>
                            </a>
                        </div>
                    </div>
                </li>
            
                <li>
                    <div class="dropdown">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="icon feather icon-bell"></i><div id="noti_bell_count"><p>+99</p></div></a>
                        <div class="dropdown-menu dropdown-menu-right notification">
                            <div class="noti-head">
                                <h6 class="d-inline-block m-b-0">알림</h6>
                            </div>
                            <ul class="noti-body"  id="noti_menu_scroll">
                                <li class="notification2 notification header_notice">
                                    <div class="media">
                                        <div class="media-body">
                                            <p><strong>[ 말머리 ]</strong> 제목제목 <a href="#!"><span><i class="feather icon-x"></i></span></a></p>
                                            <p> - 내용웅앵웅조곰만보여주지... </p>
                                            <span>2019.07.09</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="notification2 notification header_notice">
                                    <div class="media">
                                        <div class="media-body">
                                            <p><strong>[ 말머리 ]</strong> 제목제목 <a href="#!"><span><i class="feather icon-x"></i></span></a></p>
                                            <p> - 내용웅앵웅조곰만보여주지... </p>
                                            <span>2019.07.09</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="notification2 notification header_notice">
                                    <div class="media">
                                        <div class="media-body">
                                            <p><strong>[ 말머리 ]</strong> 제목제목 <a href="#!"><span><i class="feather icon-x"></i></span></a></p>
                                            <p> - 내용웅앵웅조곰만보여주지... </p>
                                            <span>2019.07.09</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="notification2 notification header_notice">
                                    <div class="media">
                                        <div class="media-body">
                                            <p><strong>[ 말머리 ]</strong> 제목제목 <a href="#!"><span><i class="feather icon-x"></i></span></a></p>
                                            <p> - 내용웅앵웅조곰만보여주지... </p>
                                            <span>2019.07.09</span>
                                        </div>
                                    </div>
                                </li>                               
                            </ul>
                            <a href="/noti">
                            <div class="noti-footer" id="whole_noti">
                              	알림 전체보기
                            </div>
                            </a>
                        </div>
                    </div>
                </li>
                
                <li><a href="#!" class="full-screen" onclick="javascript:toggleFullScreen()"><i class="feather icon-maximize"></i></a></li>
            </ul>
        </div>
    </header>
    <!-- [ Header ] end -->

    <!-- [ chat user list ] start -->
    <section class="header-user-list">

        <div class="h-list-body">
            <div class="main-friend-cont scroll-div">
                <div class="main-friend-list">

                </div>
            </div>
        </div>
    </section>
    <!-- [ chat user list ] end -->

    <!-- [ chat message ] start -->
    <section class="header-chat">
        <div class="h-list-body">
            <div class="main-chat-cont scroll-div">
                <div class="main-friend-chat">

                </div>
            </div>
        </div>
    </section>
    <!-- [ chat message ] end -->

    <!-- Required Js -->
    <script src="js/vendor-all.min.js">
</script>
    <script src="plugins/bootstrap/js/bootstrap.min.js">
</script>
    <script src="js/pcoded.min.js">
</script>

</body>
</html>