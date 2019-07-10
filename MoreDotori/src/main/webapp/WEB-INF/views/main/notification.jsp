<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
	<meta charset="utf-8">


    <!-- append css -->
    <link rel="stylesheet" href="css/main/noti.css">
    
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script type="text/javascript">
	jQuery.noConflict();
	jQuery( document ).ready(function( $ ) {
		// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
		var floatPosition = parseInt($("#noti_gotop_btn").css('top'));
		// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );

		$(window).scroll(function() {
			// 현재 스크롤 위치를 가져온다.
			var scrollTop = $(window).scrollTop();
			var newPosition =  floatPosition - scrollTop + "px";

			$("#noti_gotop_btn").stop().animate({
				"bottom" : newPosition
			}, 500);

		}).scroll();

	    var speed = 500; // 스크롤속도
	    $("#noti_gotop_btn").css("cursor", "pointer").click(function(){
	        $('body, html').animate({scrollTop:0}, speed);
	    });

	});
	</script>

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
							    <div class="col-2" id="noti_menu">
									<div><a> 전체보기 </a></div>
									<div><a> 상담 </a></div>
									<div><a> Q&A </a></div>
									<div><a> 게시판 </a></div>
							    </div>
							    <div class="col-8">
				                    <div class="card">
				                        <div class="card-header">
				                            <h5>알림</h5>
				                        </div>
				                        <div class="card-body">
				                        <div class="noti_lists">
				                        	<h6> 오늘 </h6>
				                        	<hr/>
										        <div class="card noti_list">
										            <div class="card-body2 card-body">
										            	<div class="noti_head">
										            		<span>
										            			<a href="#!">[말머리] 제목gg님의  글에 댓글이 달렸습니다.</a>
										            		</span>
										            		<span><a href="#!"><i class="feather icon-x"></i></a></span>
										            	</div>
										            	
										                <div class="noti_body">
										                	<span>
										                		<a href="#!">글제목 : 웅엥웅졸졸졸하하하후훟 </a>
										                	</span>
										                </div>
										                
										                <div class="noti_foot">
										                	<span> 6월 27일 오후 3시 23분  </span>
										                </div>
										            </div>
										        </div>
										        
										        <div class="card noti_list">
										            <div class="card-body2 card-body">
										            	<div class="noti_head">
										            		<span>
										            			<a href="#!">[말머리] 제목gg님의  글에 댓글이 달렸습니다.</a>
										            		</span>
										            		<span><a href="#!"><i class="feather icon-x"></i></a></span>
										            	</div>
										            	
										                <div class="noti_body">
										                	<span>
										                		<a href="#!">글제목 : 웅엥웅졸졸졸하하하후훟 </a>
										                	</span>
										                </div>
										                
										                <div class="noti_foot">
										                	<span> 6월 27일 오후 3시 23분  </span>
										                </div>
										            </div>
										        </div>

										        <div class="card noti_list">
										            <div class="card-body2 card-body">
										            	<div class="noti_head">
										            		<span>
										            			<a href="#!">[말머리] 제목gg님의  글에 댓글이 달렸습니다.</a>
										            		</span>
										            		<span><a href="#!"><i class="feather icon-x"></i></a></span>
										            	</div>
										            	
										                <div class="noti_body">
										                	<span>
										                		<a href="#!">글제목 : 웅엥웅졸졸졸하하하후훟 </a>
										                	</span>
										                </div>
										                
										                <div class="noti_foot">
										                	<span> 6월 27일 오후 3시 23분  </span>
										                </div>
										            </div>
										        </div>	
				                        </div>
				                        
				                        <div class="noti_lists">
				                        	<h6> 7월 9일 </h6>
				                        	<hr/>
										        <div class="card noti_list">
										            <div class="card-body2 card-body">
										            	<div class="noti_head">
										            		<span>
										            			<a href="#!">[말머리] 제목gg님의  글에 댓글이 달렸습니다.</a>
										            		</span>
										            		<span><a href="#!"><i class="feather icon-x"></i></a></span>
										            	</div>
										            	
										                <div class="noti_body">
										                	<span>
										                		<a href="#!">글제목 : 웅엥웅졸졸졸하하하후훟 </a>
										                	</span>
										                </div>
										                
										                <div class="noti_foot">
										                	<span> 6월 27일 오후 3시 23분  </span>
										                </div>
										            </div>
										        </div>
										        
										        <div class="card noti_list">
										            <div class="card-body2 card-body">
										            	<div class="noti_head">
										            		<span>
										            			<a href="#!">[말머리] 제목gg님의  글에 댓글이 달렸습니다.</a>
										            		</span>
										            		<span><a href="#!"><i class="feather icon-x"></i></a></span>
										            	</div>
										            	
										                <div class="noti_body">
										                	<span>
										                		<a href="#!">글제목 : 웅엥웅졸졸졸하하하후훟 </a>
										                	</span>
										                </div>
										                
										                <div class="noti_foot">
										                	<span> 6월 27일 오후 3시 23분  </span>
										                </div>
										            </div>
										        </div>

										        <div class="card noti_list">
										            <div class="card-body2 card-body">
										            	<div class="noti_head">
										            		<span>
										            			<a href="#!">[말머리] 제목gg님의  글에 댓글이 달렸습니다.</a>
										            		</span>
										            		<span><a href="#!"><i class="feather icon-x"></i></a></span>
										            	</div>
										            	
										                <div class="noti_body">
										                	<span>
										                		<a href="#!">글제목 : 웅엥웅졸졸졸하하하후훟 </a>
										                	</span>
										                </div>
										                
										                <div class="noti_foot">
										                	<span> 6월 27일 오후 3시 23분  </span>
										                </div>
										            </div>
										        </div>	
				                        </div>				                        
				                        </div>
				                    </div>							    
							    </div>
							    
							    <div class="col-2 noti_gotop">
							   		<button type="button" class="btn btn-icon btn-rounded btn-info" id="noti_gotop_btn"><i class="feather icon-chevrons-up"></i></button>
							    </div>							    
							</div>
                            <!-- [ Main Content ] end -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- [ Main Content ] end -->
</body>
</html>