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
                            		</div>
                             		<div class="col txt_center">
                             			<div class="title_select_date animation-toggle animated" data-animate="fadeIn"> </div>
                            		</div>
                            		<div class="col">
                            		</div>                            		                           		
                            	</div>
                            	<div class="row" id="account_menu">
                            		<div class="col">
                            			<span> 한달예산 : <input id="month_money" type="text" value="1321313" readonly>원 </span>
                            			<span class="badge badge-pill badge-info badge_update">수정</span>
										<span class="badge badge-pill badge-primary badge_save">저장</span>
										<span class="badge badge-pill badge-secondary badge_cancle">취소</span>                            			
                            		</div>
                            		<div class="col txt_right">
                            			<a href="/book2">월 전체내역 보기</a>
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

												    	<form action="" class="" method="">
													    	<input type="hidden" id="" class="in_form form_categori" name="" value="수입">
													    	<table class="insert_form">
													    		<tr>
													    			<td class="form_title">날짜</td>
													    			<td class="form_select_date"></td>
													    			<input type="hidden" class="form_select_date_val in_form" name="" value="">
													    		</tr>
													    		<tr class="insert_form_select">
													    			<td class="form_title">자산</td>
													    			<td class="form_select1">
												                        <select name="" class="in_form">
												                            <option value="">자산종류를 선택해주세요</option>
												                            <option>현금</option>
												                            <option>국민카드</option>
												                            <option>우리은행</option>
												                        </select>												    				
													    			</td>
													    		</tr>
													    		<tr class="insert_form_select">
													    			<td class="form_title">분류</td>
													    			<td class="form_select2">
												                        <select name="" class="in_form">
												                            <option value="">수입내역 분류를 선택해주세요</option>
												                            <option>월급</option>
												                            <option>용돈</option>
												                            <option>부수입</option>
												                        </select>												    				
													    			</td>
													    		</tr>
													    		<tr class="insert_form_txt">
													    			<td class="form_title">금액</td>
													    			<td class="form_money">
														    			<input type="text" placeholder="수입금액을 기입해주세요" name="" class="in_form" numberOnly>
													    			</td>
													    		</tr>
													    		<tr class="insert_form_txtarea">
													    			<td class="form_title">내용</td>
													    			<td class="form_cont">
																		<textarea rows="2" placeholder="수입내용을 기입해주세요" name="" class="in_form"></textarea>												    			
													    			</td>
													    		</tr>
													    	</table>
													    	
													    	<table class="insert_form">
													    		<tr class="insert_form_btn">
													    			<td class="wid_50 clear_insert_in">내용지우기</td>
													    			<td class="wid_50 save_insert_in">저장하기</td>
													    		</tr>												    	
													    	</table>
												    	</form>

												    </div>
												    <div class="tab-pane fade show active" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">

												    	<form action="" class="" method="">
													    	<input type="hidden" id="" class="out_form form_categori" name="" value="지출">
													    	<table class="insert_form">
													    		<tr>
													    			<td class="form_title">날짜</td>
													    			<td class="form_select_date"></td>
													    			<input type="hidden" class="form_select_date_val out_form" name="" value="">
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
												    
												    	<form action="" class="" method="">
													    	<input type="hidden" id="" class="trs_form form_categori" name="" value="이체">
													    	<table class="insert_form">
													    		<tr>
													    			<td class="form_title">날짜</td>
													    			<td class="form_select_date"></td>
													    			<input type="hidden" class="form_select_date_val trs_form" name="" value="">
													    		</tr>
													    		<tr class="insert_form_select">
													    			<td class="form_title">출금</td>
													    			<td class="form_select1">
												                        <select name="" class="trs_form">
												                            <option value="">출금 자산종류를 선택해주세요</option>
												                            <option>현금</option>
												                            <option>국민카드</option>
												                            <option>우리은행</option>
												                        </select>												    				
													    			</td>
													    		</tr>
													    		<tr class="insert_form_select">
													    			<td class="form_title">입금</td>
													    			<td class="form_select2">
												                        <select name="" class="trs_form">
												                            <option value="">입금 자산종류를 선택해주세요</option>
												                            <option>현금</option>
												                            <option>국민카드</option>
												                            <option>우리은행</option>
												                        </select>												    				
													    			</td>
													    		</tr>
													    		<tr class="insert_form_txt">
													    			<td class="form_title">금액</td>
													    			<td class="form_money">
														    			<input type="text" placeholder="금액을 기입해주세요" name="" class="trs_form" numberOnly>
													    			</td>
													    		</tr>
													    		<tr class="insert_form_txtarea">
													    			<td class="form_title">내용</td>
													    			<td class="form_cont">
																		<textarea rows="2" placeholder="내용을 기입해주세요" name="" class="trs_form"></textarea>												    			
													    			</td>
													    		</tr>
													    	</table>
													    	
													    	<table class="insert_form">
													    		<tr class="insert_form_btn">
													    			<td class="wid_50 clear_insert_trs">내용지우기</td>
													    			<td class="wid_50 save_insert_trs">저장하기</td>
													    		</tr>												    	
													    	</table>
												    	</form>												    
												    
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
												<!--
								    			<tr>
								    				<td>지출</td>
								    				<td>농협체크카드</td>
								    				<td>식비</td>
								    				<td>홍대불닭발</td>
								    				<td>35,000</td>
								    				<td class="delete_row" onclick="$.fn.delRow(this)">삭제</td>
								    			</tr>
								    			 -->
								    		</table>
								    	</div>
								    </div>
								</div>	                            
								<div class="row">
								    <div class="col-10">
								    	<div class="card">
								    		<div class="row">
										    	<div class="col-2 chart_menu">
										    		<div class="row">
	                                                    <div class="form-group">
	                                                    	<div> @월 총 수입 </div>
	                                                        <div class="checkbox checkbox-fill d-inline">
	                                                            <input type="checkbox" name="checkbox-fill-1" id="checkbox-fill-1" checked>
	                                                            <label for="checkbox-fill-1" class="cr"> 122,332 </label>
	                                                        </div>
	                                                    </div>
										    		</div>
										    		<div class="row">
	                                                    <div class="form-group">
	                                                    	<div> @월 총 지출 </div>
	                                                        <div class="checkbox checkbox-fill d-inline">
	                                                            <input type="checkbox" name="checkbox-fill-2" id="checkbox-fill-2" checked>
	                                                            <label for="checkbox-fill-2" class="cr"> 122,332 </label>
	                                                        </div>
	                                                    </div>
										    		</div>
										    	</div>
			                                    <div class="col-10">
		                                    		<div id="container"></div>
			                                    </div>								    		
								    		</div>
								    	</div>
								    </div>
								    <div class="col-2">
								    	<div class="card sum_menu">
								    		<div> 남은 한달 예산 </div>
								    		<div> 333,000원 </div>								    	
								    		<div> 일평균지출 </div>
								    		<div> 521,232원 </div>
								    		<div> 최대지출일 </div>
								    		<div> 7월 11일 </div>
								    	</div>
								    </div>
								</div>							
                            <!-- [ Main Content ] end -->
    <!-- highchart chart -->
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="js/cheyeon_member/aBookChart.js"></script>
	<script src="js/cheyeon_member/jsCalendar.js"></script>
	<script src="js/cheyeon_member/accountBook.js"></script>
	<script>
		$("#menu1").addClass('active');
		$("#menu1").addClass('pcoded-trigger');
		$("#menu1_1").addClass('active');
	</script>
</body>
</html>