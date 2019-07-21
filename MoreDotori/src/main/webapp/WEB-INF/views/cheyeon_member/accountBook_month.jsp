<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
	<meta charset="utf-8">
    <!-- append css -->
    <link rel="stylesheet" href="css/cheyeon_member/accountBookM.css">
    <link rel="stylesheet" href="css/cheyeon_member/MonthPicker.css">
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

				   <!-- 수정모달창 -->
			       <div id="exampleModalPopovers" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalPopoversLabel" aria-hidden="true">
			           <div class="modal-dialog" role="document">
			               <div class="modal-content">
			                   <div class="modal-header">
			                       <h5 class="modal-title" id="exampleModalPopoversLabel">Modal Title</h5>
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
                            		2019년 7월
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
							    				<td class="row_setting"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalPopovers">수정</button> / <span>삭제</span></td>
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
	<script>
		$("#menu1").addClass('active');
		$("#menu1").addClass('pcoded-trigger');
		$("#menu1_1").addClass('active');
	</script>
</body>
</html>