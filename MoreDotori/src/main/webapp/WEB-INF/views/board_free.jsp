<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>자유게시판</title>
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
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
    <!-- fontawesome icon -->
    <link rel="stylesheet" href="assets/fonts/fontawesome/css/fontawesome-all.min.css">
    <!-- animation css -->
    <link rel="stylesheet" href="assets/plugins/animation/css/animate.min.css">
    <!-- data tables css -->
    <link rel="stylesheet" href="assets/plugins/data-tables/css/datatables.min.css">
    <!-- footable css -->
    <link rel="stylesheet" href="assets/plugins/footable/css/footable.bootstrap.min.css">
    <link rel="stylesheet" href="assets/plugins/footable/css/footable.standalone.min.css">
    <!-- vandor css -->
    <link rel="stylesheet" href="assets/css/style.css">

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
                    <span class="b-title">Datta Able</span>
                </a>
                <a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
            </div>
            <div class="navbar-content scroll-div">
                <ul class="nav pcoded-inner-navbar">
                    <li class="nav-item pcoded-menu-caption">
                        <label>Navigation</label>
                    </li>
                    <li data-username="dashboard Default Ecommerce CRM Analytics Crypto Project" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-home"></i></span><span class="pcoded-mtext">Dashboard</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="index.html" class="">Default</a></li>
                            <li class=""><a href="dashboard-ecommerce.html" class="">Ecommerce</a></li>
                            <li class=""><a href="dashboard-crm.html" class="">CRM</a></li>
                            <li class=""><a href="dashboard-analytics.html" class="">Analytics</a></li>
                            <li class=""><a href="dashboard-crypto.html" class="">Crypto<span class="pcoded-badge label label-danger">NEW</span></a></li>
                            <li class=""><a href="dashboard-project.html" class="">Project</a></li>
                        </ul>
                    </li>
                    <li data-username="Vertical Horizontal Box Layout RTL fixed static collapse menu color icon dark" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-layout"></i></span><span class="pcoded-mtext">Page layouts</span></a>
                        <ul class="pcoded-submenu">
                            <li class="pcoded-hasmenu"><a href="#!" class="">Vertical</a>
                                <ul class="pcoded-submenu">
                                    <li class=""><a href="layout-static.html" class="" target="_blank">Static</a></li>
                                    <li class=""><a href="layout-fixed.html" class="" target="_blank">Fixed</a></li>
                                    <li class=""><a href="layout-menu-fixed.html" class="" target="_blank">Navbar fixed</a></li>
                                    <li class=""><a href="layout-mini-menu.html" class="" target="_blank">Collapse menu</a></li>
                                </ul>
                            </li>
                            <li class=""><a href="layout-horizontal.html" class="" target="_blank">Horizontal</a></li>
                            <li class=""><a href="layout-box.html" class="" target="_blank">Box layout</a></li>
                            <li class=""><a href="layout-rtl.html" class="" target="_blank">RTL</a></li>
                            <li class=""><a href="layout-light.html" class="" target="_blank">Light layout</a></li>
                            <li class=""><a href="layout-dark.html" class="" target="_blank">Dark layout <span class="pcoded-badge label label-danger">Hot</span></a></li>
                            <li class=""><a href="layout-menu-icon.html" class="" target="_blank">Color icon</a></li>
                        </ul>
                    </li>
                    <li data-username="widget Statistic Data Table User card Chart" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-layers"></i></span><span class="pcoded-mtext">Widget</span><span class="pcoded-badge label label-info">100+</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="widget-statistic.html" class="">Statistic</a></li>
                            <li class=""><a href="widget-data.html" class="">Data</a></li>
                            <li class=""><a href="widget-table.html" class="">Table</a></li>
                            <li class=""><a href="widget-user-card.html" class="">User</a></li>
                            <li class=""><a href="widget-chart.html" class="">Chart</a></li>
                        </ul>
                    </li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>UI Element</label>
                    </li>
                    <li data-username="basic components Button Alert Badges breadcrumb Paggination progress Tooltip popovers Carousel Cards Collapse Tabs pills Modal Grid System Typography Extra Shadows Embeds" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-box"></i></span><span class="pcoded-mtext">Basic</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="bc_alert.html" class="">Alert</a></li>
                            <li class=""><a href="bc_button.html" class="">Button</a></li>
                            <li class=""><a href="bc_badges.html" class="">Badges</a></li>
                            <li class=""><a href="bc_breadcrumb-pagination.html" class="">Breadcrumb & paggination</a></li>
                            <li class=""><a href="bc_card.html" class="">Cards</a></li>
                            <li class=""><a href="bc_collapse.html" class="">Collapse</a></li>
                            <li class=""><a href="bc_carousel.html" class="">Carousel</a></li>
                            <li class=""><a href="bc_grid.html" class="">Grid system</a></li>
                            <li class=""><a href="bc_progress.html" class="">Progress</a></li>
                            <li class=""><a href="bc_modal.html" class="">Modal</a></li>
                            <li class=""><a href="bc_spinner.html" class="">Spinner<span class="pcoded-badge label label-danger">NEW</span></a></li>
                            <li class=""><a href="bc_tabs.html" class="">Tabs & pills</a></li>
                            <li class=""><a href="bc_typography.html" class="">Typography</a></li>
                            <li class=""><a href="bc_tooltip-popover.html" class="">Tooltip & popovers</a></li>
                            <li class=""><a href="bc_toasts.html" class="">Toasts<span class="pcoded-badge label label-danger">NEW</span></a></li>
                            <li class=""><a href="bc_extra.html" class="">Other<span class="pcoded-badge label label-primary">NEW</span></a></li>
                        </ul>
                    </li>
                    <li data-username="advance components Alert gridstack lightbox modal notification pnotify rating rangeslider slider syntax highlighter Tour Tree view Nestable Toolbar" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-gitlab"></i></span><span class="pcoded-mtext">Advance</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="ac_alert.html" class="">Sweet alert</a></li>
                            <li class=""><a href="ac-datepicker-componant.html" class="">Datepicker</a></li>
                            <li class=""><a href="ac_gridstack.html" class="">Gridstack</a></li>
                            <li class=""><a href="ac_lightbox.html" class="">Lightbox</a></li>
                            <li class=""><a href="ac_modal.html" class="">Modal</a></li>
                            <li class=""><a href="ac_notification.html" class="">Notification</a></li>
                            <li class=""><a href="ac_nestable.html" class="">Nestable</a></li>
                            <li class=""><a href="ac_pnotify.html" class="">Pnotify</a></li>
                            <li class=""><a href="ac_rating.html" class="">Rating</a></li>
                            <li class=""><a href="ac_rangeslider.html" class="">Rangeslider</a></li>
                            <li class=""><a href="ac_slider.html" class="">Slider</a></li>
                            <li class=""><a href="ac_syntax_highlighter.html" class="">Syntax highlighter</a></li>
                            <li class=""><a href="ac_tour.html" class="">Tour</a></li>
                            <li class=""><a href="ac_treeview.html" class="">Tree view</a></li>
                            <li class=""><a href="ac_toolbar.html" class="">Toolbar</a></li>
                        </ul>
                    </li>
                    <li data-username="extra components Session Timeout Session Idle Timeout Offline" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-package"></i></span><span class="pcoded-mtext">Extra</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="ec-session-timeout.html" class="">Session timeout</a></li>
                            <li class=""><a href="ec-session-idle-timeout.html" class="">Session idle timeout</a></li>
                            <li class=""><a href="ec-offline.html" class="">Offline</a></li>
                        </ul>
                    </li>
                    <li data-username="Animations" class="nav-item"><a href="animation.html" class="nav-link"><span class="pcoded-micon"><i class="feather icon-aperture"></i></span><span class="pcoded-mtext">Animations</span></a></li>
                    <li data-username="icons Feather Fontawsome flag material simple line themify" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-feather"></i></span><span class="pcoded-mtext">Icons</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="icon-feather.html" class="">Feather<span class="pcoded-badge label label-danger">NEW</span></a></li>
                            <li class=""><a href="icon-fontawsome.html" class="">Font Awesome 5<span class="pcoded-badge label label-primary">1000+</span></a></li>
                            <li class=""><a href="icon-flag.html" class="">Flag</a></li>
                            <li class=""><a href="icon-material.html" class="">Material</a></li>
                            <li class=""><a href="icon-simple-line.html" class="">Simple line</a></li>
                            <li class=""><a href="icon-themify.html" class="">Themify</a></li>
                        </ul>
                    </li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>Forms</label>
                    </li>
                    <li data-username="form elements advance componant validation masking wizard picker select" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-file-text"></i></span><span class="pcoded-mtext">Forms</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="form_elements.html" class="">Form elements</a></li>
                            <li class=""><a href="form-elements-advance.html" class="">Form advance</a></li>
                            <li class=""><a href="form-validation.html" class="">Form validation</a></li>
                            <li class=""><a href="form-masking.html" class="">Form masking</a></li>
                            <li class=""><a href="form-wizard.html" class="">Form wizard</a></li>
                            <li class=""><a href="form-picker.html" class="">Form picker</a></li>
                            <li class=""><a href="form-select.html" class="">Form select</a></li>
                        </ul>
                    </li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>table</label>
                    </li>
                    <li data-username="Table bootstrap datatable footable" class="nav-item pcoded-hasmenu active pcoded-trigger">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-server"></i></span><span class="pcoded-mtext">Table</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="tbl_bootstrap.html" class="">Bootstrap</a></li>
                            <li class=""><a href="tbl_datatable.html" class="">Data table</a></li>
                            <li class="active"><a href="tbl_foo.html" class="">Foo table</a></li>
                        </ul>
                    </li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>Chart & Maps</label>
                    </li>
                    <li data-username="Charts AM Chart js Echart Google Highchart Knob Morris Nvd3 Peity Radial" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-pie-chart"></i></span><span class="pcoded-mtext">Chart</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="chart-am.html" class="">amChart 4</a></li>
                            <li class=""><a href="chart-chartjs.html" class="">Chart js</a></li>
                            <li class=""><a href="chart-echart.html" class="">Echart</a></li>
                            <li class=""><a href="chart-google.html" class="">Google</a></li>
                            <li class=""><a href="chart-highchart.html" class="">Highchart</a></li>
                            <li class=""><a href="chart-knob.html" class="">Knob</a></li>
                            <li class=""><a href="chart-morris.html" class="">Morris</a></li>
                            <li class=""><a href="chart-nvd3.html" class="">Nvd3</a></li>
                            <li class=""><a href="chart-peity.html" class="">Peity</a></li>
                            <li class=""><a href="chart-radial.html" class="">Radial</a></li>
                        </ul>
                    </li>
                    <li data-username="Maps Google Vector Google Map Search API Location" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-map"></i></span><span class="pcoded-mtext">Maps</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="map-google.html" class="">Google</a></li>
                            <li class=""><a href="map-vector.html" class="">Vector</a></li>
                            <li class=""><a href="map-api.html" class="">Gmap search API</a></li>
                            <li class=""><a href="map-location.html" class="">Location</a></li>
                        </ul>
                    </li>
                    <li data-username="landing page" class="nav-item"><a href="extra-pages/landingpage/index.html" class="nav-link" target="_blank"><span class="pcoded-micon"><i class="feather icon-navigation-2"></i></span><span class="pcoded-mtext">Landing
                                page</span></a></li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>Pages</label>
                    </li>
                    <li data-username="Authentication Sign up Sign in reset password Change password Personal information profile settings map form subscribe" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-lock"></i></span><span class="pcoded-mtext">Authentication</span><span class="pcoded-badge label label-danger">New</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="auth-signup.html" class="" target="_blank">Sign up</a></li>
                            <li class=""><a href="auth-signup-v2.html" class="" target="_blank">Sign up v2<span class="pcoded-badge label label-primary">New</span></a></li>
                            <li class=""><a href="auth-signup-v3.html" class="" target="_blank">Sign up v3<span class="pcoded-badge label label-primary">New</span></a></li>
                            <li class=""><a href="auth-signup-v4.html" class="" target="_blank">Sign up v4<span class="pcoded-badge label label-primary">New</span></a></li>
                            <li class=""><a href="auth-signup-v5.html" class="" target="_blank">Sign up v5<span class="pcoded-badge label label-primary">New</span></a></li>
                            <li class=""><a href="auth-signin.html" class="" target="_blank">Sign in</a></li>
                            <li class=""><a href="auth-signin-v2.html" class="" target="_blank">Sign in v2<span class="pcoded-badge label label-primary">New</span></a></li>
                            <li class=""><a href="auth-signin-v3.html" class="" target="_blank">Sign in v3<span class="pcoded-badge label label-primary">New</span></a></li>
                            <li class=""><a href="auth-signin-v4.html" class="" target="_blank">Sign in v4<span class="pcoded-badge label label-primary">New</span></a></li>
                            <li class=""><a href="auth-signin-v5.html" class="" target="_blank">Sign in v5<span class="pcoded-badge label label-primary">New</span></a></li>
                            <li class=""><a href="auth-reset-password.html" class="" target="_blank">Reset password</a></li>
                            <li class=""><a href="auth-reset-password-v2.html" class="" target="_blank">Reset password v2<span class="pcoded-badge label label-primary">New</span></a></li>
                            <li class=""><a href="auth-reset-password-v3.html" class="" target="_blank">Reset password v3<span class="pcoded-badge label label-primary">New</span></a></li>
                            <li class=""><a href="auth-reset-password-v4.html" class="" target="_blank">Reset password v4<span class="pcoded-badge label label-primary">New</span></a></li>
                            <li class=""><a href="auth-reset-password-v5.html" class="" target="_blank">Reset password v5<span class="pcoded-badge label label-primary">New</span></a></li>
                            <li class=""><a href="auth-change-password.html" class="" target="_blank">Change password</a></li>
                            <li class=""><a href="auth-Personal-Information.html" class="" target="_blank">Personal information</a></li>
                            <li class=""><a href="auth-profile-settings.html" class="" target="_blank">Profile settings</a></li>
                            <li class=""><a href="auth-map-form.html" class="" target="_blank">Map form</a></li>
                            <li class=""><a href="auth-subscribe.html" class="" target="_blank">Subscribe</a></li>
                        </ul>
                    </li>
                    <li data-username="Maintenance Error Comming soon offline ui" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-sliders"></i></span><span class="pcoded-mtext">Maintenance</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="maint-error.html" class="">Error</a></li>
                            <li class=""><a href="maint-coming-soon.html" class="">Coming soon</a></li>
                            <li class=""><a href="maint-offline-ui.html" class="" target="_blank">Offline UI</a></li>
                        </ul>
                    </li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>App</label>
                    </li>
                    <li data-username="message" class="nav-item"><a href="message.html" class="nav-link"><span class="pcoded-micon"><i class="feather icon-message-circle"></i></span><span class="pcoded-mtext">Message</span></a></li>
                    <li data-username="Task list board details" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-clipboard"></i></span><span class="pcoded-mtext">Task</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="task-list.html" class="">List</a></li>
                            <li class=""><a href="task-board.html" class="">Board</a></li>
                            <li class=""><a href="task-detail.html" class="">Detail</a></li>
                        </ul>
                    </li>
                    <li data-username="To-Do notes" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-check-square"></i></span><span class="pcoded-mtext">To-Do</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="todo.html" class="">To-Do</a></li>
                            <li class=""><a href="notes.html" class="">Notes</a></li>
                        </ul>
                    </li>
                    <li data-username="Gallery Grid Masonry Advance" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-image"></i></span><span class="pcoded-mtext">Gallery</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="gallery-grid.html" class="">Grid</a></li>
                            <li class=""><a href="gallery-masonry.html" class="">Masonry</a></li>
                            <li class=""><a href="gallery-advance.html" class="">Advance</a></li>
                        </ul>
                    </li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>Extension</label>
                    </li>
                    <li data-username="Editor CK-Editor Tinemce" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-file-plus"></i></span><span class="pcoded-mtext">Editor</span></a>
                        <ul class="pcoded-submenu">
                            <li class="pcoded-hasmenu">
                                <a href="#!" class="">CK editor</a>
                                <ul class="pcoded-submenu">
                                    <li class=""><a href="editor-classic.html" class="">Classic</a></li>
                                    <li class=""><a href="editor-balloon.html" class="">Balloon</a></li>
                                    <li class=""><a href="editor-inline.html" class="">Inline</a></li>
                                    <li class=""><a href="editor-document.html" class="">Document</a></li>
                                </ul>
                            </li>
                            <li class=""><a href="editor-tinymce.html" class="">Tinymce editor</a></li>
                        </ul>
                    </li>
                    <li data-username="Invoice Summury List" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-file-minus"></i></span><span class="pcoded-mtext">Invoice</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="invoice.html" class="">Invoice</a></li>
                            <li class=""><a href="invoice-summary.html" class="">Invoice summary</a></li>
                            <li class=""><a href="invoice-list.html" class="">Invoice list</a></li>
                        </ul>
                    </li>
                    <li data-username="Full Calendar" class="nav-item"><a href="full-calendar.html" class="nav-link"><span class="pcoded-micon"><i class="feather icon-calendar"></i></span><span class="pcoded-mtext">Full calendar</span></a></li>
                    <li data-username="File Upload" class="nav-item"><a href="file-upload.html" class="nav-link"><span class="pcoded-micon"><i class="feather icon-upload-cloud"></i></span><span class="pcoded-mtext">File upload</span></a></li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>Other</label>
                    </li>
                    <li data-username="Menu levels Menu level 2.1 Menu level 2.2" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-menu"></i></span><span class="pcoded-mtext">Menu levels</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="" class="">Menu Level 2.1</a></li>
                            <li class="pcoded-hasmenu">
                                <a href="#!" class="">Menu level 2.2</a>
                                <ul class="pcoded-submenu">
                                    <li class=""><a href="" class="">Menu level 3.1</a></li>
                                    <li class=""><a href="" class="">Menu level 3.2</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li data-username="Disabled Menu" class="nav-item disabled"><a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-power"></i></span><span class="pcoded-mtext">Disabled menu</span></a></li>
                    <li data-username="Sample Page" class="nav-item"><a href="sample-page.html" class="nav-link"><span class="pcoded-micon"><i class="feather icon-sidebar"></i></span><span class="pcoded-mtext">Sample page</span></a></li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>Support</label>
                    </li>
                    <li data-username="Documentation" class="nav-item"><a href="docs.html" class="nav-link" target="_blank"><span class="pcoded-micon"><i class="feather icon-book"></i></span><span class="pcoded-mtext">Documentation</span></a></li>
                    <li data-username="Need Support" class="nav-item"><a href="https://codedthemes.support-hub.io/" class="nav-link" target="_blank"><span class="pcoded-micon"><i class="feather icon-help-circle"></i></span><span class="pcoded-mtext">Need
                                support ?</span></a></li>
                </ul>
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
                   <span class="b-title">Datta Able</span>
               </a>
        </div>
        <a class="mobile-menu" id="mobile-header" href="#!">
            <i class="feather icon-more-horizontal"></i>
        </a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <li><a href="#!" class="full-screen" onclick="javascript:toggleFullScreen()"><i class="feather icon-maximize"></i></a></li>
                <li class="nav-item dropdown">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown">Dropdown</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#!">Action</a></li>
                        <li><a class="dropdown-item" href="#!">Another action</a></li>
                        <li><a class="dropdown-item" href="#!">Something else here</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <div class="main-search">
                        <div class="input-group">
                            <input type="text" id="m-search" class="form-control" placeholder="Search . . .">
                            <a href="#!" class="input-group-append search-close">
                                <i class="feather icon-x input-group-text"></i>
                            </a>
                            <span class="input-group-append search-btn btn btn-primary">
                                <i class="feather icon-search input-group-text"></i>
                            </span>
                        </div>
                    </div>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li>
                    <div class="dropdown">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="icon feather icon-bell"></i></a>
                        <div class="dropdown-menu dropdown-menu-right notification">
                            <div class="noti-head">
                                <h6 class="d-inline-block m-b-0">Notifications</h6>
                                <div class="float-right">
                                    <a href="#!" class="m-r-10">mark as read</a>
                                    <a href="#!">clear all</a>
                                </div>
                            </div>
                            <ul class="noti-body">
                                <li class="n-title">
                                    <p class="m-b-0">NEW</p>
                                </li>
                                <li class="notification">
                                    <div class="media">
                                        <img class="img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
                                        <div class="media-body">
                                            <p><strong>John Doe</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>30 min</span></p>
                                            <p>New ticket Added</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="n-title">
                                    <p class="m-b-0">EARLIER</p>
                                </li>
                                <li class="notification">
                                    <div class="media">
                                        <img class="img-radius" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image">
                                        <div class="media-body">
                                            <p><strong>Joseph William</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>30 min</span></p>
                                            <p>Prchace New Theme and make payment</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="notification">
                                    <div class="media">
                                        <img class="img-radius" src="assets/images/user/avatar-3.jpg" alt="Generic placeholder image">
                                        <div class="media-body">
                                            <p><strong>Sara Soudein</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>30 min</span></p>
                                            <p>currently login</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <div class="noti-footer">
                                <a href="#!">show all</a>
                            </div>
                        </div>
                    </div>
                </li>
                <li><a href="#!" class="displayChatbox"><i class="icon feather icon-mail"></i></a></li>
                <li>
                    <div class="dropdown drp-user">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon feather icon-settings"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right profile-notification">
                            <div class="pro-head">
                                <img src="assets/images/user/avatar-1.jpg" class="img-radius" alt="User-Profile-Image">
                                <span>John Doe</span>
                                <a href="auth-signin.html" class="dud-logout" title="Logout">
                                    <i class="feather icon-log-out"></i>
                                </a>
                            </div>
                            <ul class="pro-body">
                                <li><a href="#!" class="dropdown-item"><i class="feather icon-settings"></i> Settings</a></li>
                                <li><a href="#!" class="dropdown-item"><i class="feather icon-user"></i> Profile</a></li>
                                <li><a href="message.html" class="dropdown-item"><i class="feather icon-mail"></i> My Messages</a></li>
                                <li><a href="auth-signin.html" class="dropdown-item"><i class="feather icon-lock"></i> Lock Screen</a></li>
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
        <div class="h-list-header">
            <div class="input-group">
                <input type="text" id="search-friends" class="form-control" placeholder="Search Friend . . .">
            </div>
        </div>
        <div class="h-list-body">
            <a href="#!" class="h-close-text"><i class="feather icon-chevrons-right"></i></a>
            <div class="main-friend-cont scroll-div">
                <div class="main-friend-list">
                    <div class="media userlist-box" data-id="1" data-status="online" data-username="Josephin Doe">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image ">
                            <div class="live-status">3</div>
                        </a>
                        <div class="media-body">
                            <h6 class="chat-header">Josephin Doe<small class="d-block text-c-green">Typing . . </small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="2" data-status="online" data-username="Lary Doe">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image">
                            <div class="live-status">1</div>
                        </a>
                        <div class="media-body">
                            <h6 class="chat-header">Lary Doe<small class="d-block text-c-green">online</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="3" data-status="online" data-username="Alice">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-3.jpg" alt="Generic placeholder image"></a>
                        <div class="media-body">
                            <h6 class="chat-header">Alice<small class="d-block text-c-green">online</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="4" data-status="offline" data-username="Alia">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
                            <div class="live-status">1</div>
                        </a>
                        <div class="media-body">
                            <h6 class="chat-header">Alia<small class="d-block text-muted">10 min ago</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="5" data-status="offline" data-username="Suzen">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-4.jpg" alt="Generic placeholder image"></a>
                        <div class="media-body">
                            <h6 class="chat-header">Suzen<small class="d-block text-muted">15 min ago</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="1" data-status="online" data-username="Josephin Doe">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image ">
                            <div class="live-status">3</div>
                        </a>
                        <div class="media-body">
                            <h6 class="chat-header">Josephin Doe<small class="d-block text-c-green">Typing . . </small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="2" data-status="online" data-username="Lary Doe">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image">
                            <div class="live-status">1</div>
                        </a>
                        <div class="media-body">
                            <h6 class="chat-header">Lary Doe<small class="d-block text-c-green">online</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="3" data-status="online" data-username="Alice">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-3.jpg" alt="Generic placeholder image"></a>
                        <div class="media-body">
                            <h6 class="chat-header">Alice<small class="d-block text-c-green">online</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="4" data-status="offline" data-username="Alia">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
                            <div class="live-status">1</div>
                        </a>
                        <div class="media-body">
                            <h6 class="chat-header">Alia<small class="d-block text-muted">10 min ago</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="5" data-status="offline" data-username="Suzen">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-4.jpg" alt="Generic placeholder image"></a>
                        <div class="media-body">
                            <h6 class="chat-header">Suzen<small class="d-block text-muted">15 min ago</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="1" data-status="online" data-username="Josephin Doe">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image ">
                            <div class="live-status">3</div>
                        </a>
                        <div class="media-body">
                            <h6 class="chat-header">Josephin Doe<small class="d-block text-c-green">Typing . . </small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="2" data-status="online" data-username="Lary Doe">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image">
                            <div class="live-status">1</div>
                        </a>
                        <div class="media-body">
                            <h6 class="chat-header">Lary Doe<small class="d-block text-c-green">online</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="3" data-status="online" data-username="Alice">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-3.jpg" alt="Generic placeholder image"></a>
                        <div class="media-body">
                            <h6 class="chat-header">Alice<small class="d-block text-c-green">online</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="4" data-status="offline" data-username="Alia">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
                            <div class="live-status">1</div>
                        </a>
                        <div class="media-body">
                            <h6 class="chat-header">Alia<small class="d-block text-muted">10 min ago</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="5" data-status="offline" data-username="Suzen">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-4.jpg" alt="Generic placeholder image"></a>
                        <div class="media-body">
                            <h6 class="chat-header">Suzen<small class="d-block text-muted">15 min ago</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="1" data-status="online" data-username="Josephin Doe">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image ">
                            <div class="live-status">3</div>
                        </a>
                        <div class="media-body">
                            <h6 class="chat-header">Josephin Doe<small class="d-block text-c-green">Typing . . </small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="2" data-status="online" data-username="Lary Doe">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image">
                            <div class="live-status">1</div>
                        </a>
                        <div class="media-body">
                            <h6 class="chat-header">Lary Doe<small class="d-block text-c-green">online</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="3" data-status="online" data-username="Alice">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-3.jpg" alt="Generic placeholder image"></a>
                        <div class="media-body">
                            <h6 class="chat-header">Alice<small class="d-block text-c-green">online</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="4" data-status="offline" data-username="Alia">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
                            <div class="live-status">1</div>
                        </a>
                        <div class="media-body">
                            <h6 class="chat-header">Alia<small class="d-block text-muted">10 min ago</small></h6>
                        </div>
                    </div>
                    <div class="media userlist-box" data-id="5" data-status="offline" data-username="Suzen">
                        <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-4.jpg" alt="Generic placeholder image"></a>
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
                        <a class="media-left photo-table" href="#!"><img class="media-object img-radius img-radius m-t-5" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image"></a>
                        <div class="media-body chat-menu-content">
                            <div class="">
                                <p class="chat-cont">hello Datta! Will you tell me something</p>
                                <p class="chat-cont">about yourself?</p>
                            </div>
                            <p class="chat-time">8:20 a.m.</p>
                        </div>
                    </div>
                    <div class="media chat-messages">
                        <div class="media-body chat-menu-reply">
                            <div class="">
                                <p class="chat-cont">Ohh! very nice</p>
                            </div>
                            <p class="chat-time">8:22 a.m.</p>
                        </div>
                    </div>
                    <div class="media chat-messages">
                        <a class="media-left photo-table" href="#!"><img class="media-object img-radius img-radius m-t-5" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image"></a>
                        <div class="media-body chat-menu-content">
                            <div class="">
                                <p class="chat-cont">can you help me?</p>
                            </div>
                            <p class="chat-time">8:20 a.m.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="h-list-footer">
            <div class="input-group">
                <input type="file" class="chat-attach" style="display:none">
                <a href="#!" class="input-group-prepend btn btn-success btn-attach">
                    <i class="feather icon-paperclip"></i>
                </a>
                <input type="text" name="h-chat-text" class="form-control h-send-chat" placeholder="Write hear . . ">
                <button type="submit" class="input-group-append btn-send btn btn-primary">
                    <i class="feather icon-message-circle"></i>
                </button>
            </div>
        </div>
    </section>
    <!-- [ chat message ] end -->

    <!-- [ Main Content ] start -->
    <section class="pcoded-main-container">
        <div class="pcoded-wrapper">
            <div class="pcoded-content">
                <div class="pcoded-inner-content">
                    <!-- [ breadcrumb ] start -->
                    <div class="page-header">
                        <div class="page-block">
                            <div class="row align-items-center">
                                <div class="col-md-12">
                                    <div class="page-header-title">
                                        <h5 class="m-b-10">Foo-Table</h5>
                                    </div>
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                                        <li class="breadcrumb-item"><a href="#!">Table</a></li>
                                        <li class="breadcrumb-item"><a href="#!">Foo-Table</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- [ breadcrumb ] end -->
                    <div class="main-body">
                        <div class="page-wrapper">
                            <!-- [ Main Content ] start -->
                            <div class="row">
                                <!-- [ foo-table ] start -->
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Foo Table</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i> maximize</span><span style="display:none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                                                        <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i> collapse</span><span style="display:none"><i class="feather icon-plus"></i> expand</span></a></li>
                                                        <li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i> reload</a></li>
                                                        <li class="dropdown-item close-card"><a href="#!"><i class="feather icon-trash"></i> remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-block">
                                            <h5>Filtering</h5>
                                            <hr>
                                            <table id="demo-foo-filtering" class="table table-striped table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>First Name</th>
                                                        <th data-breakpoints="xs">Last Name</th>
                                                        <th data-breakpoints="xs">Job Title</th>
                                                        <th data-breakpoints="xs">BOB</th>
                                                        <th>Status</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Tiger Nixon</td>
                                                        <td>System Architect</td>
                                                        <td>Edinburgh</td>
                                                        <td>61</td>
                                                        <td><span class="tag tag-danger"> Suspended</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Garrett</td>
                                                        <td>Accountant</td>
                                                        <td>Tokyo</td>
                                                        <td>63</td>
                                                        <td><span class="tag tag-danger"> Active</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Cox</td>
                                                        <td>Author</td>
                                                        <td>San</td>
                                                        <td>66</td>
                                                        <td><span class="tag tag-default">Disabled</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Kelly</td>
                                                        <td>Brielle</td>
                                                        <td>Edinburgh</td>
                                                        <td>22</td>
                                                        <td><span class="tag tag-success">Active</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Airi Satou</td>
                                                        <td>Accountant</td>
                                                        <td>Tokyo</td>
                                                        <td>33</td>
                                                        <td><span class="tag tag-success"> Active</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Brielle</td>
                                                        <td>Specialist</td>
                                                        <td>New York</td>
                                                        <td>61</td>
                                                        <td><span class="tag tag-default">Disabled</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Herrod Chandler</td>
                                                        <td>Sales Assistant</td>
                                                        <td>San</td>
                                                        <td>59</td>
                                                        <td><span class="tag tag-danger">Suspended</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Rhona Davidson</td>
                                                        <td>Specialist</td>
                                                        <td>Tokyo</td>
                                                        <td>55</td>
                                                        <td><span class="tag tag-success"> Active</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Colleen Hurst</td>
                                                        <td>Javascript Developer</td>
                                                        <td>San</td>
                                                        <td>39</td>
                                                        <td><span class="tag tag-default">Disabled</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Sonya Frost</td>
                                                        <td>Software</td>
                                                        <td>Edinburgh</td>
                                                        <td>23</td>
                                                        <td><span class="tag tag-danger">Suspended</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Jena Gaines</td>
                                                        <td>Office Manager</td>
                                                        <td>London</td>
                                                        <td>30</td>
                                                        <td><span class="tag tag-success"> Active</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Flynn</td>
                                                        <td>Support Lead</td>
                                                        <td>Edinburgh</td>
                                                        <td>22</td>
                                                        <td><span class="tag tag-default">Disabled</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Charde Marshall</td>
                                                        <td>Regional Director</td>
                                                        <td>San</td>
                                                        <td>36</td>
                                                        <td><span class="tag tag-danger">Suspended</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Haley Kennedy</td>
                                                        <td>Senior Marketing Designer</td>
                                                        <td>London</td>
                                                        <td>43</td>
                                                        <td><span class="tag tag-success"> Active</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Tatyana Fitzpatrick</td>
                                                        <td>Regional Director</td>
                                                        <td>London</td>
                                                        <td>19</td>
                                                        <td><span class="tag tag-default">Disabled</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Michael Silva</td>
                                                        <td>Marketing Designer</td>
                                                        <td>London</td>
                                                        <td>66</td>
                                                        <td><span class="tag tag-danger">Suspended</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Paul Byrd</td>
                                                        <td>(CFO)</td>
                                                        <td>New York</td>
                                                        <td>64</td>
                                                        <td><span class="tag tag-success"> Active</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Gloria Little</td>
                                                        <td>Systems Administrator</td>
                                                        <td>New York</td>
                                                        <td>59</td>
                                                        <td><span class="tag tag-default">Disabled</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Bradley Greer</td>
                                                        <td>Software</td>
                                                        <td>London</td>
                                                        <td>41</td>
                                                        <td><span class="tag tag-danger">Suspended</span>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ foo-table ] end -->
                            </div>
                            <!-- [ Main Content ] end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
                            <img src="assets/images/browser/chrome.png" alt="Chrome">
                            <div>Chrome</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.mozilla.org/en-US/firefox/new/">
                            <img src="assets/images/browser/firefox.png" alt="Firefox">
                            <div>Firefox</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://www.opera.com">
                            <img src="assets/images/browser/opera.png" alt="Opera">
                            <div>Opera</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.apple.com/safari/">
                            <img src="assets/images/browser/safari.png" alt="Safari">
                            <div>Safari</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                            <img src="assets/images/browser/ie.png" alt="">
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
    <script src="assets/js/vendor-all.min.js"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/pcoded.min.js"></script>
    

    <!-- footable Js -->
    <script src="assets/plugins/footable/js/footable.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            // [ Foo-table ]
            $('#demo-foo-filtering').footable({
                "paging": {
                    "enabled": true
                },
                "sorting": {
                    "enabled": true
                }
            });
        });
    </script>

</body>
</html>
