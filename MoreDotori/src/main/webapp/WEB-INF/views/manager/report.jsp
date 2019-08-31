<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
   <meta charset="utf-8">
  <!-- 내가추가함  -->
  <link rel="stylesheet" href="css/report.css">

  <!-- data tables css-->
  <link rel="stylesheet" href="plugins/data-tables/css/datatables.min.css">
  <!-- footable css -->

  <link rel="stylesheet" href="plugins/footable/css/footable.bootstrap.min.css">
  <link rel="stylesheet" href="plugins/footable/css/footable.standalone.min.css">
</head>

<body class="layout-8">
   <jsp:include page="../main/header3.jsp"></jsp:include>
    <!-- [ Main Content ] start -->
    <div class="pcoded-main-container">
        <div class="pcoded-wrapper">
          <div class="pcoded-content">
            <div class="pcoded-inner-content">
              <!-- [ breadcrumb ] start -->
              <div class="page-header">
                <div class="page-block">
                  <div class="row align-items-center">
                    <div class="col-md-12">
                      <div class="page-header-title">
                        <h5 class="m-b-10">신고내역</h5>
                      </div>
                      <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                        <li class="breadcrumb-item"><a href="#!">관리자페이지</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <!-- [ breadcrumb ] end -->
              <div class="main-body">
                <div class="page-wrapper">
                  <!-- [ Main Content ] start -->
                  <div class= "row">
                    <!-- [ Foo-table ] start -->
                    <div class="col-sm-12">
                      <div class="card">
                        <div class="card-block task-data">
                          <div class="table-responsive form-material">
                            <div id="simpletable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                              <div class="row">
                                <div class="col-sm-3">
                                  <div class="dataTables_length" id="simpletable_length">
                                    <label>신고관리 페이지</label>
                                  </div>
                                </div>
                                <div class="col-sm-9">
                                  <div id="simpletable_filter" class="dataTables_filter col-sm-5 float-sm-right">
                                    <div class="input-group mb-3">
                                      <input type="search" class="form-control form-control-sm" placeholder="Search here..." aria-controls="zero-configuration">
                                      <div class="input-group-append">
                                        <button class="btn btn-primary btn-icon btn-msg-send" type="button">
                                          <i class="fas fa-search" style="color:white"></i>
                                        </button>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>

                              <div class="card-block">
                                <ul class="nav nav-pills" id="pills-tab" role="tablist">
                                  <li class="nav-item">
                                    <a class="nav-link show active" id="pills-main-tab" data-toggle="pill"
                                    href="#pills-main" role="tab" aria-controls="pills-main" aria-selected="true">게시글</a>
                                  </li>
                                  <li class="nav-item">
                                    <a class="nav-link show" id="pills-reply-tab" data-toggle="pill"
                                    href="#pills-reply" role="tab" aria-controls="pills-reply" aria-selected="false">댓글</a>
                                  </li>
                                </ul>
                                
                                <div class="tab-content" id="pills-tabContent">
                                
                                  <!-- 게시글 리스트 시작 -->
                                  <div class="tab-pane fade active show" id="pills-main" role="tabpanel" aria-labelledby="pills-main-tab">
                                    <div>
                                        <table id="zero-configuration" class="display table nowrap" style="width:100%">
                                          <thead>
                                            <tr>
                                              <th>번호</th>
                                              <th>신고대상</th>
                                              <th>신고게시물</th>
                                              <th>신고횟수</th>
                                              <th>이력보기</th>
                                              <th>정지하기</th>
                                            </tr>
                                          </thead>
                                          <tbody id="board">
                                          <c:forEach items="${reportList}" var="reportList" varStatus="statuss">
											 <tr>
											 
                                                <td>${reportList.rownum }</td>
                                                <td>${reportList.reg_id }</td>
                                                <td class="layout"><a href="" class="linkColor">${reportList.b_subjcet }</a></td>
                                                <td>${reportList.b_reportnum }</td>
                                                
                                                <td>
                                                
                                                     <span class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg${statuss.index}">
                                                     	<i class="feather icon-zoom-in"></i>
                                                     </span>
			                                                  <div class="modal fade bd-example-modal-lg${statuss.index}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
	                                                	        <div class="modal-dialog modal-lg">
                                                    	         <div class="modal-content">
                                                        	        <div class="modal-header">
                                                            	       <h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                            	         <span class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></span>
                                 			                            </div>
                                                	         <div class="modal-body space">
                                                              <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <c:forEach items="${reportList.reportDetail}" var="reportData" >
          					                                               <tr class="thickness">
	          					                                              <td>${reportData.rownum } </td>
	          					                                              <td>${reportData.reg_id }</td>
	          					                                              <td>${reportData.rd_content }</td>
	          					                                              <td>${reportData.rd_date }</td>
          					                                               </tr>
          					                                            </c:forEach>
          					                                          </table>
          	                                                        </div>
          	                                                    </div>
          	                                                </div>
          	                                            </div>
                                                      </td>
                                                      <td>
                                           				<span data-toggle="modal" data-target="#exampleModalLive2" style="cursor:pointer;" onclick="clickStop('${reportList.m_id}')"><span class="badge badge-danger">정지</span></span>
                                                
	                                                	</td>
													</tr>
												</c:forEach>
	                                	  	</tbody>
	                                    </table>
	                              	</div>
	                            </div>
		                            <!-- 게시글 리스트 끝-->
		                            
								  <!-- 댓글 리스트 시작-->
                                  <div class="tab-pane fade" id="pills-reply" role="tabpanel" aria-labelledby="pills-reply-tab">
                                    <table id="zero-configuration2" class="table">
                                      <thead>
                                        <tr>
                                          <th>번호</th>
                                          <th>신고대상</th>
                                          <th>신고댓글내용</th>
                                          <th>신고횟수</th>
                                          <th>이력보기</th>
                                          <th>정지하기</th>
                                        </tr>
                                      </thead>
                                      <tbody id="comment">
                                      <c:forEach items="${list}" var="list" varStatus="status">
                                      
                                       <tr>
                                       	  <td>${list.rownum }</td>
                                          <td>${list.m_id }</td>
                                          <td class="layout">${list.re_content }</td>
                                          <td>${list.re_reportnum }</td>
                                          
                                                    <td>
                                                               <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lgg${status.index}"><i class="feather icon-zoom-in"></i></button>
          			                                        <div class="modal fade bd-example-modal-lgg${status.index}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
          	                                                	<div class="modal-dialog modal-lg">
                                                              	<div class="modal-content">
                                                                  	<div class="modal-header">
                                                                      	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                 			             </div>
                                                                  	<div class="modal-body space">
                                                                        <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <c:forEach items="${list.replyDetail}" var="data" >
	          					                                            <tr class="thickness">
	          					                                              <td>${data.m_id }</td>
	          					                                              <td>${data.rownum } </td>
	          					                                              <td>${data.rd_content }</td>
	          					                                              <td>${data.rd_date }</td>
	          					                                            </tr>
          					                                            </c:forEach>
          					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                          </td>
                                             <td>
                                            <span data-toggle="modal" data-target="#exampleModalLive2" style="cursor:pointer;" onclick="clickStop('${list.m_id}')"><span class="badge badge-danger">정지</span></span>
                                                
                                                </td>
                                        </tr>
                                        </c:forEach>
                                      </tbody>
                                    </table>
                                  </div>
                                  <!-- 댓글 리스트 끝-->
                                  
                                  
                                <!-- [ data-table ] end -->
                                          </div>
                                        </div>
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
        </div>
    </div>
     <!-- 정지하기 팝업 -->
    <div id="exampleModalLive2" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLiveLabel" style="display: none;" aria-hidden="true">
    	<div class="modal-dialog" role="document">
       	<div class="modal-content">
           	<div class="modal-header">
               	<h5 class="modal-title" id="exampleModalLiveLabel">확인메세지</h5>
                   <span class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></span>
               </div>
               <div class="modal-body">
               	<p>
               		<i class="feather icon-alert-circle"></i>&nbsp;&nbsp;
               		<span id="replyId"></span>
              		</p>
               </div>
               <br>
               <p class="fontSize">[ 활동정지사유 ]</p>
               <br>
               <div class="form-group">
               	<div class="radio radio-primary d-inline">
                       <input type="radio" name="radio-p-1" id="radio-p-1" checked="">
                       <label for="radio-p-1" class="cr">성인/도박 등 불법광고 및 스팸 활동</label>
                   </div>
               </div>
               <div class="form-group">
                   <div class="radio radio-primary d-inline">
                       <input type="radio" name="radio-p-1" id="radio-p-2">
                       <label for="radio-p-2" class="cr">바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</label>
                   </div>
               </div>
               <div class="form-group">
                   <div class="radio radio-primary d-inline">
                       <input type="radio" name="radio-p-1" id="radio-p-3">
                       <label for="radio-p-3" class="cr">홈페이지 내 자체운영 원칙에 위배되는 활동</label>
                   </div>
               </div>
                <div class="form-group">
                   <div class="radio radio-primary d-inline">
                       <input type="radio" name="radio-p-1" id="radio-p-4">
                       <label for="radio-p-4" class="cr">기타</label>
                       <input type="text" class="form-control form-control-sm col-sm-11" id="colFormLabelSm" placeholder="기타를 선택한 경우 작성해주세요.">
                   </div>
               </div>
                <br>                             
                <label for="selectBox" class="fontSize">[ 활동정지기간 ]</label>
                <select class="form-control" id="selectBox1">
                  <option value="1">1일</option>
                  <option value="3">3일</option>
                  <option value="7">7일</option>
                  <option value="0">영구정지</option>
                </select>
                <div class="modal-footer">
                	<button type="button" class="btn btn-secondary" data-dismiss="modal" id="cancel">취소</button>
                	<button type="button" class="btn btn-primary" onclick="stopUser()">확인</button>
                </div>
             </div>
          </div>
       </div>
       <!-- ----------- -->
       
</div>
<jsp:include page="../main/footer.jsp"></jsp:include>
<!-- [ Main Content ] end -->

<!-- datatable Js -->
<!-- <script src="./asset/plugins/data-tables/js/datatables.min.js"></script>
<script src="./asset/js/pages/tbl-datatable-custom.js"></script> -->

<!-- footable Js -->
<script src="plugins/footable/js/footable.min.js"></script>

<script type="text/javascript">

var userId = "";

   $("#menu10").addClass('active');
   $("#menu10").addClass('pcoded-trigger');
   $("#menu10_2").addClass('active');
   
   $(document).ready(function() {
	   
		// 게시글 조회
      // getBoardList();
		
		
        // [ Foo-table ]
        $('#zero-configuration').footable({
            "paging": {
                "enabled": true
            }
        });

        $('#zero-configuration2').footable({
            "paging": {
                "enabled": true
            }
        });
    });
    
    function reply(mid){
    	$('#replyId').text('정말로' +mid + '회원을 정지하시겠습니까?');
    	replyId = mid;
    }
    
    function setUser(id) {
    	$('#userId').text('정말로 '+id+' 회원을 정지하시겠습니까?');
    	userId = id;
    }
    
    function stopUser() {
    	
    	if ($('#radio-p-4').is(':checked')) {
    		if ($.trim($('#colFormLabelSm').val()).length <= 0) {
    			alert('기타를 선택하셨으면 사유를 입력해주셔야 합니다.');
    		}
    	}
    	
    	var reason = "";
		
		$('input[name=radio-p-1]').each(function(){
			if ($(this).is(':checked')) {
				reason = $(this).next().text();
				if (reason == "기타") {
					reason = $('#colFormLabelSm').val();
					return false;
				}
			}
		});
		
		var cdate = $('#selectBox1 option:selected').val();
		
		$.ajax({
			url : "/stopUser",
			type : "GET",
			data : { m_id: userId, m_reason: reason, m_cdate: cdate },
			dataType: 'JSON',
			contentType : "application/json; charset=UTF-8",
			success: function(response){
			},error: function(response){
				if (response.status == 200) {
					alert('정지가 완료되었습니다.');
					$('#cancel').click();
				} else {
					alert('정지중 에러가 발생하였습니다. 잠시 후 다시 시도해 주세요.');
				}
			}
		});
    }
    
    function clickStop(id) {
    	userId = id;
    	$('#replyId').text("정말로 "+id+" 회원을 정지하시겠습니까?");
    }
    
    
    
    
</script>
</body>

</html>