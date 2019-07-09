<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<head>
    <title>Datta Able - HTML Documentation helper file</title>
    <!--[if lt IE 10]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- meta -->
    <meta name="description" content="Datta Able bootstrap admin template documentation helper file." />
    <meta name="author" content="CodedThemes" />
    <!-- favicon -->
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <!-- required CSS -->
    <link rel="stylesheet" href="fonts/fontawesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="plugins/animation/css/animate.min.css">
    <link rel="stylesheet" href="plugins/prism/css/prism.min.css">
    <!-- custom CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- internal CSS -->
    <style>
        .pcoded-navbar .pcoded-inner-navbar>li.active>a,
        .pcoded-navbar .pcoded-inner-navbar>li.pcoded-trigger>a {
            background: transparent;
        }

        .pcoded-navbar .pcoded-inner-navbar>li.active>a,
        .pcoded-navbar .pcoded-inner-navbar>li>a.active {
            background: #333f54;
            color: #fff;
            position: relative;
        }

        .pcoded-navbar .pcoded-inner-navbar>li.active>a,
        .pcoded-navbar .pcoded-inner-navbar>li>a.active>.pcoded-micon {
            color: #fff;
        }

        .pcoded-navbar .pcoded-inner-navbar>li>a.active:after {
            content: "";
            background-color: #1dc4e9;
            z-index: 1027;
            position: absolute;
            left: 0;
            top: 0px;
            width: 3px;
            height: 100%;
        }

        .nav-pills .nav-link.active,
        .nav-pills .show>.nav-link {
            background: #04a9f5;
            box-shadow: none;
        }

        pre[class*=language-]>code {
            border-left: 5px solid #04a9f5;
        }

        .nav-pills>li i {
            display: inline-block;
            font-size: 15px;
            padding: 0px 0;
        }
    </style>
</head>

<body>
    <!-- [ Pre-loader ] start -->
    <div class="loader-bg">
        <div class="loader-track">
            <div class="loader-fill"></div>
        </div>
    </div>
    <!-- [ Pre-loader ] End -->
    
    <nav class="pcoded-navbar">
        <div class="navbar-wrapper">
            <div class="navbar-brand header-logo">
                <a href="index.html">
                    <img class="img-fluid" src="images/logo-docs.png" alt="Datta Able Logo" />
                </a>
                <a class="mobile-menu" id="mobile-collapse" href="javascript:"><span></span></a>
            </div>
            <div class="navbar-content scroll-div">
                <ul class="nav pcoded-inner-navbar">
                    <li class="nav-item pcoded-menu-caption">
                        <label>Getting started</label>
                    </li>
                    <li class="nav-item"><a href="#home" class="nav-link active"><span class="pcoded-micon"><i class="feather icon-home"></i></span><span class="pcoded-mtext">Datta Able</span></a></li>
                    <li class="nav-item"><a href="#qc" class="nav-link"><span class="pcoded-micon"><i class="feather icon-navigation"></i></span><span class="pcoded-mtext">Quick Start</span></a></li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>Structure</label>
                    </li>
                    <li class="nav-item"><a href="#filestruct" class="nav-link"><span class="pcoded-micon"><i class="far fa-folder-open"></i></span><span class="pcoded-mtext">Directory Structure</span></a></li>
                    <li class="nav-item"><a href="#filestruct" class="nav-link"><span class="pcoded-micon"><i class="feather icon-file-text"></i></span><span class="pcoded-mtext">Page Structure</span></a></li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>layouts</label>
                    </li>
                    <li class="nav-item"><a href="#layouts" class="nav-link"><span class="pcoded-micon"><i class="feather icon-layout"></i></span><span class="pcoded-mtext">Layout</span></a></li>
                    <li class="nav-item"><a href="#menucust" class="nav-link"><span class="pcoded-micon"><i class="feather icon-scissors"></i></span><span class="pcoded-mtext">Theme Customizer</span></a></li>
                    <li class="nav-item"><a href="#scss" class="nav-link"><span class="pcoded-micon"><i class="fab fa-sass"></i></span><span class="pcoded-mtext">Scss variables</span></a></li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>Resources & References</label>
                    </li>
                    <li class="nav-item"><a href="#plugins" class="nav-link"><span class="pcoded-micon"><i class="fas fa-plug"></i></span><span class="pcoded-mtext">Plugins</span></a></li>
                    <li class="nav-item"><a href="#references" class="nav-link"><span class="pcoded-micon"><i class="fas fa-plug"></i></span><span class="pcoded-mtext">Extra References</span></a></li>
                    <li class="nav-item"><a href="#faq" class="nav-link"><span class="pcoded-micon"><i class="feather icon-help-circle"></i></span><span class="pcoded-mtext">FAQ</span></a></li>
                    <li class="nav-item"><a href="#cl" class="nav-link"><span class="pcoded-micon"><i class="feather icon-book"></i></span><span class="pcoded-mtext">Change Log</span></a></li>
                </ul>
            </div>
        </div>
    </nav>


    <header class="navbar pcoded-header navbar-expand-lg navbar-light">
        <div class="m-header">
            <a class="mobile-menu" id="mobile-collapse1" href="javascript:"><span></span></a>
            <a href="index.html">
                <img class="img-fluid" src="images/logo-docs.png" alt="Datta Able Logo" />
            </a>
        </div>
        <a class="mobile-menu" id="mobile-header" href="javascript:">
            <i class="feather icon-more-horizontal"></i>
        </a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <li><a href="javascript:" class="full-screen" onclick="javascript:toggleFullScreen()"><i class="feather icon-maximize"></i></a></li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li>
                    <form action="https://codedthemes.support-hub.io" target="_blank">
                        <button type="submit" class="btn btn-secondary"><i class="far fa-life-ring"></i>Support</button>
                    </form>
                </li>
                <li>
                    <form action="https://www.youtube.com/channel/UCiZG__BaRkT1OuZl5ifzO6A/playlists" target="_blank">
                        <button type="submit" class="btn btn-danger"><i class="far fa-life-ring"></i>Video Tutorials</button>
                    </form>
                </li>
            </ul>
        </div>
    </header>


    <div class="pcoded-main-container" id="home">
        <div class="pcoded-wrapper">
            <div class="pcoded-content">
                <div class="pcoded-inner-content">
                    <div class="main-body">
                        <div class="page-wrapper">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>채연씹바보,,</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-block">
                                            <p>Documentation for easy setup of Datta Able Template functionality. You may also watch <a href="https://www.youtube.com/channel/UCiZG__BaRkT1OuZl5ifzO6A/playlists?" target="_blank">video tutorials</a>.</p>
                                            <h6 class="d-inline">Last Update : </h6>
                                            <p class="d-inline"><a href="https://codedthemes.com">16-01-2019</a></p> <br />
                                            <h6 class="d-inline">Author : </h6>
                                            <p class="d-inline"><a href="https://codedthemes.com">Codedthemes</a></p>
                                            <br>
                                            <h6 class="d-inline">Support : </h6>
                                            <p class="d-inline"><a href="https://codedthemes.support-hub.io/" target="_blank">https://codedthemes.support-hub.io/</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="card" id="qc">
                                        <div class="card-header">
                                            <h5>Quick Start</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i>Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-block">
                                            <p>Copy code in your page. It just the simple way to getting start with Datta Able.</p>
                                            <a class="btn btn-primary" data-toggle="collapse" href="#collapseqc" role="button" aria-Expand="false" aria-controls="collapseqc">CLICK TO EXPAND / COLLAPSE CODE</a>
                                            <a class="btn btn-outline-danger" target="_blank" href="https://www.youtube.com/watch?v=bYbV_PFdfQs&t=1s"><i class="feather feather icon-video"></i>QUICK START TUTORIAL VIDEO</a>
                                            <div class="collapse" id="collapseqc">
                                                <pre>
                                                    <code class="language-html">
                                                        &lt;!DOCTYPE html&gt;
                                                        &lt;html lang="en"&gt;

                                                        &lt;head&gt;
                                                            &lt;title&gt;Datta Able | Admin template&lt;/title&gt;
                                                            &lt;!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries --&gt;
                                                            &lt;!-- WARNING: Respond.js doesn't work if you view the page via file:// --&gt;
                                                            &lt;!--[if lt IE 10]&gt;
                                                                &lt;script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"&gt;&lt;/script&gt;
                                                                &lt;script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"&gt;&lt;/script&gt;
                                                                &lt;![endif]--&gt;
                                                            &lt;!-- Meta --&gt;
                                                            &lt;meta charset="utf-8"&gt;
                                                            &lt;meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"&gt;
                                                            &lt;meta http-equiv="X-UA-Compatible" content="IE=edge" /&gt;
                                                            &lt;meta name="description" content="Datta Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." /&gt;
                                                            &lt;meta name="keywords" content="flat ui, admin Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app"&gt;
                                                            &lt;meta name="author" content="Codedthemes" /&gt;

                                                            &lt;!-- Favicon icon --&gt;
                                                            &lt;link rel="icon" href="images/favicon.ico" type="image/x-icon"&gt;
                                                            &lt;!-- fontawesome icon --&gt;
                                                            &lt;link rel="stylesheet" href="fonts/fontawesome/css/fontawesome-all.min.css"&gt;
                                                            &lt;!-- animation css --&gt;
                                                            &lt;link rel="stylesheet" href="plugins/animation/css/animate.min.css"&gt;
                                                            &lt;!-- vendor css --&gt;
                                                            &lt;link rel="stylesheet" href="css/style.css"&gt;

                                                        &lt;/head&gt;

                                                        &lt;body&gt;
                                                            &lt;!-- [ Pre-loader ] start --&gt;
                                                            &lt;div class="loader-bg"&gt;
                                                                &lt;div class="loader-track"&gt;
                                                                    &lt;div class="loader-fill"&gt;&lt;/div&gt;
                                                                &lt;/div&gt;
                                                            &lt;/div&gt;
                                                            &lt;!-- [ Pre-loader ] End --&gt;

                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar"&gt;
                                                                &lt;div class="navbar-wrapper"&gt;
                                                                &lt;!-- put Logo is hear --&gt;
                                                                &lt;div class="navbar-brand header-logo"&gt;
                                                                &lt;a href="index.html" class="b-brand"&gt;
                                                                   &lt;div class="b-bg"&gt;
                                                                       &lt;i class="feather icon-trending-up"&gt;&lt;/i&gt;
                                                                   &lt;/div&gt;
                                                                   &lt;span class="b-title"&gt;Datta Able&lt;/span&gt;
                                                                &lt;/a&gt;
                                                                    &lt;a class="mobile-menu" id="mobile-collapse" href="javascript:"&gt;&lt;span&gt;&lt;/span&gt;&lt;/a&gt;
                                                                    &lt;/div&gt;
                                                                    &lt;!-- end Logo is hear --&gt;
                                                                    &lt;div class="navbar-content scroll-div"&gt;
                                                                        &lt;ul class="nav pcoded-inner-navbar"&gt;
                                                                            &lt;li class="nav-item pcoded-menu-caption"&gt;
                                                                                &lt;label&gt;Navigation&lt;/label&gt;
                                                                            &lt;/li&gt;
                                                                            &lt;li data-username="dashboard Default Ecommerce CRM Analytics Crypto Project" class="nav-item"&gt;
                                                                                &lt;a href="index.html" class="nav-link "&gt;&lt;span class="pcoded-micon"&gt;&lt;i class="feather icon-home"&gt;&lt;/i&gt;&lt;/span&gt;&lt;span class="pcoded-mtext"&gt;Dashboard&lt;/span&gt;&lt;/a&gt;
                                                                            &lt;/li&gt;
                                                                            &lt;li class="nav-item pcoded-menu-caption"&gt;
                                                                                &lt;label&gt;Other&lt;/label&gt;
                                                                            &lt;/li&gt;
                                                                            &lt;li data-username="Menu levels Menu level 2.1 Menu level 2.2" class="nav-item pcoded-hasmenu"&gt;
                                                                                &lt;a href="javascript:" class="nav-link "&gt;&lt;span class="pcoded-micon"&gt;&lt;i class="feather icon-menu"&gt;&lt;/i&gt;&lt;/span&gt;&lt;span class="pcoded-mtext"&gt;Menu levels&lt;/span&gt;&lt;/a&gt;
                                                                                &lt;ul class="pcoded-submenu"&gt;
                                                                                    &lt;li class=""&gt;&lt;a href="" class=""&gt;Menu Level 2.1&lt;/a&gt;&lt;/li&gt;
                                                                                    &lt;li class="pcoded-hasmenu"&gt;
                                                                                        &lt;a href="javascript:" class=""&gt;Menu level 2.2&lt;/a&gt;
                                                                                        &lt;ul class="pcoded-submenu"&gt;
                                                                                            &lt;li class=""&gt;&lt;a href="" class=""&gt;Menu level 3.1&lt;/a&gt;&lt;/li&gt;
                                                                                            &lt;li class=""&gt;&lt;a href="" class=""&gt;Menu level 3.2&lt;/a&gt;&lt;/li&gt;
                                                                                        &lt;/ul&gt;
                                                                                    &lt;/li&gt;
                                                                                &lt;/ul&gt;
                                                                            &lt;/li&gt;
                                                                            &lt;li data-username="Disabled Menu" class="nav-item disabled"&gt;&lt;a href="javascript:" class="nav-link"&gt;&lt;span class="pcoded-micon"&gt;&lt;i class="feather icon-power"&gt;&lt;/i&gt;&lt;/span&gt;&lt;span class="pcoded-mtext"&gt;Disabled menu&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;
                                                                            &lt;li data-username="Sample Page" class="nav-item active"&gt;&lt;a href="sample-page.html" class="nav-link"&gt;&lt;span class="pcoded-micon"&gt;&lt;i class="feather icon-sidebar"&gt;&lt;/i&gt;&lt;/span&gt;&lt;span class="pcoded-mtext"&gt;Sample page&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;
                                                                            &lt;li class="nav-item pcoded-menu-caption"&gt;
                                                                                &lt;label&gt;Support&lt;/label&gt;
                                                                            &lt;/li&gt;
                                                                            &lt;li data-username="Documentation" class="nav-item"&gt;&lt;a href="http://html.codedthemes.com/datta-able/bootstrap/default/docs.html" class="nav-link" target="_blank"&gt;&lt;span class="pcoded-micon"&gt;&lt;i class="feather icon-book"&gt;&lt;/i&gt;&lt;/span&gt;&lt;span class="pcoded-mtext"&gt;Documentation&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;
                                                                            &lt;li data-username="Need Support" class="nav-item"&gt;&lt;a href="https://codedthemes.support-hub.io/" class="nav-link" target="_blank"&gt;&lt;span class="pcoded-micon"&gt;&lt;i class="feather icon-help-circle"&gt;&lt;/i&gt;&lt;/span&gt;&lt;span class="pcoded-mtext"&gt;Need
                                                                                        support ?&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;
                                                                        &lt;/ul&gt;
                                                                    &lt;/div&gt;
                                                                &lt;/div&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;

                                                            &lt;!-- [ Header ] start --&gt;
                                                            &lt;header class="navbar pcoded-header navbar-expand-lg navbar-light"&gt;
                                                                &lt;div class="m-header"&gt;
                                                                    &lt;a class="mobile-menu" id="mobile-collapse1" href="javascript:"&gt;&lt;span&gt;&lt;/span&gt;&lt;/a&gt;
                                                                    &lt;a href="index.html"&gt;
                                                                        &lt;img class="img-fluid" src="images/logo.png" alt="Theme-Logo" /&gt;
                                                                    &lt;/a&gt;
                                                                &lt;/div&gt;
                                                                &lt;a class="mobile-menu" id="mobile-header" href="javascript:"&gt;
                                                                    &lt;i class="feather icon-more-horizontal"&gt;&lt;/i&gt;
                                                                &lt;/a&gt;
                                                                &lt;div class="collapse navbar-collapse"&gt;
                                                                    &lt;ul class="navbar-nav mr-auto"&gt;
                                                                        &lt;li&gt;&lt;a href="javascript:" class="full-screen" onclick="javascript:toggleFullScreen()"&gt;&lt;i class="feather icon-maximize"&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;
                                                                        &lt;li class="nav-item dropdown"&gt;
                                                                            &lt;a class="dropdown-toggle" href="javascript:" data-toggle="dropdown"&gt;Dropdown&lt;/a&gt;
                                                                            &lt;ul class="dropdown-menu"&gt;
                                                                                &lt;li&gt;&lt;a class="dropdown-item" href="javascript:"&gt;Action&lt;/a&gt;&lt;/li&gt;
                                                                                &lt;li&gt;&lt;a class="dropdown-item" href="javascript:"&gt;Another action&lt;/a&gt;&lt;/li&gt;
                                                                                &lt;li&gt;&lt;a class="dropdown-item" href="javascript:"&gt;Something else here&lt;/a&gt;&lt;/li&gt;
                                                                            &lt;/ul&gt;
                                                                        &lt;/li&gt;
                                                                        &lt;li class="nav-item"&gt;
                                                                            &lt;div class="main-search"&gt;
                                                                                &lt;div class="input-group"&gt;
                                                                                    &lt;input type="text" id="m-search" class="form-control" placeholder="Search . . ."&gt;
                                                                                    &lt;a href="javascript:" class="input-group-append search-close"&gt;
                                                                                        &lt;i class="feather icon-x input-group-text"&gt;&lt;/i&gt;
                                                                                    &lt;/a&gt;
                                                                                    &lt;span class="input-group-append search-btn btn btn-primary"&gt;
                                                                                        &lt;i class="feather icon-search input-group-text"&gt;&lt;/i&gt;
                                                                                    &lt;/span&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                        &lt;/li&gt;
                                                                    &lt;/ul&gt;
                                                                    &lt;ul class="navbar-nav ml-auto"&gt;
                                                                        &lt;li&gt;
                                                                            &lt;div class="dropdown"&gt;
                                                                                &lt;a class="dropdown-toggle" href="javascript:" data-toggle="dropdown"&gt;&lt;i class="icon feather icon-bell"&gt;&lt;/i&gt;&lt;/a&gt;
                                                                                &lt;div class="dropdown-menu dropdown-menu-right notification"&gt;
                                                                                    &lt;div class="noti-head"&gt;
                                                                                        &lt;h6 class="d-inline-block m-b-0"&gt;Notifications&lt;/h6&gt;
                                                                                        &lt;div class="float-right"&gt;
                                                                                            &lt;a href="javascript:" class="m-r-10"&gt;mark as read&lt;/a&gt;
                                                                                            &lt;a href="javascript:"&gt;clear all&lt;/a&gt;
                                                                                        &lt;/div&gt;
                                                                                    &lt;/div&gt;
                                                                                    &lt;ul class="noti-body"&gt;
                                                                                        &lt;li class="n-title"&gt;
                                                                                            &lt;p class="m-b-0"&gt;NEW&lt;/p&gt;
                                                                                        &lt;/li&gt;
                                                                                        &lt;li class="notification"&gt;
                                                                                            &lt;div class="media"&gt;
                                                                                                &lt;img class="img-radius" src="images/user/avatar-1.jpg" alt="Generic placeholder image"&gt;
                                                                                                &lt;div class="media-body"&gt;
                                                                                                    &lt;p&gt;&lt;strong&gt;John Doe&lt;/strong&gt;&lt;span class="n-time text-muted"&gt;&lt;i class="icon feather icon-clock m-r-10"&gt;&lt;/i&gt;30 min&lt;/span&gt;&lt;/p&gt;
                                                                                                    &lt;p&gt;New ticket Added&lt;/p&gt;
                                                                                                &lt;/div&gt;
                                                                                            &lt;/div&gt;
                                                                                        &lt;/li&gt;
                                                                                        &lt;li class="n-title"&gt;
                                                                                            &lt;p class="m-b-0"&gt;EARLIER&lt;/p&gt;
                                                                                        &lt;/li&gt;
                                                                                        &lt;li class="notification"&gt;
                                                                                            &lt;div class="media"&gt;
                                                                                                &lt;img class="img-radius" src="images/user/avatar-2.jpg" alt="Generic placeholder image"&gt;
                                                                                                &lt;div class="media-body"&gt;
                                                                                                    &lt;p&gt;&lt;strong&gt;Joseph William&lt;/strong&gt;&lt;span class="n-time text-muted"&gt;&lt;i class="icon feather icon-clock m-r-10"&gt;&lt;/i&gt;30 min&lt;/span&gt;&lt;/p&gt;
                                                                                                    &lt;p&gt;Prchace New Theme and make payment&lt;/p&gt;
                                                                                                &lt;/div&gt;
                                                                                            &lt;/div&gt;
                                                                                        &lt;/li&gt;
                                                                                        &lt;li class="notification"&gt;
                                                                                            &lt;div class="media"&gt;
                                                                                                &lt;img class="img-radius" src="images/user/avatar-3.jpg" alt="Generic placeholder image"&gt;
                                                                                                &lt;div class="media-body"&gt;
                                                                                                    &lt;p&gt;&lt;strong&gt;Sara Soudein&lt;/strong&gt;&lt;span class="n-time text-muted"&gt;&lt;i class="icon feather icon-clock m-r-10"&gt;&lt;/i&gt;30 min&lt;/span&gt;&lt;/p&gt;
                                                                                                    &lt;p&gt;currently login&lt;/p&gt;
                                                                                                &lt;/div&gt;
                                                                                            &lt;/div&gt;
                                                                                        &lt;/li&gt;
                                                                                    &lt;/ul&gt;
                                                                                    &lt;div class="noti-footer"&gt;
                                                                                        &lt;a href="javascript:"&gt;show all&lt;/a&gt;
                                                                                    &lt;/div&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                        &lt;/li&gt;
                                                                        &lt;li&gt;&lt;a href="javascript:" class="displayChatbox"&gt;&lt;i class="icon feather icon-mail"&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;
                                                                        &lt;li&gt;
                                                                            &lt;div class="dropdown drp-user"&gt;
                                                                                &lt;a href="javascript:" class="dropdown-toggle" data-toggle="dropdown"&gt;
                                                                                    &lt;i class="icon feather icon-settings"&gt;&lt;/i&gt;
                                                                                &lt;/a&gt;
                                                                                &lt;div class="dropdown-menu dropdown-menu-right profile-notification"&gt;
                                                                                    &lt;div class="pro-head"&gt;
                                                                                        &lt;img src="images/user/avatar-1.jpg" class="img-radius" alt="User-Profile-Image"&gt;
                                                                                        &lt;span&gt;John Doe&lt;/span&gt;
                                                                                        &lt;a href="auth-sign-in-social.html" class="dud-logout" title="Logout"&gt;
                                                                                            &lt;i class="feather icon-log-out"&gt;&lt;/i&gt;
                                                                                        &lt;/a&gt;
                                                                                    &lt;/div&gt;
                                                                                    &lt;ul class="pro-body"&gt;
                                                                                        &lt;li&gt;&lt;a href="javascript:" class="dropdown-item"&gt;&lt;i class="feather icon-settings"&gt;&lt;/i&gt; Settings&lt;/a&gt;&lt;/li&gt;
                                                                                        &lt;li&gt;&lt;a href="javascript:" class="dropdown-item"&gt;&lt;i class="feather icon-user"&gt;&lt;/i&gt; Profile&lt;/a&gt;&lt;/li&gt;
                                                                                        &lt;li&gt;&lt;a href="javascript:" class="dropdown-item"&gt;&lt;i class="feather icon-mail"&gt;&lt;/i&gt; My Messages&lt;/a&gt;&lt;/li&gt;
                                                                                        &lt;li&gt;&lt;a href="javascript:" class="dropdown-item"&gt;&lt;i class="feather icon-lock"&gt;&lt;/i&gt; Lock Screen&lt;/a&gt;&lt;/li&gt;
                                                                                    &lt;/ul&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                        &lt;/li&gt;
                                                                    &lt;/ul&gt;
                                                                &lt;/div&gt;
                                                            &lt;/header&gt;
                                                            &lt;!-- [ Header ] end --&gt;

                                                            &lt;!-- [ chat user list ] start --&gt;
                                                            &lt;section class="header-user-list"&gt;
                                                                &lt;div class="h-list-header"&gt;
                                                                    &lt;div class="input-group"&gt;
                                                                        &lt;input type="text" id="search-friends" class="form-control" placeholder="Search Friend . . ."&gt;
                                                                    &lt;/div&gt;
                                                                &lt;/div&gt;
                                                                &lt;div class="h-list-body"&gt;
                                                                    &lt;a href="javascript:" class="h-close-text"&gt;&lt;i class="feather icon-chevrons-right"&gt;&lt;/i&gt;&lt;/a&gt;
                                                                    &lt;div class="main-friend-cont scroll-div"&gt;
                                                                        &lt;div class="main-friend-list"&gt;
                                                                            &lt;div class="media userlist-box  " data-id="1" data-status="online" data-username="Josephin Doe"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-1.jpg" alt="Generic placeholder image "&gt;
                                                                                    &lt;div class="live-status"&gt;3&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Josephin Doe&lt;small class="d-block text-c-green"&gt;Typing . . &lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="2" data-status="online" data-username="Lary Doe"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-2.jpg" alt="Generic placeholder image"&gt;
                                                                                    &lt;div class="live-status"&gt;1&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Lary Doe&lt;small class="d-block text-c-green"&gt;online&lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="3" data-status="online" data-username="Alice"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-3.jpg" alt="Generic placeholder image"&gt;&lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Alice&lt;small class="d-block text-c-green"&gt;online&lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="4" data-status="offline" data-username="Alia"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-1.jpg" alt="Generic placeholder image"&gt;
                                                                                    &lt;div class="live-status"&gt;1&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Alia&lt;small class="d-block text-muted"&gt;10 min ago&lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="5" data-status="offline" data-username="Suzen"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-4.jpg" alt="Generic placeholder image"&gt;&lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Suzen&lt;small class="d-block text-muted"&gt;15 min ago&lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="1" data-status="online" data-username="Josephin Doe"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-1.jpg" alt="Generic placeholder image "&gt;
                                                                                    &lt;div class="live-status"&gt;3&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Josephin Doe&lt;small class="d-block text-c-green"&gt;Typing . . &lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="2" data-status="online" data-username="Lary Doe"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-2.jpg" alt="Generic placeholder image"&gt;
                                                                                    &lt;div class="live-status"&gt;1&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Lary Doe&lt;small class="d-block text-c-green"&gt;online&lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="3" data-status="online" data-username="Alice"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-3.jpg" alt="Generic placeholder image"&gt;&lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Alice&lt;small class="d-block text-c-green"&gt;online&lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="4" data-status="offline" data-username="Alia"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-1.jpg" alt="Generic placeholder image"&gt;
                                                                                    &lt;div class="live-status"&gt;1&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Alia&lt;small class="d-block text-muted"&gt;10 min ago&lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="5" data-status="offline" data-username="Suzen"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-4.jpg" alt="Generic placeholder image"&gt;&lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Suzen&lt;small class="d-block text-muted"&gt;15 min ago&lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="1" data-status="online" data-username="Josephin Doe"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-1.jpg" alt="Generic placeholder image "&gt;
                                                                                    &lt;div class="live-status"&gt;3&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Josephin Doe&lt;small class="d-block text-c-green"&gt;Typing . . &lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="2" data-status="online" data-username="Lary Doe"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-2.jpg" alt="Generic placeholder image"&gt;
                                                                                    &lt;div class="live-status"&gt;1&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Lary Doe&lt;small class="d-block text-c-green"&gt;online&lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="3" data-status="online" data-username="Alice"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-3.jpg" alt="Generic placeholder image"&gt;&lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Alice&lt;small class="d-block text-c-green"&gt;online&lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="4" data-status="offline" data-username="Alia"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-1.jpg" alt="Generic placeholder image"&gt;
                                                                                    &lt;div class="live-status"&gt;1&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Alia&lt;small class="d-block text-muted"&gt;10 min ago&lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="5" data-status="offline" data-username="Suzen"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-4.jpg" alt="Generic placeholder image"&gt;&lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Suzen&lt;small class="d-block text-muted"&gt;15 min ago&lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="1" data-status="online" data-username="Josephin Doe"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-1.jpg" alt="Generic placeholder image "&gt;
                                                                                    &lt;div class="live-status"&gt;3&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Josephin Doe&lt;small class="d-block text-c-green"&gt;Typing . . &lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="2" data-status="online" data-username="Lary Doe"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-2.jpg" alt="Generic placeholder image"&gt;
                                                                                    &lt;div class="live-status"&gt;1&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Lary Doe&lt;small class="d-block text-c-green"&gt;online&lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="3" data-status="online" data-username="Alice"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-3.jpg" alt="Generic placeholder image"&gt;&lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Alice&lt;small class="d-block text-c-green"&gt;online&lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="4" data-status="offline" data-username="Alia"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-1.jpg" alt="Generic placeholder image"&gt;
                                                                                    &lt;div class="live-status"&gt;1&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Alia&lt;small class="d-block text-muted"&gt;10 min ago&lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media userlist-box  " data-id="5" data-status="offline" data-username="Suzen"&gt;
                                                                                &lt;a class="media-left" href="javascript:"&gt;&lt;img class="media-object img-radius" src="images/user/avatar-4.jpg" alt="Generic placeholder image"&gt;&lt;/a&gt;
                                                                                &lt;div class="media-body"&gt;
                                                                                    &lt;h6 class="chat-header"&gt;Suzen&lt;small class="d-block text-muted"&gt;15 min ago&lt;/small&gt;&lt;/h6&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                        &lt;/div&gt;
                                                                    &lt;/div&gt;
                                                                &lt;/div&gt;
                                                            &lt;/section&gt;
                                                            &lt;!-- [ chat user list ] end --&gt;

                                                            &lt;!-- [ chat message ] start --&gt;
                                                            &lt;section class="header-chat"&gt;
                                                                &lt;div class="h-list-header"&gt;
                                                                    &lt;h6&gt;Josephin Doe&lt;/h6&gt;
                                                                    &lt;a href="javascript:" class="h-back-user-list"&gt;&lt;i class="feather icon-chevron-left"&gt;&lt;/i&gt;&lt;/a&gt;
                                                                &lt;/div&gt;
                                                                &lt;div class="h-list-body"&gt;
                                                                    &lt;div class="main-chat-cont scroll-div"&gt;
                                                                        &lt;div class="main-friend-chat"&gt;
                                                                            &lt;div class="media chat-messages"&gt;
                                                                                &lt;a class="media-left photo-table" href="javascript:"&gt;&lt;img class="media-object img-radius img-radius m-t-5" src="images/user/avatar-2.jpg" alt="Generic placeholder image"&gt;&lt;/a&gt;
                                                                                &lt;div class="media-body chat-menu-content"&gt;
                                                                                    &lt;div class=""&gt;
                                                                                        &lt;p class="chat-cont"&gt;hello Datta! Will you tell me something&lt;/p&gt;
                                                                                        &lt;p class="chat-cont"&gt;about yourself?&lt;/p&gt;
                                                                                    &lt;/div&gt;
                                                                                    &lt;p class="chat-time"&gt;8:20 a.m.&lt;/p&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media chat-messages"&gt;
                                                                                &lt;div class="media-body chat-menu-reply"&gt;
                                                                                    &lt;div class=""&gt;
                                                                                        &lt;p class="chat-cont"&gt;Ohh! very nice&lt;/p&gt;
                                                                                    &lt;/div&gt;
                                                                                    &lt;p class="chat-time"&gt;8:22 a.m.&lt;/p&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;div class="media chat-messages"&gt;
                                                                                &lt;a class="media-left photo-table" href="javascript:"&gt;&lt;img class="media-object img-radius img-radius m-t-5" src="images/user/avatar-2.jpg" alt="Generic placeholder image"&gt;&lt;/a&gt;
                                                                                &lt;div class="media-body chat-menu-content"&gt;
                                                                                    &lt;div class=""&gt;
                                                                                        &lt;p class="chat-cont"&gt;can you help me?&lt;/p&gt;
                                                                                    &lt;/div&gt;
                                                                                    &lt;p class="chat-time"&gt;8:20 a.m.&lt;/p&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                        &lt;/div&gt;
                                                                    &lt;/div&gt;
                                                                &lt;/div&gt;
                                                                &lt;div class="h-list-footer"&gt;
                                                                    &lt;div class="input-group"&gt;
                                                                        &lt;input type="file" class="chat-attach" style="display:none"&gt;
                                                                        &lt;a href="javascript:" class="input-group-prepend btn btn-success btn-attach"&gt;
                                                                            &lt;i class="feather icon-paperclip"&gt;&lt;/i&gt;
                                                                        &lt;/a&gt;
                                                                        &lt;input type="text" name="h-chat-text" class="form-control h-send-chat" placeholder="Write hear . . "&gt;
                                                                        &lt;button type="submit" class="input-group-append btn-send btn btn-primary"&gt;
                                                                            &lt;i class="feather icon-message-circle"&gt;&lt;/i&gt;
                                                                        &lt;/button&gt;
                                                                    &lt;/div&gt;
                                                                &lt;/div&gt;
                                                            &lt;/section&gt;
                                                            &lt;!-- [ chat message ] end --&gt;

                                                            &lt;!-- [ Main Content ] start --&gt;
                                                            &lt;div class="pcoded-main-container"&gt;
                                                                &lt;div class="pcoded-wrapper"&gt;
                                                                    &lt;div class="pcoded-content"&gt;
                                                                        &lt;div class="pcoded-inner-content"&gt;
                                                                            &lt;!-- [ breadcrumb ] start --&gt;
                                                                            &lt;div class="page-header"&gt;
                                                                                &lt;div class="page-block"&gt;
                                                                                    &lt;div class="row align-items-center"&gt;
                                                                                        &lt;div class="col-md-12"&gt;
                                                                                            &lt;div class="page-header-title"&gt;
                                                                                                &lt;h5 class="m-b-10"&gt;Sample Page&lt;/h5&gt;
                                                                                            &lt;/div&gt;
                                                                                            &lt;ul class="breadcrumb"&gt;
                                                                                                &lt;li class="breadcrumb-item"&gt;&lt;a href="index.html"&gt;&lt;i class="feather icon-home"&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;
                                                                                                &lt;li class="breadcrumb-item"&gt;&lt;a href="javascript:"&gt;Sample Page&lt;/a&gt;&lt;/li&gt;
                                                                                            &lt;/ul&gt;
                                                                                        &lt;/div&gt;
                                                                                    &lt;/div&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                            &lt;!-- [ breadcrumb ] end --&gt;
                                                                            &lt;div class="main-body"&gt;
                                                                                &lt;div class="page-wrapper"&gt;
                                                                                    &lt;!-- [ Main Content ] start --&gt;
                                                                                    &lt;div class="row"&gt;
                                                                                        &lt;!-- [ sample-page ] start --&gt;
                                                                                        &lt;div class="col-sm-12"&gt;
                                                                                            &lt;div class="card"&gt;
                                                                                                &lt;div class="card-header"&gt;
                                                                                                    &lt;h5&gt;Hello card&lt;/h5&gt;
                                                                                                    &lt;div class="card-header-right"&gt;
                                                                                                        &lt;div class="btn-group card-option"&gt;
                                                                                                            &lt;button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false"&gt;
                                                                                                                &lt;i class="feather icon-more-horizontal"&gt;&lt;/i&gt;
                                                                                                            &lt;/button&gt;
                                                                                                            &lt;ul class="list-unstyled card-option dropdown-menu dropdown-menu-right"&gt;
                                                                                                                &lt;li class="dropdown-item full-card"&gt;&lt;a href="javascript:"&gt;&lt;span&gt;&lt;i class="feather icon-maximize"&gt;&lt;/i&gt; maximize&lt;/span&gt;&lt;span style="display:none"&gt;&lt;i class="feather icon-minimize"&gt;&lt;/i&gt; Restore&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;
                                                                                                                &lt;li class="dropdown-item minimize-card"&gt;&lt;a href="javascript:"&gt;&lt;span&gt;&lt;i class="feather icon-minus"&gt;&lt;/i&gt;Collapse&lt;/span&gt;&lt;span style="display:none"&gt;&lt;i class="feather icon-plus"&gt;&lt;/i&gt; Expand&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;
                                                                                                                &lt;li class="dropdown-item reload-card"&gt;&lt;a href="javascript:"&gt;&lt;i class="feather icon-refresh-cw"&gt;&lt;/i&gt; reload&lt;/a&gt;&lt;/li&gt;
                                                                                                                &lt;li class="dropdown-item close-card"&gt;&lt;a href="javascript:"&gt;&lt;i class="feather icon-trash"&gt;&lt;/i&gt;Remove&lt;/a&gt;&lt;/li&gt;
                                                                                                            &lt;/ul&gt;
                                                                                                        &lt;/div&gt;
                                                                                                    &lt;/div&gt;
                                                                                                &lt;/div&gt;
                                                                                                &lt;div class="card-block"&gt;
                                                                                                    &lt;p&gt;"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                                                                                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
                                                                                                        officia deserunt mollit anim id est laborum."
                                                                                                    &lt;/p&gt;
                                                                                                &lt;/div&gt;
                                                                                            &lt;/div&gt;
                                                                                        &lt;/div&gt;
                                                                                        &lt;!-- [ sample-page ] end --&gt;
                                                                                    &lt;/div&gt;
                                                                                    &lt;!-- [ Main Content ] end --&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                        &lt;/div&gt;
                                                                    &lt;/div&gt;
                                                                &lt;/div&gt;
                                                            &lt;/div&gt;
                                                            &lt;!-- [ Main Content ] end --&gt;

                                                            &lt;!-- Warning Section Starts --&gt;
                                                            &lt;!-- Older IE warning message --&gt;
                                                            &lt;!--[if lt IE 11]&gt;
                                                                &lt;div class="ie-warning"&gt;
                                                                    &lt;h1&gt;Warning!!&lt;/h1&gt;
                                                                    &lt;p&gt;You are using an outdated version of Internet Explorer, please upgrade
                                                                       &lt;br/&gt;to any of the following web browsers to access this website.
                                                                    &lt;/p&gt;
                                                                    &lt;div class="iew-container"&gt;
                                                                        &lt;ul class="iew-download"&gt;
                                                                            &lt;li&gt;
                                                                                &lt;a href="http://www.google.com/chrome/"&gt;
                                                                                    &lt;img src="images/browser/chrome.png" alt="Chrome"&gt;
                                                                                    &lt;div&gt;Chrome&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                            &lt;/li&gt;
                                                                            &lt;li&gt;
                                                                                &lt;a href="https://www.mozilla.org/en-US/firefox/new/"&gt;
                                                                                    &lt;img src="images/browser/firefox.png" alt="Firefox"&gt;
                                                                                    &lt;div&gt;Firefox&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                            &lt;/li&gt;
                                                                            &lt;li&gt;
                                                                                &lt;a href="http://www.opera.com"&gt;
                                                                                    &lt;img src="images/browser/opera.png" alt="Opera"&gt;
                                                                                    &lt;div&gt;Opera&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                            &lt;/li&gt;
                                                                            &lt;li&gt;
                                                                                &lt;a href="https://www.apple.com/safari/"&gt;
                                                                                    &lt;img src="images/browser/safari.png" alt="Safari"&gt;
                                                                                    &lt;div&gt;Safari&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                            &lt;/li&gt;
                                                                            &lt;li&gt;
                                                                                &lt;a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie"&gt;
                                                                                    &lt;img src="images/browser/ie.png" alt=""&gt;
                                                                                    &lt;div&gt;IE (11 & above)&lt;/div&gt;
                                                                                &lt;/a&gt;
                                                                            &lt;/li&gt;
                                                                        &lt;/ul&gt;
                                                                    &lt;/div&gt;
                                                                    &lt;p&gt;Sorry for the inconvenience!&lt;/p&gt;
                                                                &lt;/div&gt;
                                                            &lt;![endif]--&gt;
                                                            &lt;!-- Warning Section Ends --&gt;

                                                            &lt;!-- Required Js --&gt;
                                                            &lt;script src="js/vendor-all.min.js"&gt;&lt;/script&gt;
                                                            &lt;script src="plugins/bootstrap/js/bootstrap.min.js"&gt;&lt;/script&gt;
                                                            &lt;script src="js/pcoded.min.js"&gt;&lt;/script&gt;

                                                        &lt;/body&gt;
                                                        &lt;/html&gt;
                                                    </code>
                                                </pre>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Bootstrap Implementation</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <pre>
                                                <code class="language-markup">
                                                    Datta-able/
                                                    âââ 
                                                    â   âââ css/
                                                    â   â   âââ style.css <small class="text-c-red">4) i.e. compiled style.scss</small>
                                                    â   âââ plugins/
                                                    â   â   âââ bootstrap/
                                                    â   â   â   âââ css/
                                                    â   â   â   â   âââ bootstrap.min.css <small class="text-c-red">1) bootstrap.min.css v4.1.3</small>
                                                    â   â   â   âââ js/
                                                    â   â   â   â   âââ bootstrap.min.js
                                                    â   âââ scss/
                                                    â   â   âââ partial/
                                                    â   â   â   âââ _general.scss <small class="text-c-red">2) bootstrap.min.css file included in this file</small>
                                                    â   â   âââ style.scss <small class="text-c-red">3) compile this style.scss file using koala SCSS compiler</small>
                                                    âââ index.html
                                                </code>
                                            </pre>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="card" id="filestruct">
                                        <div class="card-header">
                                            <h5>Structure</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body p-0">
                                            <ul class="nav nav-pills mb-0" id="pills-tab-struct" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active show" id="pills-filestruct-tab" data-toggle="pill" href="#pills-filestruct" role="tab">directory Structure</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="pills-pagestruct-tab" data-toggle="pill" href="#pills-page-struct" role="tab">Page Structure</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content mb-0 pt-2" id="pills-tabContent-struct">
                                                <div class="tab-pane active show" id="pills-filestruct" role="tabpanel" aria-labelledby="pills-filestruct-tab">
                                                    <pre>
                                                        <code class="language-markup">
                                                            Datta-able/
                                                            âââ 
                                                            â   âââ css/
                                                            â   â   âââ style.css
                                                            â   âââ fonts/
                                                            â   â   âââ feather/css/feather.css
                                                            â   â   âââ fontawesome/css/fontawesome-all.min.css
                                                            â   â   âââ datta/datta-icon.css
                                                            â   â   âââ ...- More
                                                            â   âââ images/
                                                            â   â   âââ user/
                                                            â   â   â   âââ avatar-1.jpg
                                                            â   â   â   âââ avatar-2.jpg
                                                            â   â   â   âââ ...-More
                                                            â   â   âââ logo.png
                                                            â   â   âââ ...-More
                                                            â   âââ js/
                                                            â   â   âââ pages/
                                                            â   â   â   âââ chart-highchart-custom.js
                                                            â   â   â   âââ ac-alert.js
                                                            â   â   â   âââ map-vector.js
                                                            â   â   â   âââ ...- More
                                                            â   â   âââ vendor-all.js
                                                            â   â   âââ pcoded.js
                                                            â   â   âââ ...- More
                                                            â   âââ plugins/
                                                            â   â   âââ jquery/
                                                            â   â   â   âââ js/
                                                            â   â   â   â   âââ jquery.min.js
                                                            â   â   âââ bootstrap/
                                                            â   â   â   âââ css/
                                                            â   â   â   â   âââ bootstrap.min.css
                                                            â   â   â   âââ js/
                                                            â   â   â   â   âââ bootstrap.min.js
                                                            â   â   âââ owl-carousel/
                                                            â   â   â   âââ css/
                                                            â   â   â   â   âââ owl.carousel.min.css
                                                            â   â   â   â   âââ owl.theme.default.min.css
                                                            â   â   â   âââ js/
                                                            â   â   â   â   âââ owl.carousel.min.js
                                                            â   â   âââ ...-More
                                                            â   âââ scss/
                                                            â   â   âââ partial/
                                                            â   â   â   âââ menu/. .
                                                            â   â   â   âââ mixins/. .
                                                            â   â   â   âââ other/. .
                                                            â   â   â   âââ theme-elements/. .
                                                            â   â   â   âââ widget/. .
                                                            â   â   â   âââ _variables.scss
                                                            â   â   â   âââ _general.scss
                                                            â   â   â   âââ ...-More
                                                            â   â   âââ style.scss
                                                            âââ index.html
                                                            âââ widget.html
                                                            âââ Dashboard-analytics.html
                                                            âââ ...- More
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="pills-page-struct" role="tabpanel" aria-labelledby="pills-pagestruct-tab">
                                                    <pre>
                                                         <code class="language-markup">
                                                            &lt;!DOCTYPE html&gt;
                                                            &lt;html lang="en"&gt;

                                                            &lt;head&gt;
                                                                &lt;title&gt;Datta Able | Admin template&lt;/title&gt;

                                                            	&lt;!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries --&gt;
                                                                &lt;!-- WARNING: Respond.js doesn't work if you view the page via file:// --&gt;
                                                                &lt;!--[if lt IE 10]&gt;
                                                            		&lt;script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"&gt;&lt;/script&gt;
                                                            		&lt;script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"&gt;&lt;/script&gt;
                                                            		&lt;![endif]--&gt;
                                                                &lt;!-- Meta --&gt;

                                                            	&lt;meta charset="utf-8"&gt;
                                                                &lt;meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"&gt;
                                                                &lt;meta http-equiv="X-UA-Compatible" content="IE=edge" /&gt;
                                                                &lt;meta name="description" content="" /&gt;
                                                                &lt;meta name="keywords" content=""&gt;
                                                                &lt;meta name="author" content=""/&gt;

                                                            	&lt;!-- Favicon icon --&gt;
                                                                &lt;link rel="icon" href="images/favicon.ico" type="image/x-icon"&gt;

                                                            	&lt;!-- vendor css --&gt;
                                                                &lt;link rel="stylesheet" href="css/style.css"&gt;
                                                            &lt;/head&gt;

                                                            &lt;body&gt;
                                                                &lt;!-- [ navigation menu ] start --&gt;
                                                                &lt;nav class="pcoded-navbar"&gt;
                                                                &lt;/nav&gt;
                                                                &lt;!-- [ navigation menu ] end --&gt;

                                                                &lt;!-- [ Header ] start --&gt;
                                                                &lt;header class="navbar pcoded-header navbar-expand-lg navbar-light"&gt;
                                                                &lt;/header&gt;
                                                                &lt;!-- [ Header ] end --&gt;

                                                                &lt;!-- [ chat user list ] start --&gt;
                                                                &lt;section class="header-user-list"&gt;
                                                                &lt;/section&gt;
                                                                &lt;!-- [ chat user list ] end --&gt;

                                                                &lt;!-- [ chat message ] start --&gt;
                                                                &lt;section class="header-chat"&gt;
                                                                &lt;/section&gt;
                                                                &lt;!-- [ chat message ] end --&gt;

                                                                &lt;!-- [ Main Content ] start --&gt;
                                                                &lt;div class="pcoded-main-container"&gt;
                                                                    &lt;div class="pcoded-wrapper"&gt;
                                                                        &lt;div class="pcoded-content"&gt;
                                                                            &lt;div class="pcoded-inner-content"&gt;

                                                                                &lt;!-- [ breadcrumb ] start --&gt;
                                                                                &lt;div class="page-header"&gt;
                                                                                &lt;/div&gt;
                                                                                &lt;!-- [ breadcrumb ] end --&gt;

                                                                                &lt;div class="main-body"&gt;
                                                                                    &lt;div class="page-wrapper"&gt;

                                                                                        &lt;!-- [ Main Content ] start --&gt;
                                                                                        &lt;div class="row"&gt;
                                                                                        &lt;/div&gt;
                                                                                        &lt;!-- [ Main Content ] end --&gt;

                                                                                    &lt;/div&gt;
                                                                                &lt;/div&gt;
                                                                            &lt;/div&gt;
                                                                        &lt;/div&gt;
                                                                    &lt;/div&gt;
                                                                &lt;/div&gt;
                                                                &lt;!-- [ Main Content ] end --&gt;

                                                                &lt;!-- Required Js --&gt;
                                                                &lt;script src="js/vendor-all.min.js"&gt;&lt;/script&gt;
                                                                &lt;script src="plugins/bootstrap/js/bootstrap.min.js"&gt;&lt;/script&gt;
                                                                &lt;script src="js/pcoded.min.js"&gt;&lt;/script&gt;
                                                            &lt;/body&gt;

                                                            &lt;/html&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="card " id="layouts">
                                        <div class="card-header">
                                            <h5>Layouts</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body p-0">
                                            <div class="card-block">
                                                <p>Everything about page layout and its extra options. Copy and check code snippet for each options carefully.</p>
                                                <a href="https://www.youtube.com/watch?v=0LjlawWMXCw" class="btn btn-outline-danger" target="_blank"><i class="feather feather icon-video"></i>HOW TO SET PAGE LAYOUT</a>
                                                <a href="https://www.youtube.com/watch?v=HjV2aWgavdo" class="btn btn-outline-primary" target="_blank"><i class="feather feather icon-video"></i>EVERYTHING ABOUT LIVE CUSTOMIZER</a>
                                            </div>

                                            <ul class="nav nav-pills mb-0" id="pills-tab" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active" id="pills-vertical-tab" data-toggle="pill" href="#pills-vertical" role="tab" aria-controls="pills-vertical" aria-selected="true">Vertical</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="pills-horizontal-tab" data-toggle="pill" href="#pills-horizontal" role="tab" aria-controls="pills-horizontal" aria-selected="false">Horizontal</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="pills-box-tab" data-toggle="pill" href="#pills-box" role="tab">Box layout</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="pills-rtl-tab" data-toggle="pill" href="#pills-rtl" role="tab">rtl layout</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="pills-light-tab" data-toggle="pill" href="#pills-light" role="tab">light layout</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="pills-dark-tab" data-toggle="pill" href="#pills-dark" role="tab">dark layout</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="pills-color-tab" data-toggle="pill" href="#pills-color" role="tab">Icon color lauout</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content mb-0 pt-2" id="pills-tabContent">
                                                <div class="tab-pane show active" id="pills-vertical" role="tabpanel" aria-labelledby="pills-vertical-tab">
                                                    <p>This table contains all classes related to the vertical layout.</p>
                                                    <div class="table-responsive">
                                                        <table class="table table-bordered table-hover">
                                                            <thead>
                                                                <tr>
                                                                    <th>Layout</th>
                                                                    <th>Description</th>
                                                                    <th>Page link</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>navbar Static</td>
                                                                    <td>add <code>menupos-static</code> class in <code>&lt;nav&gt;</code> tag</td>
                                                                    <td><a href="http://html.codedthemes.com/datta-able/bootstrap/default/layout-static.html" target="_blank">more detail</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Navbar fixed</td>
                                                                    <td><code>This is default layout so you don't need to put any settings</code></td>
                                                                    <td><a href="http://html.codedthemes.com/datta-able/bootstrap/default/layout-menu-fixed.html" target="_blank">more detail</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Header Fixed</td>
                                                                    <td>
                                                                        add <code>headerpos-fixed</code> class in <code>&lt;header&gt;</code> fa-tags
                                                                        <br>
                                                                        <small>you have compulsory add header background color class if you want fixed header position</small>
                                                                        <br>
                                                                        examples: <code>header-blue</code>
                                                                    </td>
                                                                    <td><a href="http://html.codedthemes.com/datta-able/bootstrap/default/layout-fixed.html" target="_blank">more detail</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Collapse menu</td>
                                                                    <td>add <code>navbar-collapsed</code> class in <code>&lt;nav&gt;</code> tag</td>
                                                                    <td><a href="http://html.codedthemes.com/datta-able/bootstrap/default/layout-mini-menu.html" target="_blank">more detail</a></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <p>This snippet contains HTML Markup to create vertical layout.</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar"&gt;
                                                            	&lt;div class="navbar-wrapper"&gt;
                                                            		&lt;div class="navbar-brand header-logo"&gt;
                                                            			&lt;!-- Your Logo is hear --&gt;
                                                            		&lt;/div&gt;
                                                            		&lt;div class="navbar-content scroll-div"&gt;
                                                            			&lt;ul class="nav pcoded-inner-navbar"&gt;
                                                            				&lt;li class="nav-item pcoded-menu-caption"&gt;&lt;label&gt;Menu Title&lt;/label&gt;&lt;/li&gt;
                                                            				&lt;li class="nav-item"&gt;&lt;a href="javascript:" class="nav-link "&gt;&lt;span class="pcoded-micon"&gt;&lt;i class="feather icon-menu"&gt;&lt;/i&gt;&lt;/span&gt;&lt;span class="pcoded-mtext"&gt;Single Link&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;
                                                            				&lt;li class="nav-item pcoded-hasmenu"&gt;
                                                            					&lt;a href="javascript:" class="nav-link "&gt;&lt;span class="pcoded-micon"&gt;&lt;i class="feather icon-sidebar"&gt;&lt;/i&gt;&lt;/span&gt;&lt;span class="pcoded-mtext"&gt;Menu Levels 1.1&lt;/span&gt;&lt;/a&gt;
                                                            					&lt;ul class="pcoded-submenu"&gt;
                                                            						&lt;li class="pcoded-hasmenu"&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 2.1&lt;/a&gt;
                                                            							&lt;ul class="pcoded-submenu"&gt;
                                                            								&lt;li class=""&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 3.1&lt;/a&gt;&lt;/li&gt;
                                                            								&lt;li class=""&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 3.2&lt;/a&gt;&lt;/li&gt;
                                                            								&lt;li class=""&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 3.3&lt;/a&gt;&lt;/li&gt;
                                                            								&lt;li class=""&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 3.4&lt;/a&gt;&lt;/li&gt;
                                                            							&lt;/ul&gt;
                                                            						&lt;/li&gt;
                                                            						&lt;li class="pcoded-hasmenu"&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 2.2&lt;/a&gt;
                                                            							&lt;ul class="pcoded-submenu"&gt;
                                                            								&lt;li class=""&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 3.1&lt;/a&gt;&lt;/li&gt;
                                                            								&lt;li class=""&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 3.2&lt;/a&gt;&lt;/li&gt;
                                                            							&lt;/ul&gt;
                                                            						&lt;/li&gt;
                                                            						&lt;li class=""&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 2.3&lt;/a&gt;&lt;/li&gt;
                                                            						&lt;li class=""&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 2.4&lt;/a&gt;&lt;/li&gt;
                                                            					&lt;/ul&gt;
                                                            				&lt;/li&gt;
                                                            			&lt;/ul&gt;
                                                            		&lt;/div&gt;
                                                            	&lt;/div&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="pills-horizontal" role="tabpanel" aria-labelledby="pills-horizontal-tab">
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar theme-horizontal"&gt;
                                                            	&lt;div class="navbar-wrapper"&gt;
                                                            		&lt;div class="navbar-brand header-logo"&gt;
                                                            			&lt;!-- Your Logo is hear --&gt;
                                                            		&lt;/div&gt;
                                                            		&lt;div class="navbar-content sidenav-horizontal" id="layout-sidenav"&gt;
                                                            			&lt;ul class="nav pcoded-inner-navbar sidenav-inner"&gt;
                                                            				&lt;li class="nav-item pcoded-menu-caption"&gt;&lt;label&gt;Menu Title&lt;/label&gt;&lt;/li&gt;
                                                            				&lt;li class="nav-item"&gt;&lt;a href="javascript:" class="nav-link "&gt;&lt;span class="pcoded-micon"&gt;&lt;i class="feather icon-menu"&gt;&lt;/i&gt;&lt;/span&gt;&lt;span class="pcoded-mtext"&gt;Single Link&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;
                                                            				&lt;li class="nav-item pcoded-hasmenu"&gt;
                                                            					&lt;a href="javascript:" class="nav-link "&gt;&lt;span class="pcoded-micon"&gt;&lt;i class="feather icon-sidebar"&gt;&lt;/i&gt;&lt;/span&gt;&lt;span class="pcoded-mtext"&gt;Menu Levels 1.1&lt;/span&gt;&lt;/a&gt;
                                                            					&lt;ul class="pcoded-submenu"&gt;
                                                            						&lt;li class="pcoded-hasmenu"&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 2.1&lt;/a&gt;
                                                            							&lt;ul class="pcoded-submenu"&gt;
                                                            								&lt;li class=""&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 3.1&lt;/a&gt;&lt;/li&gt;
                                                            								&lt;li class=""&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 3.2&lt;/a&gt;&lt;/li&gt;
                                                            								&lt;li class=""&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 3.3&lt;/a&gt;&lt;/li&gt;
                                                            								&lt;li class=""&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 3.4&lt;/a&gt;&lt;/li&gt;
                                                            							&lt;/ul&gt;
                                                            						&lt;/li&gt;
                                                            						&lt;li class="pcoded-hasmenu"&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 2.2&lt;/a&gt;
                                                            							&lt;ul class="pcoded-submenu"&gt;
                                                            								&lt;li class=""&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 3.1&lt;/a&gt;&lt;/li&gt;
                                                            								&lt;li class=""&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 3.2&lt;/a&gt;&lt;/li&gt;
                                                            							&lt;/ul&gt;
                                                            						&lt;/li&gt;
                                                            						&lt;li class=""&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 2.3&lt;/a&gt;&lt;/li&gt;
                                                            						&lt;li class=""&gt;&lt;a href="javascript:" class=""&gt;Menu Levels 2.4&lt;/a&gt;&lt;/li&gt;
                                                            					&lt;/ul&gt;
                                                            				&lt;/li&gt;
                                                            			&lt;/ul&gt;
                                                            		&lt;/div&gt;
                                                            	&lt;/div&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;

                                                            // ***************************************************************
                                                            //  Add Below Line of code at bottom of page when body tag in over
                                                            // ***************************************************************
                                                            &lt;script src="js/horizontal-menu.js"&gt;&lt;/script&gt;
                                                            &lt;script type="text/javascript"&gt;
                                                                  //Collapse menu
                                                                  (function() {
                                                                      if ($('#layout-sidenav').hasClass('sidenav-horizontal') || window.layoutHelpers.isSmallScreen()) {
                                                                          return;
                                                                      }
                                                                      try {
                                                                          window.layoutHelpers.setCollapsed(
                                                                              localStorage.getItem('layoutCollapsed') === 'true',
                                                                              false
                                                                          );
                                                                      } catch (e) {}
                                                                  })();
                                                                  $(function() {
                                                                      // Initialize sidenav
                                                                      $('#layout-sidenav').each(function() {
                                                                          new SideNav(this, {
                                                                              orientation: $(this).hasClass('sidenav-horizontal') ? 'horizontal' : 'vertical'
                                                                          });
                                                                      });

                                                                      // Initialize sidenav togglers
                                                                      $('body').on('click', '.layout-sidenav-toggle', function(e) {
                                                                          e.preventDefault();
                                                                          window.layoutHelpers.toggleCollapsed();
                                                                          if (!window.layoutHelpers.isSmallScreen()) {
                                                                              try {
                                                                                  localStorage.setItem('layoutCollapsed', String(window.layoutHelpers.isCollapsed()));
                                                                              } catch (e) {}
                                                                          }
                                                                      });
                                                                  });
                                                                  $(document).ready(function() {
                                                                      $("#pcoded").pcodedmenu({
                                                                          themelayout: 'horizontal',
                                                                          MenuTrigger: 'hover',
                                                                          SubMenuTrigger: 'hover',
                                                                      });
                                                                  });
                                                              &lt;/script&gt;

                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="pills-box" role="tabpanel" aria-labelledby="pills-box-tab">
                                                    <p>add <code>container</code> & <code>box-layout</code> class in <code>&lt;body&gt;</code> tag</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;body class="container box-layout"&gt;

                                                            &lt;/body&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="pills-rtl" role="tabpanel" aria-labelledby="pills-rtl-tab">
                                                    <p>add <code>rtl stylesheet link</code> is below the style.css</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- rtl layouts --&gt;
                                                            &lt;link rel="stylesheet" href="css/layouts/rtl.css"&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="pills-light" role="tabpanel" aria-labelledby="pills-light-tab">
                                                    <p>add <code>menu-light</code> class in <code>&lt;nav&gt;</code> tag</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar menu-light"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="pills-dark" role="tabpanel" aria-labelledby="pills-dark-tab">
                                                    <p>add <code>dark stylesheet link</code> is below the style.css</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- dark layouts --&gt;
                                                            &lt;link rel="stylesheet" href="css/layouts/dark.css"&gt;
                                                        </code>
                                                    </pre>
                                                    <p>add <code>navbar-dark</code> & <code>brand-dark</code> class in <code>&lt;nav&gt;</code> tag</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar navbar-dark brand-dark"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="pills-color" role="tabpanel" aria-labelledby="pills-color-tab">
                                                    <p>add <code>icon-colored</code> class in <code>&lt;nav&gt;</code> tag</p>
                                                    <pre>
                                                         <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar icon-colored"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12" id="menucust">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Header background</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body p-0">
                                            <ul class="nav nav-pills" id="hcol-tab" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active" id="hcol-default-tab" data-toggle="pill" href="#hcol-default" role="tab" aria-controls="hcol-default" aria-selected="true">Default</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-blue" id="hcol-primary-tab" data-toggle="pill" href="#hcol-primary" role="tab" aria-controls="hcol-primary" aria-selected="false">Blue</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-red" id="hcol-danger-tab" data-toggle="pill" href="#hcol-danger" role="tab" aria-controls="hcol-danger" aria-selected="false">Red</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-purple" id="hcol-success-tab" data-toggle="pill" href="#hcol-success" role="tab" aria-controls="hcol-success" aria-selected="false">Purple</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-lightblue" id="hcol-warning-tab" data-toggle="pill" href="#hcol-warning" role="tab" aria-controls="hcol-warning" aria-selected="false">Lightblue</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-dark" id="hcol-info-tab" data-toggle="pill" href="#hcol-info" role="tab" aria-controls="hcol-info" aria-selected="false">Dark</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content pt-2" id="hcol-tabContent">
                                                <div class="tab-pane show active" id="hcol-default" role="tabpanel" aria-labelledby="hcol-default-tab">
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                 <code class="language-markup">
                                                                    &lt;!-- [ Header ] start --&gt;
                                                                    &lt;header class="navbar pcoded-header navbar-expand-lg navbar-light"&gt;
                                                                    &lt;/header&gt;
                                                                    &lt;!-- [ Header ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img header-color">
                                                                <a href="#!" data-value="header-default"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="hcol-primary" role="tabpanel" aria-labelledby="hcol-primary-tab">
                                                    <p>add <code>navbar-blue</code> class in <code>&lt;header&gt;</code> to set Blue Header</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                <code class="language-markup">
                                                                    &lt;!-- [ Header ] start --&gt;
                                                                    &lt;header class="navbar pcoded-header navbar-expand-lg navbar-light header-blue"&gt;
                                                                    &lt;/header&gt;
                                                                    &lt;!-- [ Header ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img header-color">
                                                                <a href="#!" data-value="header-blue"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="hcol-danger" role="tabpanel" aria-labelledby="hcol-danger-tab">
                                                    <p>add <code>navbar-red</code> class in <code>&lt;header&gt;</code> to set Red Header</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                 <code class="language-markup">
                                                                    &lt;!-- [ Header ] start --&gt;
                                                                    &lt;header class="navbar pcoded-header navbar-expand-lg navbar-light header-red"&gt;
                                                                    &lt;/header&gt;
                                                                    &lt;!-- [ Header ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img header-color">
                                                                <a href="#!" data-value="header-red"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="hcol-success" role="tabpanel" aria-labelledby="hcol-success-tab">
                                                    <p>add <code>navbar-purple</code> class in <code>&lt;header&gt;</code> to set Purple Header</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                <code class="language-markup">
                                                                    &lt;!-- [ Header ] start --&gt;
                                                                    &lt;header class="navbar pcoded-header navbar-expand-lg navbar-light header-purple"&gt;
                                                                    &lt;/header&gt;
                                                                    &lt;!-- [ Header ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img header-color">
                                                                <a href="#!" data-value="header-purple"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="hcol-warning" role="tabpanel" aria-labelledby="hcol-warning-tab">
                                                    <p>add <code>navbar-lightblue</code> class in <code>&lt;header&gt;</code> to set Lightblue Header</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                <code class="language-markup">
                                                                    &lt;!-- [ Header ] start --&gt;
                                                                    &lt;header class="navbar pcoded-header navbar-expand-lg navbar-light header-lightblue"&gt;
                                                                    &lt;/header&gt;
                                                                    &lt;!-- [ Header ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img header-color">
                                                                <a href="#!" data-value="header-lightblue"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="hcol-info" role="tabpanel" aria-labelledby="hcol-info-tab">
                                                    <p>add <code>navbar-dark</code> class in <code>&lt;header&gt;</code> to set Dark Header</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                <code class="language-markup">
                                                                    &lt;!-- [ Header ] start --&gt;
                                                                    &lt;header class="navbar pcoded-header navbar-expand-lg navbar-light header-dark"&gt;
                                                                    &lt;/header&gt;
                                                                    &lt;!-- [ Header ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img header-color">
                                                                <a href="#!" data-value="header-dark"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Menu background</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body p-0">
                                            <ul class="nav nav-pills" id="mcol-tab" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active" id="mcol-default-tab" data-toggle="pill" href="#mcol-default" role="tab" aria-controls="mcol-default" aria-selected="true">Default</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-blue" id="mcol-primary-tab" data-toggle="pill" href="#mcol-primary" role="tab" aria-controls="mcol-primary" aria-selected="false">blue</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-red" id="mcol-danger-tab" data-toggle="pill" href="#mcol-danger" role="tab" aria-controls="mcol-danger" aria-selected="false">red</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-purple" id="mcol-success-tab" data-toggle="pill" href="#mcol-success" role="tab" aria-controls="mcol-success" aria-selected="false">purple</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-lightblue" id="mcol-warning-tab" data-toggle="pill" href="#mcol-warning" role="tab" aria-controls="mcol-warning" aria-selected="false">lightblue</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-dark" id="mcol-info-tab" data-toggle="pill" href="#mcol-info" role="tab" aria-controls="mcol-info" aria-selected="false">dark</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content pt-2" id="mcol-tabContent">
                                                <div class="tab-pane show active" id="mcol-default" role="tabpanel" aria-labelledby="mcol-default-tab">
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img navbar-color">
                                                                <a href="#!" data-value="navbar-default"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="mcol-primary" role="tabpanel" aria-labelledby="mcol-primary-tab">
                                                    <p>add <code>navbar-blue</code> class in <code>&lt;nav&gt;</code> to set Blue navigation</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar navbar-blue"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img navbar-color">
                                                                <a href="#!" data-value="navbar-blue"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="mcol-danger" role="tabpanel" aria-labelledby="mcol-danger-tab">
                                                    <p>add <code>navbar-red</code> class in <code>&lt;nav&gt;</code> to set Red navigation</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar navbar-red"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img navbar-color">
                                                                <a href="#!" data-value="navbar-red"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="mcol-success" role="tabpanel" aria-labelledby="mcol-success-tab">
                                                    <p>add <code>navbar-purple</code> class in <code>&lt;nav&gt;</code> to set Purple navigation</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar navbar-purple"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img navbar-color">
                                                                <a href="#!" data-value="navbar-purple"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="mcol-warning" role="tabpanel" aria-labelledby="mcol-warning-tab">
                                                    <p>add <code>navbar-lightblue</code> class in <code>&lt;nav&gt;</code> to set Lightblue navigation</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                 <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar navbar-lightblue"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img navbar-color">
                                                                <a href="#!" data-value="navbar-lightblue"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="mcol-info" role="tabpanel" aria-labelledby="mcol-info-tab">
                                                    <p>add <code>navbar-Dark</code> class in <code>&lt;nav&gt;</code> to set Dark navigation</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                 <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar navbar-dark"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img navbar-color">
                                                                <a href="#!" data-value="navbar-dark"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Menu background image</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body p-0">
                                            <ul class="nav nav-pills" id="mimg-tab" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active" id="mimg-default-tab" data-toggle="pill" href="#mimg-default" role="tab" aria-controls="mimg-default" aria-selected="true">Image 1</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="mimg-primary-tab" data-toggle="pill" href="#mimg-primary" role="tab" aria-controls="mimg-primary" aria-selected="false">Image 2</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="mimg-danger-tab" data-toggle="pill" href="#mimg-danger" role="tab" aria-controls="mimg-danger" aria-selected="false">Image 3</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="mimg-success-tab" data-toggle="pill" href="#mimg-success" role="tab" aria-controls="mimg-success" aria-selected="false">Image 4</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="mimg-warning-tab" data-toggle="pill" href="#mimg-warning" role="tab" aria-controls="mimg-warning" aria-selected="false">Image 5</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content pt-2" id="mimg-tabContent">
                                                <div class="tab-pane show active" id="mimg-default" role="tabpanel" aria-labelledby="mimg-default-tab">
                                                    <p>add <code>navbar-image-1</code> class in <code>&lt;nav&gt;</code> to set Menu background image-1</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                  <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar navbar-image-1"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img navbar-images">
                                                                <a href="#!" data-value="navbar-image-1"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="mimg-primary" role="tabpanel" aria-labelledby="mimg-primary-tab">
                                                    <p>add <code>navbar-image-2</code> class in <code>&lt;nav&gt;</code> to set Menu background image-2</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                  <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar navbar-image-2"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img navbar-images">
                                                                <a href="#!" data-value="navbar-image-2"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="mimg-danger" role="tabpanel" aria-labelledby="mimg-danger-tab">
                                                    <p>add <code>navbar-image-3</code> class in <code>&lt;nav&gt;</code> to set Menu background image-3</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar navbar-image-3"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img navbar-images">
                                                                <a href="#!" data-value="navbar-image-3"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="mimg-success" role="tabpanel" aria-labelledby="mimg-success-tab">
                                                    <p>add <code>navbar-image-4</code> class in <code>&lt;nav&gt;</code> to set Menu background image-4</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar navbar-image-4"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img navbar-images">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="mimg-warning" role="tabpanel" aria-labelledby="mimg-warning-tab">
                                                    <p>add <code>navbar-image-5</code> class in <code>&lt;nav&gt;</code> to set Menu background image-5</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar navbar-image-5"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img navbar-images">
                                                                <a href="#!" data-value="navbar-image-5"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>이니바보</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body p-0">
                                            <ul class="nav nav-pills" id="actcol-tab" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active" id="actcol-default-tab" data-toggle="pill" href="#actcol-default" role="tab" aria-controls="actcol-default" aria-selected="true">Default</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-blue" id="actcol-primary-tab" data-toggle="pill" href="#actcol-primary" role="tab" aria-controls="actcol-primary" aria-selected="false">blue</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-red" id="actcol-danger-tab" data-toggle="pill" href="#actcol-danger" role="tab" aria-controls="actcol-danger" aria-selected="false">red</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-purple" id="actcol-success-tab" data-toggle="pill" href="#actcol-success" role="tab" aria-controls="actcol-success" aria-selected="false">purple</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-lightblue" id="actcol-warning-tab" data-toggle="pill" href="#actcol-warning" role="tab" aria-controls="actcol-warning" aria-selected="false">lightblue</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-dark" id="actcol-info-tab" data-toggle="pill" href="#actcol-info" role="tab" aria-controls="actcol-info" aria-selected="false">dark</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content pt-2" id="actcol-tabContent">
                                                <div class="tab-pane show active" id="actcol-default" role="tabpanel" aria-labelledby="actcol-default-tab">
                                                    <pre>
                                                         <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="actcol-primary" role="tabpanel" aria-labelledby="actcol-primary-tab">
                                                    <p>add <code>active-blue</code> class in <code>&lt;nav&gt;</code> to set Blue color in active item</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar active-blue"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="actcol-danger" role="tabpanel" aria-labelledby="actcol-danger-tab">
                                                    <p>add <code>active-red</code> class in <code>&lt;nav&gt;</code> to set Red color in active item</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar active-red"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="actcol-success" role="tabpanel" aria-labelledby="actcol-success-tab">
                                                    <p>add <code>active-purple</code> class in <code>&lt;nav&gt;</code> to set Purple color in active item</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar active-purple"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="actcol-warning" role="tabpanel" aria-labelledby="actcol-warning-tab">
                                                    <p>add <code>active-lightblue</code> class in <code>&lt;nav&gt;</code> to set Lightblue color in active item</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar active-lightblue"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="actcol-info" role="tabpanel" aria-labelledby="actcol-info-tab">
                                                    <p>add <code>active-dark</code> class in <code>&lt;nav&gt;</code> to set Dark color in active item</p>
                                                    <pre>
                                                         <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar active-dark"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Menu caption ( title ) color</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body p-0">
                                            <ul class="nav nav-pills" id="mcap-tab" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active" id="mcap-default-tab" data-toggle="pill" href="#mcap-default" role="tab" aria-controls="mcap-default" aria-selected="true">Default</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-blue" id="mcap-primary-tab" data-toggle="pill" href="#mcap-primary" role="tab" aria-controls="mcap-primary" aria-selected="false">blue</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-red" id="mcap-danger-tab" data-toggle="pill" href="#mcap-danger" role="tab" aria-controls="mcap-danger" aria-selected="false">red</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-purple" id="mcap-success-tab" data-toggle="pill" href="#mcap-success" role="tab" aria-controls="mcap-success" aria-selected="false">purple</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-lightblue" id="mcap-warning-tab" data-toggle="pill" href="#mcap-warning" role="tab" aria-controls="mcap-warning" aria-selected="false">lightblue</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-dark" id="mcap-info-tab" data-toggle="pill" href="#mcap-info" role="tab" aria-controls="mcap-info" aria-selected="false">dark</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content pt-2" id="mcap-tabContent">
                                                <div class="tab-pane show active" id="mcap-default" role="tabpanel" aria-labelledby="mcap-default-tab">
                                                    <pre>
                                                         <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="mcap-primary" role="tabpanel" aria-labelledby="mcap-primary-tab">
                                                    <p>add <code>title-blue</code> class in <code>&lt;nav&gt;</code> to set Blue color in Menu caption</p>
                                                    <pre>
                                                          <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar title-blue"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="mcap-danger" role="tabpanel" aria-labelledby="mcap-danger-tab">
                                                    <p>add <code>title-red</code> class in <code>&lt;nav&gt;</code> to set Red color in Menu caption</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar title-red"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="mcap-success" role="tabpanel" aria-labelledby="mcap-success-tab">
                                                    <p>add <code>title-purple</code> class in <code>&lt;nav&gt;</code> to set Purple color in Menu caption</p>
                                                    <pre>
                                                         <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar title-purple"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="mcap-warning" role="tabpanel" aria-labelledby="mcap-warning-tab">
                                                    <p>add <code>title-lightblue</code> class in <code>&lt;nav&gt;</code> to set Lightblue color in Menu caption</p>
                                                    <pre>
                                                          <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar title-lightblue"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="mcap-info" role="tabpanel" aria-labelledby="mcap-info-tab">
                                                    <p>add <code>title-dark</code> class in <code>&lt;nav&gt;</code> to set Dark color in Menu caption</p>
                                                    <pre>
                                                         <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar title-dark"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Menu brand background</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body p-0">
                                            <ul class="nav nav-pills" id="mbrand-tab" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active" id="mbrand-default-tab" data-toggle="pill" href="#mbrand-default" role="tab" aria-controls="mbrand-default" aria-selected="true">Default</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-blue" id="mbrand-primary-tab" data-toggle="pill" href="#mbrand-primary" role="tab" aria-controls="mbrand-primary" aria-selected="false">blue</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-red" id="mbrand-danger-tab" data-toggle="pill" href="#mbrand-danger" role="tab" aria-controls="mbrand-danger" aria-selected="false">red</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-purple" id="mbrand-success-tab" data-toggle="pill" href="#mbrand-success" role="tab" aria-controls="mbrand-success" aria-selected="false">purple</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-lightblue" id="mbrand-warning-tab" data-toggle="pill" href="#mbrand-warning" role="tab" aria-controls="mbrand-warning" aria-selected="false">lightblue</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link h-dark" id="mbrand-info-tab" data-toggle="pill" href="#mbrand-info" role="tab" aria-controls="mbrand-info" aria-selected="false">dark</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content pt-2" id="mbrand-tabContent">
                                                <div class="tab-pane show active" id="mbrand-default" role="tabpanel" aria-labelledby="mbrand-default-tab">
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                 <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img brand-color">
                                                                <a href="#!" data-value="brand-default"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="mbrand-primary" role="tabpanel" aria-labelledby="mbrand-primary-tab">
                                                    <p>add <code>brand-blue</code> class in <code>&lt;nav&gt;</code> to set Blue color in Menu caption</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                 <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar brand-blue"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img brand-color">
                                                                <a href="#!" data-value="brand-blue"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="mbrand-danger" role="tabpanel" aria-labelledby="mbrand-danger-tab">
                                                    <p>add <code>brand-red</code> class in <code>&lt;nav&gt;</code> to set Red color in Menu caption</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                 <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar brand-red"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img brand-color">
                                                                <a href="#!" data-value="brand-red"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="mbrand-success" role="tabpanel" aria-labelledby="mbrand-success-tab">
                                                    <p>add <code>brand-purple</code> class in <code>&lt;nav&gt;</code> to set Purple color in Menu caption</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                 <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar brand-purple"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img brand-color">
                                                                <a href="#!" data-value="brand-purple"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="mbrand-warning" role="tabpanel" aria-labelledby="mbrand-warning-tab">
                                                    <p>add <code>brand-lightblue</code> class in <code>&lt;nav&gt;</code> to set Lightblue color in Menu caption</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                 <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar brand-lightblue"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img brand-color">
                                                                <a href="#!" data-value="brand-lightblue"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="mbrand-info" role="tabpanel" aria-labelledby="mbrand-info-tab">
                                                    <p>add <code>brand-dark</code> class in <code>&lt;nav&gt;</code> to set Dark color in Menu caption</p>
                                                    <div class="row align-items-center">
                                                        <div class="col-sm-9">
                                                            <pre>
                                                                 <code class="language-markup">
                                                                    &lt;!-- [ navigation menu ] start --&gt;
                                                                    &lt;nav class="pcoded-navbar brand-dark"&gt;
                                                                    &lt;/nav&gt;
                                                                    &lt;!-- [ navigation menu ] end --&gt;
                                                                </code>
                                                            </pre>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="doc-img brand-color">
                                                                <a href="#!" data-value="brand-dark"><span></span><span></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Menu List Icon</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body p-0">
                                            <ul class="nav nav-pills" id="miicon-tab" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active" id="miicon-default-tab" data-toggle="pill" href="#miicon-default" role="tab" aria-controls="miicon-default" aria-selected="true">Default</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="miicon-primary-tab" data-toggle="pill" href="#miicon-primary" role="tab" aria-controls="miicon-primary" aria-selected="false"><i class="feather icon-minus"></i></a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="miicon-danger-tab" data-toggle="pill" href="#miicon-danger" role="tab" aria-controls="miicon-danger" aria-selected="false"><i class="feather icon-check"></i></a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="miicon-success-tab" data-toggle="pill" href="#miicon-success" role="tab" aria-controls="miicon-success" aria-selected="false"><i class="icon feather icon-corner-down-right"></i></a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="miicon-warning-tab" data-toggle="pill" href="#miicon-warning" role="tab" aria-controls="miicon-warning" aria-selected="false"><i class="icon feather icon-chevrons-right"></i></a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="miicon-info-tab" data-toggle="pill" href="#miicon-info" role="tab" aria-controls="miicon-info" aria-selected="false"><i class="icon feather icon-chevron-right"></i></a>
                                                </li>
                                            </ul>
                                            <div class="tab-content pt-2" id="miicon-tabContent">
                                                <div class="tab-pane show active" id="miicon-default" role="tabpanel" aria-labelledby="miicon-default-tab">
                                                    <pre>
                                                         <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="miicon-primary" role="tabpanel" aria-labelledby="miicon-primary-tab">
                                                    <p>add <code>menu-item-icon-style2</code> class in <code>&lt;nav&gt;</code> to set Menu list icon-2</p>
                                                    <pre>
                                                         <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar menu-item-icon-style2"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="miicon-danger" role="tabpanel" aria-labelledby="miicon-danger-tab">
                                                    <p>add <code>menu-item-icon-style3</code> class in <code>&lt;nav&gt;</code> to set Menu list icon-3</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar menu-item-icon-style3"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="miicon-success" role="tabpanel" aria-labelledby="miicon-success-tab">
                                                    <p>add <code>menu-item-icon-style4</code> class in <code>&lt;nav&gt;</code> to set Menu list icon-4</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar menu-item-icon-style4"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="miicon-warning" role="tabpanel" aria-labelledby="miicon-warning-tab">
                                                    <p>add <code>menu-item-icon-style5</code> class in <code>&lt;nav&gt;</code> to set Menu list icon-5</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar menu-item-icon-style5"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="miicon-info" role="tabpanel" aria-labelledby="miicon-info-tab">
                                                    <p>add <code>menu-item-icon-style6</code> class in <code>&lt;nav&gt;</code> to set Menu list icon-6</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar menu-item-icon-style6"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Menu dropdown icon</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body p-0">
                                            <ul class="nav nav-pills" id="mdrpicon-tab" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active" id="mdrpicon-default-tab" data-toggle="pill" href="#mdrpicon-default" role="tab" aria-controls="mdrpicon-default" aria-selected="true"><i class="feather icon-chevron-right"></i></a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="mdrpicon-primary-tab" data-toggle="pill" href="#mdrpicon-primary" role="tab" aria-controls="mdrpicon-primary" aria-selected="false"><i class="feather icon-chevrons-right"></i></a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="mdrpicon-danger-tab" data-toggle="pill" href="#mdrpicon-danger" role="tab" aria-controls="mdrpicon-danger" aria-selected="false"><i class="feather icon-plus"></i></a>
                                                </li>
                                            </ul>
                                            <div class="tab-content pt-2" id="mdrpicon-tabContent">
                                                <div class="tab-pane show active" id="mdrpicon-default" role="tabpanel" aria-labelledby="mdrpicon-default-tab">
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="mdrpicon-primary" role="tabpanel" aria-labelledby="mdrpicon-primary-tab">
                                                    <p>add <code>drp-icon-style2</code> class in <code>&lt;nav&gt;</code> to set Menu dropdown icon-2</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar drp-icon-style2"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                                <div class="tab-pane" id="mdrpicon-danger" role="tabpanel" aria-labelledby="mdrpicon-danger-tab">
                                                    <p>add <code>drp-icon-style3</code> class in <code>&lt;nav&gt;</code> to set Menu dropdown icon-3</p>
                                                    <pre>
                                                        <code class="language-markup">
                                                            &lt;!-- [ navigation menu ] start --&gt;
                                                            &lt;nav class="pcoded-navbar drp-icon-style3"&gt;
                                                            &lt;/nav&gt;
                                                            &lt;!-- [ navigation menu ] end --&gt;
                                                        </code>
                                                    </pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="card" id="scss">
                                        <div class="card-header">
                                            <h5>SCSS</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-block">
                                            <blockquote class="blockquote">
                                                <h4> How to Compile SCSS? </h4>
                                                <p class="mb-0"> You need to compile scss when you change scss using <b><a href="http://koala-app.com/" target="_blank">koala</a> scss Compiler</b></p>
                                            </blockquote>
                                            <h6 class="mt-4 mb-1"><b>List of variables for Datta able design</b></h6>
                                            <p class="mb-0">You can edit this file at [ scss/partials/_variables.scss ] </p>
                                            <hr>
                                            <pre>
                                                <code class="language-scss">
                                                    // Top bar height
                                                    $header-height: 70px;

                                                    // Sidebar menu width
                                                    $Menu-width: 264px;

                                                    // Small menu width
                                                    $Menu-collapsed-width: 80px;

                                                    // Color list for Datta Able Admin Templet
                                                    // theme color variables
                                                    $theme-color: linear-gradient(-135deg, #1de9b6 0%, #1dc4e9 100%);
                                                    $theme-color2: linear-gradient(-135deg, #899FD4 0%, #A389D4 100%);
                                                    $primary-color: #04a9f5;
                                                    $warning-color: #f4c22b;
                                                    $danger-color: #f44236;
                                                    $success-color: #1de9b6;
                                                    $purple-color: #a389d4;
                                                    $info-color: #3ebfea;
                                                    $dark-color: #37474f;
                                                    $theme-border: #eaeaea;

                                                    // header colors
                                                    $brand-background: #3f4d67;
                                                    $header-dark-background: #3f4d67;
                                                    $header-dark-text-color: #fff;
                                                    $header-light-background: #fff;
                                                    $header-light-text-color: #3f4d67;

                                                    // Sidebar colors
                                                    $menu-caption-color: #14171d;
                                                    $menu-dark-background: #3f4d67;
                                                    $menu-dark-text-color: #a9b7d0;
                                                    $menu-light-background: #fff;
                                                    $menu-light-text-color: #3f4d67;
                                                    $menu-active-color: #04a9f5;

                                                    // dark layout colors
                                                    $dark-layout: #212224;
                                                    $dark-layout-font: #adb7be;

                                                    // Menu icon
                                                    $menu-icon-color: $primary-color, #ff5252, #01a9ac ,#9575CD , #23b7e5, $warning-color;

                                                    // Header background
                                                    $color-header-name: blue, red, purple, lightblue, dark;
                                                    $color-header-color: $primary-color, #ff5252, #9575CD ,#23b7e5,lighten($dark-layout,7%);

                                                    // Menu background
                                                    $color-menu-name: blue, red, purple, lightblue, dark;
                                                    $color-menu-color: $primary-color, #ff5252, #9575CD ,#23b7e5,lighten($dark-layout,7%);

                                                    // Active background color
                                                    $color-active-name: blue, red, purple, lightblue, dark;
                                                    $color-active-color: $primary-color, #ff5252, #9575CD ,#23b7e5,lighten($dark-layout,7%);

                                                    // Menu title color
                                                    $color-title-name: blue, red, purple, lightblue, dark;
                                                    $color-title-color: $primary-color, #ff5252, #9575CD ,#23b7e5,lighten($dark-layout,7%);

                                                    // basic variable
                                                    $theme-font-family: 'Open Sans', sans-serif;
                                                    $theme-font-size: 14px;
                                                    $theme-background: #f4f7fa;
                                                    $theme-font-color: #888;
                                                    $theme-heading-color: #111;
                                                </code>
                                            </pre>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="card" id="plugins">
                                        <div class="card-header">
                                            <h5>Plugins</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-block">
                                            <div class="table-responsive">
                                                <table class="table table-bordered table-striped">
                                                    <thead class="header-table">
                                                        <tr>
                                                            <th>Plugins Name</th>
                                                            <th>Plugins page use</th>
                                                            <th>Link</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>Bootstrap</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default" target="_blank">default.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://getbootstrap.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Animation</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/animation.html" target="_blank">animation.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://daneden.github.io/animate.css/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Am chart</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/chart-am.html" target="_blank">chart-am.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://www.amcharts.com/javascript-charts/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Calender</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/full-calendar.html" target="_blank">full-calendar.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://fullcalendar.io/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Charts</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/chart-chartjs.html" target="_blank">chart-chartjs.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://www.chartjs.org/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Ck-Editor</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/editor-classic.html" target="_blank">editor-classic.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://ckeditor.com/ckeditor-5-builds/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Color-Picker</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/form-picker.html" target="_blank">form-picker.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://farbelous.io/bootstrap-colorpicker/tutorial-Basics.html" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Clipboard</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/layout-static.html" target="_blank">layout-static.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://clipboardjs.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Ekko-lightbox</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_lightbox.html" target="_blank">ac_lightbox.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://ashleydw.github.io/lightbox/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Data-Table</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/tbl_datatable.html" target="_blank">tbl_datatable.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://datatables.net/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Date Picker</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac-datepicker-componant.html" target="_blank">ac-datepicker-componant.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://www.daterangepicker.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>E-Charts</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/chart-echart.html" target="_blank">chart-echart.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://ecomfe.github.io/echarts-examples/public/index.html" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Highchart</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/chart-highchart.html" target="_blank">chart-highchart.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://www.highcharts.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>knob chart</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/chart-knob.html" target="_blank">chart-knob.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://anthonyterrien.com/demo/knob/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Morris chart</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/chart-morris.html" target="_blank">chart-morris.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://morrisjs.github.io/morris.js/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nvd3 chart</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/chart-nvd3.html" target="_blank">chart-nvd3.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://nvd3.org/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Peity chart</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/chart-peity.html" target="_blank">chart-peity.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://benpickles.github.io/peity/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Float chart</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/widget-chart.html" target="_blank">widget-chart.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://www.flotcharts.org/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>File-Upload</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/file-upload.html" target="_blank">file-upload.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://www.dropzonejs.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Foo-Table</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/tbl_foo.html" target="_blank">tbl_foo.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://fooplugins.github.io/FooTable/index.html" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Form-Mask</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/form-masking.html" target="_blank">form-masking.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://igorescobar.github.io/jQuery-Mask-Plugin/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Form-validation</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/form-validation.html" target="_blank">form-validation.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://jqueryvalidation.org/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Forms Wizard</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/form-wizard.html" target="_blank">form-wizard.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://github.com/techlab/SmartWizard" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Gridstack</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_gridstack.html" target="_blank">ac_gridstack.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://gridstackjs.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Gallery</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/gallery-advance.html" target="_blank">gallery-advance.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://tympanus.net/Development/HoverEffectIdeas/index2.html" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>JQuery</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default" target="_blank">Default.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://jquery.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>JQuery ui</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_gridstack.html" target="_blank">ac_gridstack.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://jqueryui.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Syntax Highlighter</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_syntax_highlighter.html" target="_blank">ac_syntax_highlighter.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://prismjs.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Light-Box</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_lightbox.html" target="_blank">ac_lightbox.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://lokeshdhakar.com/projects/lightbox2/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Light-Box2</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_lightbox.html" target="_blank">ac_lightbox.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://lokeshdhakar.com/projects/lightbox2/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Material-datetimepicker</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/form-picker.html" target="_blank">form-picker.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://t00rk.github.io/bootstrap-material-datetimepicker/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Modal-window-effects</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_modal.html" target="_blank">ac_modal.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://tympanus.net/codrops/2013/06/25/nifty-modal-window-effects/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Moment</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/notes.html" target="_blank">notes.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://momentjs.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Map-Google</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/map-google.html" target="_blank">map-google.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://hpneo.github.io/gmaps/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Map-Vector</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/map-vector.html" target="_blank">map-vector.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://jvectormap.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Max-length</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/form-elements-advance.html" target="_blank">form-elements-advance.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://mimo84.github.io/bootstrap-maxlength/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Modal</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_modal.html" target="_blank">ac_modal.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://tympanus.net/Development/ModalWindowEffects/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Multi-select</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/form-select.html" target="_blank">form-select.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://loudev.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nestable</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_nestable.html" target="_blank">ac_nestable.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://dbushell.com/Nestable/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Notification</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_notification.html" target="_blank">ac_notification.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://bootstrap-notify.remabledesigns.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Owl-carousel</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_slider.html" target="_blank">ac_slider.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://owlcarousel2.github.io/OwlCarousel2/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Offline</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ec-offline.html" target="_blank">ec-offline.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://github.hubspot.com/offline/docs/welcome/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Prism</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_syntax_highlighter.html" target="_blank">ac_syntax_highlighter.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://prismjs.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Pnotify</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_pnotify.html" target="_blank">ac_pnotify.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://sciactive.com/pnotify/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Radial</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/chart-radial.html" target="_blank">chart-radial.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://circle.firchow.net/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Range-Slider</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_rangeslider.html" target="_blank">ac_rangeslider.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://seiyria.com/bootstrap-slider/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Rating</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_rating.html" target="_blank">ac_rating.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://antenna.io/demo/jquery-bar-rating/examples/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Smart-wizard</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/form-wizard.html" target="_blank">form-wizard.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://www.techlaboratory.net/smartwizard" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Storejs</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/notes.html" target="_blank">notes.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://www.javascriptoo.com/store-js" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Session-idle-timeout</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ec-session-idle-timeout.html" target="_blank">form-select.html</a>
                                                            </td>
                                                            <td>
                                                                <!-- <a href="#!" target="_blank">View Resource</a> -->
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Select2</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/form-select.html" target="_blank">form-select.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://select2.github.io/examples.html" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Perfect Scroll</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/" target="_blank">All Page(Menu)</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://utatti.github.io/perfect-scrollbar/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Sweet Alert</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_alert.html" target="_blank">ac_alert.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://sweetalert.js.org/guides/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Tags</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/form-elements-advance.html" target="_blank">form-elements-advance.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://bootstrap-tagsinput.github.io/bootstrap-tagsinput/examples/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Tinymce</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/editor-tinymce.html" target="_blank">editor-tinymce.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://www.tiny.cloud/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Toolbar</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_toolbar.html" target="_blank">ac_toolbar.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://paulkinzett.github.io/toolbar/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Enjoyhint</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_tour.html" target="_blank">ac_tour.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://xbsoftware.com/products/enjoyhint/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Tree-View</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/ac_treeview.html" target="_blank">ac_treeview.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://old.jstree.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Waterball</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/widget-chart.html" target="_blank">widget-chart.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://www.jqueryscript.net/loading/Liquid-Loading-Indicator-Plugin-jQuery-createWaterBall.html" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--
Extra References
-->

                                <div class="col-sm-12">
                                    <div class="card" id="references">
                                        <div class="card-header">
                                            <h5>Extra Assets References</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-block">
                                            <div class="table-responsive">
                                                <h6>Used Font</h6>
                                                <table class="table table-bordered table-striped">
                                                    <thead class="header-table">
                                                        <tr>
                                                            <th>Font</th>
                                                            <th>Description</th>
                                                            <th>Link</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>Google Font</td>
                                                            <td>
                                                                Open-sans
                                                            </td>
                                                            <td>
                                                                <a href="https://getbootstrap.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <h6>Font Icons</h6>
                                                <table class="table table-bordered table-striped">
                                                    <thead class="header-table">
                                                        <tr>
                                                            <th>Font Icon</th>
                                                            <th>Description</th>
                                                            <th>Link</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>Feather Icon</td>
                                                            <td>
                                                                i.e. default font icon <a href="http://html.codedthemes.com/datta-able/bootstrap/default/icon-feather.html" target="_blank">icon-feather.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://feathericons.com/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Font Awesome Icon</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/icon-fontawsome.html" target="_blank">icon-fontawsome.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://fontawesome.com" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Flag Icon</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/icon-flag.html" target="_blank">icon-flag.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="http://flag-icon-css.lip.is/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Material Icon</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/icon-material.html" target="_blank">icon-material.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://google.github.io/material-design-icons/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Simple Line Icon</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/icon-simple-line.html" target="_blank">icon-simple-line.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://pagellapolitica.it/static/plugins/line-icons/" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Themify Icon</td>
                                                            <td>
                                                                <a href="http://html.codedthemes.com/datta-able/bootstrap/default/icon-themify.html" target="_blank">icon-themify.html</a>
                                                            </td>
                                                            <td>
                                                                <a href="https://themify.me/themify-icons" target="_blank">View Resource</a>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <h6>Images reference</h6>
                                                <table class="table table-bordered table-striped">
                                                    <thead class="header-table">
                                                        <tr>
                                                            <th>Link</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <a href="https://iconfinder.com/" target="_blank">Icon Finder</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <a href="https://unsplash.com/" target="_blank">Unsplash Images</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <a href="https://elements.envato.com/" target="_blank">Elements Photos (i.e. not included in package)</a>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="card" id="faq">
                                        <div class="card-header">
                                            <h5>FAQ</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-block">
                                            <a href="#!">
                                                <h5 data-toggle="collapse" data-target="#f1" aria-Expand="false" aria-controls="f1">What is <b> Datta Able</b>?</h5>
                                            </a>
                                            <div class="expand" id="f1">
                                                <p class="mb-0">Datta Able is premium dashboard template comes with tons of layout options, widgets, ready to use pages which completely suitable for any complex project.</p>
                                            </div>
                                            <hr>
                                            <a href="#!">
                                                <h5 data-toggle="collapse" data-target="#f2" aria-Expand="false" aria-controls="f2">Why <b>choose</b> Datta Able?</h5>
                                            </a>
                                            <div class="collapse" id="f2">
                                                <p class="mb-0">Datta Able is made by codedthemes's experience coders and designers. Well tested bug free code, easy to use flexible structure makes Datta Able a really differ to other templates. We
                                                    almost cover every possible plugins, components which helps you start immediately on your project.</p>
                                            </div>
                                            <hr>
                                            <a href="#!">
                                                <h5 data-toggle="collapse" data-target="#f4" aria-Expand="false" aria-controls="f4">What about Item <b>Support</b>?</h5>
                                            </a>
                                            <div class="collapse" id="f4">
                                                <p class="mb-0">6 month item support for any bugs, design issue in current version of template. We are not provide support for any custom work implementation.</p>
                                            </div>
                                            <hr>
                                            <a href="#!">
                                                <h5 data-toggle="collapse" data-target="#f5" aria-Expand="false" aria-controls="f5">What is Support <b>Turnaround time?</b></h5>
                                            </a>
                                            <div class="collapse" id="f5">
                                                <p class="mb-0">When you comment or submit the ticket for support. Our team takes it seriously and respond it within a Half or Full day.</p>
                                            </div>
                                            <hr>
                                            <a href="#!">
                                                <h5 data-toggle="collapse" data-target="#f6" aria-Expand="false" aria-controls="f5">Browser <b>Support?</b></h5>
                                            </a>
                                            <div class="collapse" id="f6">
                                                <p class="mb-0">Well tested on IE=>11, Edge, Chrome, Mozilla, Safari, Opera</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="card" id="cl">
                                        <div class="card-header">
                                            <h5>Change Log</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-Expand="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item minimize-card"><a href="javascript:"><span><i class="feather icon-minus"></i>Collapse</span><span style="display:none"><i class="feather icon-plus"></i> Expand</span></a></li>
                                                        <li class="dropdown-item close-card"><a href="javascript:"><i class="feather icon-trash"></i>Remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-block">
                                            <pre>
                                                <code class="language-markup">
                                                    v2.0
													-----------
													16-01-2019
													-----------
													- new bootstrap 4.2.1 updated
													- new spinners  and Toasts pages added in basic components
													- new different border class added in basic component( bc_extra.html )
													- new authentication new pages added
													- button size improved
													- new tab layout added
													- tabs and pills shadow change
													- collapsed menu active color change
													- menu background image version active menu design make improvement
													- chart issue for safari mac will solve

													How to Migrate v1.1 to v2.0?
													-----------
													- Replace  - js,css, plugins folder into your directory.
													- if you want to use new added components and pages in your project, get from the new updated theme package
													
													
													v1.1
													-----------
													07-12-2018
													-----------
													- Change Sidebar Menu toggle icon position change in small media (i.e. align right side)
													- Change Right side Header display below to top bar in small media
													- Make search input visible in small media
													- Box layout responsive bug fix
													- RTL layout change menu toggler position in small media
													- Dark vertion header search color change
													- Advance layout header bug improvement in small media
													- Change and replace (i.e. slim scroll )scroll Plugin (i.e. Perfect scroll) throughout theme

													How to Migrate v1.0 to v1.1?
													-----------
													- Replace  - js,css, plugins folder into your directory.

													v1.0
													-----------
													07-11-2018
													-----------

													- Initial release
													- PSD, XD, SKETCH, Starter/Full version folders included in download package.

                                                </code>
                                            </pre>
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
    <!-- required JS -->
    <script src="js/vendor-all.min.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/pcoded.min.js"></script>
    <script src="plugins/prism/js/prism.min.js"></script>
    <!-- custom JS -->
    <script type="text/javascript">
        $('body').scrollspy({
            target: ".pcoded-inner-navbar"
        });
        $('body').scroll(function() {
            $('.nav-item').removeClass('pcoded-trigger');
        });
        $(".pcoded-inner-navbar a").on('click', function(event) {
            if (this.hash !== "") {
                event.preventDefault();
                var hash = this.hash;
                $('html, body').animate({
                    scrollTop: $(hash).offset().top
                }, 1500, function() {
                    window.location.hash = hash;
                });
            }
        });
    </script>
</body>

</html>
