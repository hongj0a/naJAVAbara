<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
	<meta charset="utf-8">
    <!-- append css -->
    <link rel="stylesheet" href="css/cheyeon_member/accountBookM.css">
    <link rel="stylesheet" href="css/cheyeon_member/jquery.monthpicker-0.1.css">
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

				   <!-- 수입 및 지출 수정모달창 -->
			       <div id="inoutModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalPopoversLabel" aria-hidden="true">
			           <div class="modal-dialog" role="document">
			               <div class="modal-content">
			                   <div class="modal-header">
			                       <h5 class="modal-title" id="exampleModalPopoversLabel"> 수입 및 지출 내역 수정 </h5>
			                       <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
			                   </div>
			                   <div class="modal-body">
				                  <form action="" class="" method="">
								    	<table class="inout_form">
								    		<tr>
								    			<td class="form_inout">대분류</td>
								    			<td class="form_select0">
							                        <select name="" class="inout_form">
							                            <option value="">대분류를 선택해주세요</option>
							                            <option>수입</option>
							                            <option>지출</option>
							                        </select>						    			
								    			</td>
								    		</tr>						    	
								    		<tr>
								    			<td class="form_title">날짜</td>
								    			<td class="form_select_date">
								    				2020223434
								    			</td>
								    		</tr>
								    		<tr class="inout_form_select">
								    			<td class="form_title">자산</td>
								    			<td class="form_select1">
							                        <select name="" class="inout_form">
							                            <option value="">자산종류를 선택해주세요</option>
							                            <option>현금</option>
							                            <option>국민카드</option>
							                            <option>우리은행</option>
							                        </select>												    				
								    			</td>
								    		</tr>
								    		<tr class="inout_form_select">
								    			<td class="form_title">분류</td>
								    			<td class="form_select2">
							                        <select name="" class="inout_form">
							                            <option value="">내역 분류를 선택해주세요</option>
							                            <option>월급</option>
							                            <option>용돈</option>
							                            <option>부수입</option>
							                        </select>												    				
								    			</td>
								    		</tr>
								    		<tr class="inout_form_txt">
								    			<td class="form_title">금액</td>
								    			<td class="form_money">
									    			<input type="text" placeholder="금액을 기입해주세요" name="" class="inout_form" numberOnly>
								    			</td>
								    		</tr>
								    		<tr class="inout_form_txtarea">
								    			<td class="form_title">내용</td>
								    			<td class="form_cont">
													<textarea rows="2" placeholder="내용을 기입해주세요" name="" class="inout_form"></textarea>												    			
								    			</td>
								    		</tr>
								    	</table>			                   		
					                   </div>
					                   <div class="modal-footer">
					                       <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					                       <button type="button" class="btn btn-primary">Save changes</button>
					                   </div>
				                   </form>
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
			                   		
			                   </div>
			                   <div class="modal-footer">
			                       <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			                       <button type="button" class="btn btn-primary">Save changes</button>
			                   </div>
			               </div>
			           </div>
			       </div>

                            <!-- [ Main Content ] start -->
                           	<div class="row" id="account_header">
                           		<div class="col">
                           		
                           		</div>
                            	<div class="col txt_center">
                            		<label id="select-month">2019년 7월</label>
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
                            				<a href="/book">돌아가기</a>
                            			</span>
                            			
                            			<span class="fl_right accountbook_search">
                            				<input type="text"/>
                            				<span><i class="feather icon-search"></i></span>
                            			</span>
                            		</div>
                            		<div class="card tablesCard">
                            			<table>
							    			<tr>
							    				<th>날짜</th>
							    				<th>구분</th>
							    				<th>자산</th>
							    				<th>분류</th>
							    				<th>내용</th>
							    				<th>금액</th>
							    				<th>기타</th>
						    				</tr>
						    				<tr>
							    				<td>2019년 07월 21일</td>
							    				<td>지출</td>
							    				<td>현금</td>
							    				<td>문화생활비</td>
							    				<td>영화존내봤음</td>
							    				<td>5,000</td>
							    				<td class="row_setting"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#inoutModal">수정</button>/<span>삭제</span></td>
						    				</tr>
						    				<tr>
							    				<td>2019년 07월 21일</td>
							    				<td>이체</td>
							    				<td><span>현금</span> ==> <span>농협적금</span></td>
							    				<td>적금</td>
							    				<td>현금이체</td>
							    				<td>15,000</td>
							    				<td class="row_setting"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#transferModal">수정</button>/<span>삭제</span></td>
						    				</tr> 						    				                         				
                            			</table>
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
    <!-- [ Main Content ] end -->
    <script src="js/cheyeon_member/jquery.monthpicker-0.1.js"></script>
	<script>
	    $("#select-month").monthPicker();	
	
		$("#menu1").addClass('active');
		$("#menu1").addClass('pcoded-trigger');
		$("#menu1_1").addClass('active');
	</script>
</body>
</html>