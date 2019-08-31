<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
   <meta charset="utf-8">
<!-- footable css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/footable/css/footable.bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/footable/css/footable.standalone.min.css">

<!-- management/my Css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/management.css">
    
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
                        <div class="page-block">
                            <div class="row align-items-center">
                                <div class="col-md-12">
                                    <div class="page-header-title">
                                        <h5 class="m-b-10">관리자페이지</h5>
                                    </div>
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>

                                        <li class="breadcrumb-item"><a href="#!">회원관리</a></li>
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
                                            <h5>회원관리 페이지</h5>
                                            <div class="card-header-right">
                                                <div class="btn-group card-option">
                                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i> maximize</span><span style="display:none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                                                        <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i> collapse</span><span style="display:none"><i class="feather icon-plus"></i> expand</span></a></li>
                                                        <li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i> reload</a></li>
                                                        <li class="dropdown-item close-card"><a href="#!"><i class="feather icon-trash"></i> remove</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                          <div class="card-block task-data">
                                            <div class="table-responsive form-material scroll"> 
                                              <div id="simpletable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                                                <div class="row">
                                                  <div class="col-sm-3">
                                                    <div class="dataTables_length" id="simpletable_length">
                                                      <label>회원정보/회원목록</label>
                                                    </div>
                                                  </div>
                                                  <div class="col-sm-9">
                                          <div id="simpletable_filter" class="dataTables_filter col-sm-5 float-sm-right">
                                          <div class="input-group mb-3">
                                            <input type="text" class="form-control add_task_todo" placeholder="Search here...." required>
                                            <div class="input-group-append">
                                              <button class="btn btn-primary btn-icon btn-msg-send" type="button">
                                                <i class="fas fa-search icon"></i>
                                              </button>
                                            </div>
                                          </div>
                                          </div>
                                        </div>
                                      </div>
                                      
                                      
                                            <div class="padding=20%">
                                            <table id="demo-foo-filtering" class="table table-striped table-hover" >


                                                <thead>
                                                    <tr>
                                                        <th>
                                                          <div class="form-group nameCheckBox">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline" >
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-all">
                                                              <label for="checkbox-p-fill-all" class="cr" >
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </th>

                                                          <th>분류</th>
                                                          <th>아이디</th>
                                                          <th>닉네임</th>
                                                          <th>이름</th>
                                                          <th data-breakpoints="xs" >가입일</th>
                                                          <th data-breakpoints="xs" >최근접속일</th>
                                                          <th data-breakpoints="xs" >경고/누적</th>
                                                          <th >회원상태</th>
                                                      </tr>
                                                  </thead>


                                                <tbody>
                                                <c:forEach items="${list}" var="list" varStatus="status">
                                                    <tr>
                                                        <td class="footable-first-visible" style="display: table-cell;">
                                                          <div class="form-group nameCheckBox">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-${status.index}" >
                                                              <label for="checkbox-p-fill-${status.index}" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td >${list.c_member }</td>
                                                          <td >${list.m_id }</td>
                                                          <td>${list.m_nickname }</td>
                                                          <td ><span class="tag tag-danger"> ${list.m_name }</span>
                                                          </td>
                                                          <td >${list.m_jdate }</td>
                                                          <td >${list.m_ldate }</td>
                                                          <td ><div class="text">${list.m_counts }</div></td>
                                                          <td >${list.c_mstate }</td>
                                                    </tr>
                                                  </c:forEach>
                                                </tbody>
                                            </table>
                                           </div>
                                            
                                            
                                            
                                            <div id="exampleModalCenter" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" style="display: none;" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalCenterTitle"><i class="feather icon-alert-circle"></i>&nbsp;알림메세지</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p>정상적으로 처리가 완료되었습니다.</p>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="normalUser()">확인</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            
                                            


                                            <div>
                                              <div id="exampleModalLive" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLiveLabel"
                                               aria-hidden="true">
                                               <div class="modal-dialog" role="document">
                                                 <div class="modal-content">
                                                   <div class="modal-header">
                                                     <h5 class="modal-title" id="exampleModalLiveLabel"> 활동 정지 대상 멤버 &nbsp; <font color="red" id="cnt">2</font></h5>
                                                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                       <span aria-hidden="true">x</span>
                                                     </button>
                                                   </div>

                                                       <div class="modal-body">
                                                          <div>

                                                            <span id="userId"></span>
                                                           
                                                            <br>
                                                            <br>
                                                            <br>
                                                            <br>

                                                       <hr width ="30%" color="lightGray" align="center" class="col-sm-11"/>

                                                         <div class="alert alert-light" role="alert">
                                                           <div class="i-block" data-clipboard-text="feather icon-alert-circle" data-filter="icon-alert-circle"
                                                           data-toggle="tooltip"  data-original-title="icon-alert-circle">
                                                         <i class="feather icon-alert-circle"></i>
                                                                   스탭과 이미 활동 정지 상태인 멤버는 제외되었습니다.
                                                           </div>
                                                         </div>

                                                       <div class="row">

                                                         <label for="inputPassword3" class="col-sm-3 col-form-label fontSize">활동 정지 사유</label>

                                                           <div class="col-sm-9 radioSelect">

                                                         <div class="form-group">
                                                               <div class="radio radio-primary d-inline">
                                                                 <input type="radio" name="radio-p-1" id="radio-p-1" checked>
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
                                                            <input type="radio" name="radio-p-1" id="radio-p-4" >
                                                            <label for="radio-p-4" class="cr">기타</label>
                                                        </div>
                                                    </div>
                                                                 

                                                     <div>
                                                       <input type="text" class="form-control form-control-sm col-sm-11" id="colFormLabelSm"
                                                       placeholder="기타를 선택한 경우 작성해주세요.">
                                                     </div>

                                                   </div>
                                                 <br>
                                               <br>
                                             </div>


                                             <br>
                                             <br>


                                               <div class="form-group">


                                                 <label for="selectBox" class="fontSize">활동 정지 기간</label>
                                                     <select class="form-control" id="selectBox1">
                                                       <option value="1">1일</option>
                                                       <option value="3">3일</option>
                                                       <option value="7">7일</option>
                                                       <option value="0">영구정지</option>
                                                     </select>

                                                    <br>
                                                     <p class="boldFont">대상 멤버를 활동 정지 하시겠습니까?</p>

                                                     <br>

                                                 </div>

                                                       <div class="modal-footer" >

                                                           <button type="button" class="btn btn-primary mr-0" onclick="sendStop()">활동정지</button>
                                                           <button type="button" class="btn btn-secondary" data-dismiss="modal" id="cancel">취소</button>

                                                       </div>

                                                     </div>

                                                   </div>

                                               </div>
                                             </div>
                                           </div>
                                             
                                             
                                              <div>
                                            <div class="changeButton">
                                                <button type="button" class="btn btn-primary" data-toggle="modal"  id="modal2" onclick="change()">
                                                      	변경</button>
                                            </div>
                                            
                                            
                                            <div class="optionControl">

                                              <select class="form-control" name="selectBox1" id="selectBox2">
                                                <option value="0">선택</option>
                                                <option value="1">정지</option>
                                                <option value="2">일반</option>
                                              </select>
                                             </div>
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
                </div>
                  </div>
              </div>
            </div>
        </div>
      </div>
    <jsp:include page="../main/footer.jsp"></jsp:include>
    <!-- [ Main Content ] end -->
    
        <!-- footable Js -->
    <script src="${pageContext.request.contextPath}/plugins/footable/js/footable.min.js"></script>
    
    <!-- modal-window-effects Js -->
    <script src="${pageContext.request.contextPath}/assets/plugins/modal-window-effects/js/classie.js"></script>
    <script src="${pageContext.request.contextPath}/assets/plugins/modal-window-effects/js/modalEffects.js"></script>
    
    <!-- Required Js -->
    <script src="${pageContext.request.contextPath}/assets/js/vendor-all.min.js"></script>
    
    <script type="text/javascript">
    
       $("#menu9").addClass('active');
       $("#menu9").addClass('pcoded-trigger');
       $('#modal-1').hide();
       
       
        $(document).ready(function() {
            // [ Foo-table ]
            $('#demo-foo-filtering').footable({
                "paging": {
                    "enabled": true
                }
            });
            
            
            
            setTimeout(function(){
            	$('#checkbox-p-fill-all').click(function(){
                	if($(this).is(':checked')){
                		console.log('123')
                		$('input[name=checkbox-fill-p-1]').prop('checked', true);
                	} else {
                		console.log('456')
                		$('input[name=checkbox-fill-p-1]').prop('checked', false);
                	}
                });
            },1000)
        });
        function setUser(id) {
        	$('#userId').text('정말로 '+id+' 회원을 정지하시겠습니까?');
        	userId = id;
        }
        
        function normalUser(){
        	$.ajax({
    			url : "/normalUser",
    			type : "GET",
    			data : { m_id: userId},
    			dataType: 'JSON',
    			contentType : "application/json; charset=UTF-8",
    			success: function(response){
    			},error: function(response){
    				if (response.status == 200) {
    					$('#cancel').click();
    				} else {
    					alert('처리중 에러가 발생하였습니다. 잠시 후 다시 시도해 주세요.');
    				}
    			}
    		});
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
    			data : { m_id: userId, m_reason: reasom, m_cdate: cdate},
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
        
        var idList = [];
        
        function change() {
        	
        	var selectVal = $('#selectBox2 option:selected').val();
        	
        	$('input[name=checkbox-fill-p-1]').each(function(){
        		if ($(this).is(':checked')) {
        			var status = $(this).closest('tr').children().eq(8).text();
        			var id = $(this).closest('tr').children().eq(2).text();
        			if (status != 'MS003') {
        				idList.push(id);
        			}
        		}
        	});
        	
            if(selectVal == '1'){
               $('#modal2').attr('data-target', '#exampleModalLive');
               $('#cnt').text(idList.length);
           	
	           	var idText = "";
	           	for (id of idList) {
	           		idText += id + ", ";
	           	}
	           	
	           	$('#userId').text(idText);
            } else if(selectVal =='2'){
               sendNomal(idList);
            } else {
               $('#modal2').attr('data-target', '');
            }
        }
        
        function sendNomal(idList) {
        	
        	var objParams = {
                    "idList"      : idList
                };
        	//$('#modal2').attr('data-target', '#exampleModalCenter');
        	$.ajax({
    			url : "/normalUser",
    			type : "POST",
    			data : objParams,
    			dataType: 'JSON',
    			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
    			success: function(response){
    			},error: function(response){
    				alert("정상적으로 처리가 완료되었습니다.");
    				location.reload();
    			}
    		});
        }
        
        function sendStop() {
        	
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
    		
    		var objParams = {
                    "idList" : idList,
                    "m_reason" : reason,
                    "m_cdate" : cdate
                };
    		
    		$.ajax({
    			url : "/stopUserMem",
    			type : "POST",
    			data : objParams,
    			dataType: 'JSON',
    			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
    			success: function(response){
    			},error: function(response){
    				if (response.status == 200) {
    					alert('정지가 완료되었습니다.');
    					$('#cancel').click();
    					location.reload();
    				} else {
    					alert('정지중 에러가 발생하였습니다. 잠시 후 다시 시도해 주세요.');
    				}
    			}
    		});
        }
        
    </script>
</body>

</html>