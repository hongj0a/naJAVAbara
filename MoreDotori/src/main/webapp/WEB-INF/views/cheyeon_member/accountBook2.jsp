<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
	<meta charset="utf-8">
	
    <!-- Wysiwyg editor -->
    <link rel="stylesheet" href="plugins/fullcalendar/css/fullcalendar.min.css">
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

                            <!-- [ Main Content ] start -->
								<div class="row">
								    <div class="col-4">
		                                <!-- [ Full-calendar ] start -->
		                                <div class="col-sm-12">
		                                    <div class="card fullcalendar-card">
		                                        <div class="card-block">
		                                            <div class="row">
		                                                <div class="col-12">
		                                                    <div id='calendar' class='calendar'></div>
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!-- [ Full-calendar ] end -->								    	
								    </div>
								    <div class="col-8">col-8</div>
								</div>	                            
								<div class="row">
								    <div class="col-8">col-8</div>
								    <div class="col-4">col-4</div>
								</div>							
                            <!-- [ Main Content ] end -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- [ Main Content ] end -->

    <!-- Full calendar js -->
    <script src="plugins/fullcalendar/js/lib/moment.min.js"></script>
    <script src="plugins/fullcalendar/js/lib/jquery-ui.min.js"></script>
    <script src="plugins/fullcalendar/js/fullcalendar.min.js"></script>

    <script type="text/javascript">
        // Full calendar
        $(window).on('load', function() {
            $('#calendar').fullCalendar({
                header: {
                    left: 'prev',
                    center: 'title today',
                    right: 'next'
                },
                defaultDate: '2019-07-14',
                editable: true,
                droppable: true,
                drop: function() {
                    if ($('#drop-remove').is(':checked')) {
                        $(this).remove();
                    }
                }
            });
        });
    </script>
</body>
</html>