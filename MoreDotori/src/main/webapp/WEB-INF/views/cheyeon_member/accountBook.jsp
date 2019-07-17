<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
	<meta charset="utf-8">
    <!-- append css -->
    <link rel="stylesheet" href="css/cheyeon_member/accountBook.css">
    <link rel="stylesheet" href="css/cheyeon_member/jsCalendar.css">
    <link rel="stylesheet" href="plugins/animation/css/animate.min.css">

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
                            	<div class="row" id="account_header">
                            		<div class="col">
										한달예산 : 20000원
                            		</div>
                             		<div class="col txt_center">
                             			<div class="title_select_date animation-toggle animated" data-animate="fadeIn"> </div>
                            		</div>
                            		<div class="col txt_right">
                            			월전체내역보기
                            		</div>                            		                           		
                            	</div>
								<div class="row">
								    <div class="col">
								    	<div class="card">
									    <div class="row">
									    	<div class="col-5" id="cal_col">
	                         					<a href='#!' class="back_today"></a>
												<div class="material-theme" id="my-calendar"></div>
								            </div>
								            <div class="col-7 mwidth_350">
												<ul class="nav nav-pills insert_tab" id="pills-tab" role="tablist">
												    <li class="nav-item">
												        <a class="nav-link" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="false">수입</a>
												    </li>
												    <li class="nav-item">
												        <a class="nav-link active" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="true">지출</a>
												    </li>
												    <li class="nav-item">
												        <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">이체</a>
												    </li>
												</ul>
												<div class="tab-content insert_cont" id="pills-tabContent">
												    <div class="tab-pane fade" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
												    </div>
												    <div class="tab-pane fade show active" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">

												    	<form action="" class="" method="">
													    	<input type="hidden" id="" class="out_form_input" name="" value="지출">
													    	<table class="insert_form">
													    		<tr>
													    			<td class="form_title">날짜</td>
													    			<td class="form_select_date"></td>
													    			<input type="hidden" class="form_select_date_val out_form_input" name="" value="">
													    		</tr>
													    		<tr class="insert_form_select">
													    			<td class="form_title">자산</td>
													    			<td class="form_select1">
												                        <select name="" class="out_form">
												                            <option value="">자산종류를 선택해주세요</option>
												                            <option>현금</option>
												                            <option>국민카드</option>
												                            <option>농협체크카드</option>
												                        </select>												    				
													    			</td>
													    		</tr>
													    		<tr class="insert_form_select">
													    			<td class="form_title">분류</td>
													    			<td class="form_select2">
												                        <select name="" class="out_form">
												                            <option value="">지출내역 분류를 선택해주세요</option>
												                            <option>식비</option>
												                            <option>문화생활비</option>
												                            <option>교통비</option>
												                        </select>												    				
													    			</td>
													    		</tr>
													    		<tr class="insert_form_txt">
													    			<td class="form_title">금액</td>
													    			<td class="form_money">
														    			<input type="text" placeholder="지출금액을 기입해주세요" name="" class="out_form" numberOnly>
													    			</td>
													    		</tr>
													    		<tr class="insert_form_txtarea">
													    			<td class="form_title">내용</td>
													    			<td class="form_cont">
																		<textarea rows="2" placeholder="지출내용을 기입해주세요" name="" class="out_form"></textarea>												    			
													    			</td>
													    		</tr>
													    	</table>
													    	
													    	<table class="insert_form">
													    		<tr class="insert_form_btn">
													    			<td class="wid_50 clear_insert_out">내용지우기</td>
													    			<td class="wid_50 save_insert_out">저장하기</td>
													    		</tr>												    	
													    	</table>
												    	</form>							    
												    
												    </div>
												    <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
												    </div>
												</div>
								            </div>					    
									    </div>								    	
								    	</div>
								    </div>
								    <div class="col">
							    		<div class="account_total">
							    			<table>
							    				<tr>
							    					<th>자산 총 액</th>
							    					<td>3000원</td>
							    					<th>수입</th>
							    					<td>3000원</td>
							    					<th>지출</th>
							    					<td>3000원</td>							    												    					
							    				</tr>
							    			</table>
							    		</div>								    
								    	<div class="card account_table_card">
								    		<table class="account_table">
								    			<tr>
								    				<th>구분</th>
								    				<th>자산</th>
								    				<th>분류</th>
								    				<th>내용</th>
								    				<th>금액</th>
								    				<th>기타</th>
								    			</tr>
								    			<tr>
								    				<td>지출</td>
								    				<td>농협체크카드</td>
								    				<td>식비</td>
								    				<td>홍대불닭발</td>
								    				<td>35,000</td>
								    				<td>삭제</td>
								    			</tr>
								    		</table>
								    	</div>
								    </div>
								</div>	                            
								<div class="row">
								    <div class="col-10 card">
								    	<div class="row">
									    	<div class="col-2">
									    		<div class="row">
                                                    <div class="form-group">
                                                    	<div> 수입 </div>
                                                        <div class="checkbox checkbox-fill d-inline">
                                                            <input type="checkbox" name="checkbox-fill-1" id="checkbox-fill-1" checked>
                                                            <label for="checkbox-fill-1" class="cr"> 122,332원 </label>
                                                        </div>
                                                    </div>
									    		</div>
									    		<div class="row">
                                                    <div class="form-group">
                                                    	<div> 지출 </div>
                                                        <div class="checkbox checkbox-fill d-inline">
                                                            <input type="checkbox" name="checkbox-fill-2" id="checkbox-fill-2" checked>
                                                            <label for="checkbox-fill-2" class="cr"> 122,332원 </label>
                                                        </div>
                                                    </div>
									    		</div>
									    		<div class="row">
                                                    <div class="form-group">
                                                    	<div> 그외 </div>
                                                        <div class="checkbox checkbox-fill d-inline">
                                                            <input type="checkbox" name="checkbox-fill-3" id="checkbox-fill-3" checked>
                                                            <label for="checkbox-fill-3" class="cr"> 122,332원 </label>
                                                        </div>
                                                    </div>
									    		</div>									    											    		
									    	</div>
		                                    <div class="col-10">
												<div id="container" style="height: 350px"></div>
		                                    </div>								    	
								    	</div>
								    </div>
								    <div class="col-2">col-2</div>
								</div>							
                            <!-- [ Main Content ] end -->
    <!-- highchart chart -->
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="js/cheyeon_member/accountBook.js"></script>
	<script src="js/cheyeon_member/jsCalendar.js"></script>
    <script language="javascript">
       var calendar = jsCalendar.new("#my-calendar");
       
       $.fn.settingToday = function () {
           var tday = new Date();
           var tdd = tday.getDate();
           var tmm = tday.getMonth()+1; //January is 0!
           var tyyyy = tday.getFullYear();

           if(tdd<10) { tdd='0'+tdd } 
           if(tmm<10) { tmm='0'+tmm }
    		
           tday = tyyyy+'년 '+tmm+'월 '+tdd+'일';
           
    		$(".title_select_date").text(tday);
    		$(".form_select_date").text(tday);
    		$(".form_select_date_val").val(tyyyy+'/'+tmm+'/'+tdd);
    		$(".back_today").text('today : '+tday);
    		
    		$.fn.animeTitle();
       };
       
       $.fn.animeTitle = function(){
           var anim = $('.title_select_date').attr('data-animate');
           $('.title_select_date').addClass('animated');
           $('.title_select_date').addClass(anim);
           setTimeout(function() {
               $('.title_select_date').removeClass(anim);
           }, 1000); 
       };
       
       $.fn.clearInsertOut = function(){
    	   console.log('지출 폼 내용 삭제');
    	   $('.form_money .out_form').val('');
    	   $('.form_cont .out_form').val('');
    	   $(".form_select1 .out_form option:eq(0)").prop("selected", true);
    	   $(".form_select2 .out_form option:eq(0)").prop("selected", true);
       };

       $.fn.saveInsertOut = function(){
    	   console.log('지출 폼 내용 저장');
    	   
    	   if( $(".form_select1 .out_form option:selected").val()==''){
    		   alert('자산종류를 선택해주세요');
    	   }else if( $(".form_select2 .out_form option:selected").val()==''){
    		   alert('자산종류를 선택해주세요');
    	   }else if($('.form_money .out_form').val()==''){
    		   alert('지출액수를 입력해주세요');
    	   }else if($('.form_cont .out_form').val()==''){
    		   alert('내용을 입력해주세요');
    	   }else{
    		   alert('저장로직을짜면됩니다');
    	   }

       };
       
       //메소드실행
       $.fn.settingToday();
       
       
       //클릭이벤트(달력클릭)
       calendar.onDateClick(function(event, date){
          console.log(jsCalendar.tools.dateToString(date, 'YYYY-MM-DD', 'en'));
          year = jsCalendar.tools.dateToString(date, 'YYYY', 'en');
          month = jsCalendar.tools.dateToString(date, 'MM', 'en');
          day = jsCalendar.tools.dateToString(date, 'DD', 'en');
          
          calendar.set(date);

          sday = year+'년 '+month+'월 '+day+'일';
	  	  $(".title_select_date").text(sday);
		  $(".form_select_date").text(sday);
		  $(".form_select_date_val").val(year+'/'+month+'/'+day);
		  
		  $.fn.animeTitle();
       });
       
       //클릭이벤트(today클릭)
       $(".back_today").click(function(){
    	   $.fn.settingToday();
           
    	   var date = new Date();
    	   calendar.set(date);
    	
       });
       
       //클릭이벤트(내용지우기클릭)
       $(".clear_insert_out").click(function(){
    	   $.fn.clearInsertOut();
       });
       
       //클릭이벤트(저장하기클릭)
       $(".save_insert_out").click(function(){
    	   $.fn.saveInsertOut();
       });
       
       
       //숫자입력시 컴마넣기
       $.fn.addCommas = function(x){
    	   return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
       };

       $.fn.removeCommas = function(x){
	   	    if(!x || x.length == 0) return "";
		    else return x.split(",").join("");
       };
              
       //입력이벤트(액수입력)
		$("input:text[numberOnly]").on("focus", function() {
		    var x = $(this).val();
		    x = $.fn.removeCommas(x);
		    $(this).val(x);
		}).on("focusout", function() {
		    var x = $(this).val();
		    if(x && x.length > 0) {
		        if(!$.isNumeric(x)) {
		            x = x.replace(/[^0-9]/g,"");
		        }
		        x = $.fn.addCommas(x);
		        $(this).val(x);
		    }
		}).on("keyup", function() {
		    $(this).val($(this).val().replace(/[^0-9]/g,""));
		});

    </script>
</body>
</html>