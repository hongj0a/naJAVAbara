<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
	<meta charset="utf-8">
	<jsp:include page="../main/header.jsp"></jsp:include>	
    <!-- append css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cheyeon_member/accountBookM.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cheyeon_member/jquery.monthpicker-0.1.css">
</head>

<body class="layout-8">
	
	<!-- 로그인아이디 -->
	<input id="loginId" type="hidden" value="<sec:authentication property="principal.member.m_id"/>">
    
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

				   <!-- 수입 및 지출 수정모달창 -->
			       <div id="inoutModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalPopoversLabel" aria-hidden="true">
			           <div class="modal-dialog" role="document">
			               <div class="modal-content">
			                   <div class="modal-header">
			                       <h5 class="modal-title" id="exampleModalPopoversLabel"> 수입 및 지출 내역 수정 </h5>
			                       <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
			                   </div>
			                   <div class="modal-body">
				                  <form id="inoutInsertForm" class="inoutInsertForm" method="post">
								    	<input type="hidden" id="csrf" name="${_csrf.parameterName}" value="${_csrf.token}" />
								    	<input type="hidden" name="io_seq" class="io_seq out_form" value="0"/>
								    	<table class="inout_form">
								    		<tr>
								    			<td class="form_title">날짜</td>
								    			<td class="form_select_date">
								    				<input type="text" class="form_select_date_val form_select_year_val inout_form" size="4" maxlength="4" name="io_yyyy" value="" readonly>년 
								    				<input type="text" class="form_select_date_val2 form_select_date_val form_select_month_val inout_form" size="3" maxlength="3" name="io_mmmm" value="" readonly>월 
								    				<input type="text" class="form_select_date_val2 form_select_date_val form_select_day_val inout_form" size="3" maxlength="3" name="io_dddd" value="" readonly>일
								    				<span class="badge badge-pill badge-info badge_update_date">수정</span>
								    				<span class="badge badge-pill badge-primary badge_save_date">저장</span>
													<span class="badge badge-pill badge-secondary badge_cancle_date">취소</span> 
								    			</td>
								    		</tr>
								    		<tr>
								    			<td class="form_inout">대분류</td>
									    			<td class="form_select0">
								                        <select name="io_inout" class="inout_form">
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
								    		<tr class="inout_form_select">
								    			<td class="form_title">자산</td>
								    			<td class="form_select1">
							                        <select name="io_asset" class="inout_form assetList">
							                            <option value="">자산종류를 선택해주세요</option>
							                        </select>												    				
								    			</td>
								    		</tr>
								    		<tr class="inout_form_select">
								    			<td class="form_title">분류</td>
								    			<td class="form_select2">
							                        <select name="io_categori" class="inout_form">
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
								    		<tr class="inout_form_txt">
								    			<td class="form_title">금액</td>
								    			<td class="form_money">
									    			<input type="text" placeholder="금액을 기입해주세요" name="io_money" class="inout_form" numberOnly>
								    			</td>
								    		</tr>
								    		<tr class="inout_form_txtarea">
								    			<td class="form_title">내용</td>
								    			<td class="form_cont">
													<textarea rows="2" placeholder="내용을 기입해주세요" name="io_memo" class="inout_form"></textarea>												    			
								    			</td>
								    		</tr>
								    	</table>
								    	</form>			                   		
					                   </div>
					                   <div class="modal-footer">	
					                       <button type="button" class="btn btn-warning del_insert_inout">삭제</button>				                   
					                       <button type="button" class="btn btn-secondary clear_insert_inout" data-dismiss="modal">취소</button>
					                       <button type="button" class="btn btn-primary save_insert_inout">저장</button>
					                   </div>
			               </div>
			           </div>
			       </div>

				   <!-- 이체 수정모달창 -->
			       <div id="transferModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalPopoversLabel" aria-hidden="true">
			           <div class="modal-dialog" role="document">
			               <div class="modal-content">
			                   <div class="modal-header">
			                       <h5 class="modal-title" id="exampleModalPopoversLabel"> 이체내역 수정 </h5>
			                       <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
			                   </div>
			                   <div class="modal-body">
				                  <form id="trsInsertForm" class="trsInsertForm" method="post">
							    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							    	<input type="hidden" name="trs_seq" class="trs_seq trs_form" value="0"/>
							    	<input type="hidden" name="trs_inout" class="trs_inout trs_form" value="IO003"/>
							    	<table class="insert_form">
							    		<tr>
							    			<td class="form_title">날짜</td>
							    			<td class="form_select_date">
							    				<input type="text" class="form_select_date_val form_select_year_val trs_form" size="4" maxlength="4" name="trs_yyyy" value="" readonly>년 
							    				<input type="text" class="form_select_date_val2 form_select_date_val form_select_month_val trs_form" size="3" maxlength="3" name="trs_mmmm" value="" readonly>월 
							    				<input type="text" class="form_select_date_val2 form_select_date_val form_select_day_val trs_form" size="3" maxlength="3" name="trs_dddd" value="" readonly>일
							    				<span class="badge badge-pill badge-info badge_update_date">수정</span>
							    				<span class="badge badge-pill badge-primary badge_save_date">저장</span>
												<span class="badge badge-pill badge-secondary badge_cancle_date">취소</span> 
							    			</td>
							    		</tr>
							    		<tr class="insert_form_select">
							    			<td class="form_title">출금</td>
							    			<td class="form_select1">
						                        <select name="trs_out_asset" class="trs_form assetList">
						                            <option value="">출금 자산종류를 선택해주세요</option>
						                        </select>												    				
							    			</td>
							    		</tr>
							    		<tr class="insert_form_select">
							    			<td class="form_title">입금</td>
							    			<td class="form_select2">
						                        <select name="trs_in_asset" class="trs_form assetList">
						                            <option value="">입금 자산종류를 선택해주세요</option>
							                            <option value="1">돼지저금통</option>
							                            <option value="2">지갑</option>
							                            <option value="3">국민카드</option>
							                            <option value="4">국민통장</option>
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
				                  </form>			                   		
			                   </div>
			                   <div class="modal-footer">
					               <button type="button" class="btn btn-warning del_insert_trs">삭제</button>	
			                       <button type="button" class="btn btn-secondary clear_insert_trs" data-dismiss="modal">취소</button>
			                       <button type="button" class="btn btn-primary save_insert_trs">저장</button>
			                   </div>
			               </div>
			           </div>
			       </div>

                            <!-- [ Main Content ] start -->
                           	<div class="row" id="account_header">
                           		<div class="col">
                           		
                           		</div>
                            	<div class="col txt_center">
                            		<label id="select-month"></label>
                           		</div>
                           		<div class="col">
                           		</div>                            		                           		
                           	</div>                            
                            <div class="row">
                            	<div class="col-1">
                            		
                            	</div>
                            	<div class="col-10">
                            		<div class="tablesCard_header">
                            			<span>
                            				<a href="/normal/book">돌아가기</a>
                            			</span>
                            			
                            			<span class="fl_right accountbook_search">
                            				<input id="serachingtxt" type="text" placeholder="내용 검색"/>
                            				<span id="searching"><i class="feather icon-search"></i></span>
                            			</span>
                            		</div>
                            		<div class="card tablesCard">
                            			<table class="account_table">
							    			<thead>
							    				<th>날짜</th>
							    				<th>구분</th>
							    				<th>자산</th>
							    				<th>분류</th>
							    				<th>내용</th>
							    				<th>금액</th>
							    			</thead>
								    		<tbody id="account_table_body">
						    				</tbody>					    				                         				
                            			</table>
                            		</div>
                            		<div class="dataCount"></div>
                            		<div class="pageNum">
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
    
    <!-- [ Main Content ] end -->
    <%-- <script src="${pageContext.request.contextPath}/js/cheyeon_member/jquery.monthpicker-0.1.js"></script> --%>
	<script>
     //메뉴
	 $("#menu1").addClass('active');
	 $("#menu1").addClass('pcoded-trigger');
	 $("#menu1_1").addClass('active');

     var contextPath = "${pageContext.request.contextPath}";
	</script>
	<script src="${pageContext.request.contextPath}/js/cheyeon_member/accountBookM.js"></script>
</body>
</html>