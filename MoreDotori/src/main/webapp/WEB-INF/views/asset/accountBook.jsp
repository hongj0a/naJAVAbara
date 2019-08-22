<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
	<meta charset="utf-8">
    <!-- append css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cheyeon_member/accountBook.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cheyeon_member/jsCalendar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/animation/css/animate.min.css">

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
                            		<!-- <div class="col"></div> -->
                             		<div class="col txt_center">
                             			<div class="title_select_date animation-toggle animated" data-animate="fadeIn"> </div>
                            		</div>
                            		<!-- <div class="col"></div> -->                       		                           		
                            	</div>
                            	<div class="row" id="account_menu">
                            		<div class="col">
                            			<span> 한달예산 : <input id="month_money" type="text" value="1321313" readonly>원 </span>
                            			<span class="badge badge-pill badge-info badge_update">수정</span>
										<span class="badge badge-pill badge-primary badge_save">저장</span>
										<span class="badge badge-pill badge-secondary badge_cancle">취소</span>                            			
                            		</div>
                            		<div class="col txt_right">
                            			<a href="/normal/book2">월 전체내역 및 검색</a>
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
												        <a class="inout_nav nav-link active" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="true">수입 및 지출</a>
												    </li>
												    <li class="nav-item">
												        <a class="trs_nav nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">이체</a>
												    </li>
												</ul>
												<div class="tab-content insert_cont" id="pills-tabContent">
												    <div class="tab-pane fade show active" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">

												    	<form id="inoutInsertForm" class="inoutInsertForm" method="post">
													    	<input type="hidden" name="io_seq" class="io_seq out_form" value="0"/>
													    	<table class="insert_form">
													    		<tr>
													    			<td class="form_title">날짜</td>
													    			<td class="form_select_date">
													    				<input type="text" class="form_select_date_val form_select_year_val out_form" size="4" maxlength="4" name="io_yyyy" value="" readonly>년 
													    				<input type="text" class="form_select_date_val form_select_month_val out_form" size="2" maxlength="2" name="io_mmmm" value="" readonly>월 
													    				<input type="text" class="form_select_date_val form_select_day_val out_form" size="2" maxlength="2" name="io_dddd" value="" readonly>일
													    				<span class="badge badge-pill badge-info badge_update_date">수정</span>
													    				<span class="badge badge-pill badge-primary badge_save_date badge_save_date_out_form">저장</span>
																		<span class="badge badge-pill badge-secondary badge_cancle_date">취소</span> 
													    			</td>
													    		</tr>
													    		<tr class="insert_form_select">
													    			<td class="form_title">대분류</td>
													    			<td class="form_select0">
												                        <select name="io_inout" class="out_form">
												                            <option value="">대분류를 선택해주세요</option>
												                            <c:if test="${empty codelistIO}">
												                            	<option>데이터를 가져오지 못했어요</option>
												                            </c:if>
												                            <c:forEach items="${codelistIO}" var="io_option">
												                            	<c:if test="${io_option.c_code ne 'IO003'}">
												                            		<option value="${io_option.c_code}"><c:out value="${io_option.c_name}"/></option>
												                            	</c:if>
												                            </c:forEach>
												                        </select>												    				
													    			</td>													    			
													    		</tr>
													    		<tr class="insert_form_select">
													    			<td class="form_title">자산</td>
													    			<td class="form_select1">
												                        <select name="io_asset" class="out_form">
												                            <option value="">자산종류를 선택해주세요</option>
												                            <option value="5">돼지저금통</option>
												                            <option value="6">지갑</option>
												                            <option value="7">국민카드</option>
												                        </select>												    				
													    			</td>
													    		</tr>
													    		<tr class="insert_form_select">
													    			<td class="form_title">분류</td>
													    			<td class="form_select2">
												                        <select name="io_categori" class="out_form">
												                            <option value="">내역 분류를 선택해주세요</option>
												                            <c:if test="${empty codelistIN}">
												                            	<option>수입옵션 데이터를 가져오지 못했어요</option>
												                            </c:if>
												                            <c:forEach items="${codelistIN}" var="in_option">
												                            	<option class="in_opt" value="${in_option.c_code}"><c:out value="${in_option.c_name}"/></option>
												                            </c:forEach>			
												                            									                            
												                            <c:if test="${empty codelistOT}">
												                            	<option>수출옵션 데이터를 가져오지 못했어요</option>
												                            </c:if>	 
												                            <c:forEach items="${codelistOT}" var="ot_option">
												                            	<option class="out_opt" value="${ot_option.c_code}"><c:out value="${ot_option.c_name}"/></option>
												                            </c:forEach>												                            
												                        </select>												    				
													    			</td>
													    		</tr>
													    		<tr class="insert_form_txt">
													    			<td class="form_title">금액</td>
													    			<td class="form_money">
														    			<input type="text" placeholder="지출금액을 기입해주세요" name="io_money" class="out_form" numberOnly>
													    			</td>
													    		</tr>
													    		<tr class="insert_form_txtarea">
													    			<td class="form_title">내용</td>
													    			<td class="form_cont">
																		<textarea rows="2" placeholder="지출내용을 기입해주세요" name="io_memo" class="out_form"></textarea>												    			
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
												    
												    	<form id="trsInsertForm" class="trsInsertForm" method="post">
													    	<input type="hidden" name="trs_seq" class="trs_seq trs_form" value="0"/>
													    	<input type="hidden" name="trs_inout" class="trs_inout trs_form" value="IO003"/>
													    	<table class="insert_form">
													    		<tr>
													    			<td class="form_title">날짜</td>
													    			<td class="form_select_date">
													    				<input type="text" class="form_select_date_val form_select_year_val trs_form" size="4" maxlength="4" name="trs_yyyy" value="" readonly>년 
													    				<input type="text" class="form_select_date_val form_select_month_val trs_form" size="2" maxlength="2" name="trs_mmmm" value="" readonly>월 
													    				<input type="text" class="form_select_date_val form_select_day_val trs_form" size="2" maxlength="2" name="trs_dddd" value="" readonly>일
													    				<span class="badge badge-pill badge-info badge_update_date">수정</span>
													    				<span class="badge badge-pill badge-primary badge_save_date badge_save_date_trs_form">저장</span>
																		<span class="badge badge-pill badge-secondary badge_cancle_date">취소</span> 
													    			</td>
													    		</tr>
													    		<tr class="insert_form_select">
													    			<td class="form_title">출금</td>
													    			<td class="form_select1">
												                        <select name="trs_out_asset" class="trs_form">
												                            <option value="">출금 자산종류를 선택해주세요</option>
												                            <option value="5">돼지저금통</option>
												                            <option value="6">지갑</option>
												                            <option value="7">국민카드</option>
												                            <option value="8">국민통장</option>
												                        </select>												    				
													    			</td>
													    		</tr>
													    		<tr class="insert_form_select">
													    			<td class="form_title">입금</td>
													    			<td class="form_select2">
												                        <select name="trs_in_asset" class="trs_form">
												                            <option value="">입금 자산종류를 선택해주세요</option>
												                            <option value="6">지갑</option>
												                            <option value="7">국민카드</option>
												                            <option value="5">돼지저금통</option>
												                            <option value="8">국민통장</option>
												                        </select>												    				
													    			</td>
													    		</tr>
													    		<!-- 
													    		<tr class="insert_form_select">
													    			<td class="form_title">분류</td>
													    			<td class="form_select3">
												                        <select name="" class="trs_form">
												                            <option value="">내역 분류를 선택해주세요</option>
												                            <option>카드값</option>
												                            <option>적금</option>
												                        </select>												    				
													    			</td>
													    		</tr>			
													    		-->									    		
													    		<tr class="insert_form_txt">
													    			<td class="form_title">금액</td>
													    			<td class="form_money">
														    			<input type="text" placeholder="금액을 기입해주세요" name="trs_money" class="trs_form" numberOnly>
													    			</td>
													    		</tr>
													    		<tr class="insert_form_txtarea">
													    			<td class="form_title">내용</td>
													    			<td class="form_cont">
																		<textarea rows="2" placeholder="내용을 기입해주세요" name="trs_memo" class="trs_form"></textarea>												    			
													    			</td>
													    		</tr>
													    	</table>
													    	
													    	<table id="trans_form_btn" class="insert_form">
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
							    					<th>총 자산</th>
							    					<td id="selAllAsset">-</td>
							    					<th>수입</th>
							    					<td id="selInDay">-</td>
							    					<th>지출</th>
							    					<td id="selOutDay">-</td>							    												    					
							    				</tr>
							    			</table>
							    		</div>								    
								    	<div class="card account_table_card">
								    		<table class="account_table">
								    			<thead>
								    				<th>구분</th>
								    				<th>자산</th>
								    				<th>분류</th>
								    				<th>내용</th>
								    				<th>금액</th>
								    				<th>기타</th>
								    			</thead>
								    			<tbody id="account_table_body"></tbody>
								    		</table>
								    	</div>
								    </div>
								</div>	                            
								<div class="row">
								    <div class="col-10">
								    	<div class="card">
								    		<div class="row">
										    	<div class="col chart_menu">
										    		<div class="row">
	                                                    <div class="form-group">
	                                                    	<div> <span class="selectMonthIO"></span>월 총 수입 </div>
	                                                        <div class="checkbox checkbox-fill d-inline">
	                                                            <input type="checkbox" name="checkbox-fill-1" id="checkbox-fill-1" checked>
	                                                            <label for="checkbox-fill-1" class="cr" id="selectMonthIn"> 122,332 </label>
	                                                        </div>
	                                                    </div>
										    		</div>
										    		<div class="row">
	                                                    <div class="form-group">
	                                                    	<div> <span class="selectMonthIO"></span>월 총 지출 </div>
	                                                        <div class="checkbox checkbox-fill d-inline">
	                                                            <input type="checkbox" name="checkbox-fill-2" id="checkbox-fill-2" checked>
	                                                            <label for="checkbox-fill-2" class="cr" id="selectMonthOut"> 122,332 </label>
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
								    <div class="col">
								    	<div class="card sum_menu">
								    		<div class="sum_title"> 남은 한달 예산 </div>
								    		<div id="month_rest" class="form_money_in"> - </div>								    	
								    		<div class="sum_title"> 평균지출 </div>
								    		<div id="selAvgOutDays" class="form_money_out"> - </div>								    	
								    		<div class="sum_title"> 평균수입 </div>
								    		<div id="selAvgInDays" class="form_money_in"> - </div>
								    		<div class="sum_title"> 최대지출일 </div>
								    		<div id="selMaxOutDay" class="form_money_out"> - </div>
								    		<div class="sum_title"> 최대수입일 </div>
								    		<div id="selMaxInDay" class="form_money_in"> - </div>								    		
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
	                        
    <!-- highchart chart -->
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="${pageContext.request.contextPath}/js/cheyeon_member/aBookChart.js"></script>
	<script src="${pageContext.request.contextPath}/js/cheyeon_member/jsCalendar.js"></script>
	<script src="${pageContext.request.contextPath}/js/cheyeon_member/accountBook.js"></script>
	<script>
		$("#menu1").addClass('active');
		$("#menu1").addClass('pcoded-trigger');
		$("#menu1_1").addClass('active');
	</script>
</body>
</html>