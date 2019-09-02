<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA::${BoardMgrVO.b_title}</title>
	<meta charset="utf-8">
	<!-- append css -->
	<link rel="stylesheet" href="/css/board/style_board_content.css">
	<!-- material icon -->
    <link rel="stylesheet" href="/fonts/material/css/materialdesignicons.min.css">
	
</head>

<body class="layout-8">
	<jsp:include page="../main/header.jsp"></jsp:include>
    <!-- [ Main Content ] start -->
     <script type="text/javascript">
     var type = "bbs";
     var tseq = "";
	 function clickListBtn(){
 		var form = document.aform;
 		//if(!validation(form)) return;
 		
 		form.action = "/board/${BoardMgrVO.b_code}/list";
 		form.submit();
 	}
	 function clickWriteBtn(){
 		var form = document.aform;
 		//if(!validation(form)) return;
 		$("#b_seq").val("${board.b_seq }");
 		$("#mode").val("mod");
 		form.action = "/board/${BoardMgrVO.b_code}/write";
 		form.submit();
 	}
	 function clickDelete(){
 		var form = document.aform;
 		//if(!validation(form)) return;
 		var con_test = confirm('정말 삭제 하시겠습니까?');
 		if(con_test){
 			$("#b_seq").val("${board.b_seq }");
 	 		form.action = "/board/${BoardMgrVO.b_code}/delete";
 	 		form.submit();
 		}
 	}
	 function go_heart(b_seq) {
		 $.post("/board/${BoardMgrVO.b_code}/heart", { b_seq: b_seq,"${_csrf.parameterName}" : "${_csrf.token}" },    
			      function(data) {     alert("추천하였습니다.");
					 $(".like_count").html(data.boardVO.b_heartnum);  },   "json" );  
	 }
	  <c:if test="${BoardMgrVO.b_comment_yn eq 'Y' }">
	 function replywrite(){
		 var b_seq = "${board.b_seq }";
		 var recon = $("#replycontent").val();
		 $.post("/reply/write", 
				 { b_seq: b_seq,
			 		re_content : recon,
			 		b_code	: 	"${BoardMgrVO.b_code }",
			 		"${_csrf.parameterName}" :  "${_csrf.token}"
				 },    
			      function(data) {    
			 			if(data.data == "sucsses"){
			 				alert("등록성공하였습니다.");
			 				$("#replycontent").val("");
			 				getReplyList(b_seq);
			 			}
				  },  
			"json" );  
	 }
	 function getReplyList(b_seq){
		 $.post("/reply/list", { b_seq: b_seq, 
			 "${_csrf.parameterName}" : "${_csrf.token}"
		 },    
		      function(data) {     
			 	var relist = data.list;
			 	var html;
			 	if(relist.length > 0){
			 		html ="";
			 		$.each(relist, function(i, o){ 
			 			html += "<li><div class=\"media userlist-box reply_info\" data-id=\"\" data-status=\"\" data-username=\"\">";
				 		html += "<a class=\"media-left\" href=\"#!\"><img class=\"media-object img-radius\" src=\" "+"/images/user/avatar-1.jpg" +"\"  alt=\"image \"></a>";
				 		html += "<div class=\"media-body\"><span class=\"chat-header float-left\">"+o.reg_id +"<small class=\"d-block text-c-green\"> " +o.reg_dt+ "</small></span>";
				 		html += "<span class=\"like_warning float-right\"><!--<span><a href=\"#\">추천| </a>-->";
				 		html += "<a data-toggle=\"modal\" data-target=\"#exampleModalCenter\" style=\"cursor:pointer;\" onclick=\"test(this, "+o.re_seq+");\"> 신고</a>";
					 	html += "</span></span></div></div><div class=\"reply_comment\">"+o.re_content+"</div></li>";
			 		});
			 		$(".reply_list_ul").html("").html(html);
			 	}
			  },  
		"json" );  
	 }
	 </c:if>
	 function test(t, seq){
		 tseq = seq;
		if($(t)[0].tagName == "BUTTON"){
			 type = "bbs";
		} else {
			 type = "comm";
		}
	 }
	 //신고
/* 	 function report_completed(b_seq){

	 } */
	 function reportwrite(){
		 var b_seq = "";
		 var re_seq = "";
		 if(type == "bbs"){
			 b_seq = ""+tseq;
		 } else {
			 re_seq = ""+tseq;
		 }
		 
		 var b_code	= "${BoardMgrVO.b_code  }";
		 
		 var radioVal = $('input[name="radio-p-1"]:checked').val();
		 var reporcon = "";
		 console.log(radioVal);
		 if(radioVal != 0){
			 $label = $('input[name="radio-p-1"]:checked')[0].labels;
			 reporcon = $($label).html();
		 } else {
			 reporcon = $("#repotxt").val(); 
		 }
		 
		 if(reporcon == ""){
			 alert("신고사유는 필수 입력값 입니다.");
		 }
		 
		 $.post("/report/write", 
				 { 
			 		b_seq: b_seq,
			 		b_code : b_code,
			 		re_seq : re_seq,
			 		"${_csrf.parameterName}" : "${_csrf.token}",
			 		rd_content : reporcon
				 },    
			      function(data) {  
					 console.log(data);
		 			if(data.data == "sucsses"){
		 				alert("신고했습니다.");
		 			}
		 			$(".btn-secondary").trigger("click");
				  },  
			"json" );  
	 }
	 $(document).ready(function() {
		 <c:if test="${BoardMgrVO.b_comment_yn eq 'Y' }">
		 getReplyList("${board.b_seq }");
		 </c:if>
     });
	 </script>
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
						<form:form id="aform" modelAttribute="boardVO" name="aform" method="post" action="/board/${BoardMgrVO.b_code}/list"  onsubmit="javascript:return false;">
							<input type="hidden" name="b_seq" id="b_seq" value="0"/>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							<input type="hidden" name="mode" id="mode"  value="view"/>
						</form:form>
                            <!-- [ Main Content ] start -->
                            <div class="row">
                            <!-- [ board_content ] start -->
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>${BoardMgrVO.b_title}</h5>
                                            <span class="d-block m-t-5"> <code></code>${BoardMgrVO.b_subtitle}</span>

                                        </div>
                                        <!-- 게시글 시작 -->
                                        <div class="card-block">
                                            <div>
                                                <h5 class="board-subject">${board.b_subjcet }</h5>
                                                <a href="#" class="btn btn-primary btn-boredlist" onclick="clickListBtn();">목록</a>
                                            </div>
                                            <!-- 게시글 내용 start -->
                                            <div class="bo_content_wrapper">
                                                <!-- 작성자/작성일/조회수 -->
                                                <div class="bo_info_wrapper row">
                                                    <div class="col-sm-7 bo_info">
                                                        <span class="col">글쓴이</span>
                                                        <span class="col bo_content_info"> ${board.reg_id }</span>
                                                    </div>
                                                    <div class="col-md-3 bo_info">
                                                        <span class="col">작성일</span>
                                                        <span class="col bo_content_info"> ${board.reg_dt }</span>
                                                    </div>
                                                    <div class="col-md-2 bo_info">
                                                        <span class="col">조회수</span>
                                                        <span class="col bo_content_info">${board.b_readnum }</span>
                                                    </div>
                                                </div>
                                                <!-- 작성 글 내용 -->
                                                <div class="bo_content mb-3">
                                                    ${board.b_content }
                                                </div>
                                            </div>
                                            <!-- 게시글 내용 end -->
                                            <!-- 추천/신고 start -->
                                            <c:if test="${fn:trim(BoardMgrVO.b_code) ne 'BO000'}">
                                            <div class="like_section">
                                                <a class="like">
                                                    <!--
                                                    <div class="like_btn">
                                                        <span class=" fas fa-heart" href="#" data-type="like"></span>
                                                        <span class="like_count">0</span>
                                                    </div> -->
                                                    <button type="button" onclick="go_heart(${board.b_seq});" class="btn btn2 btn-outline-danger" data-toggle="" data-target="" date-type="like"><span class="fas fa-heart"></span><span class="like_count">${board.b_heartnum }</span></button>
                                                </a>
                                                 <c:if test="${fn:trim(BoardMgrVO.b_report_yn) eq 'Y'}">
                                                <a class="warning  float-right">
                                                    <button type="button" class="btn btn2 btn-outline-danger mdi mdi-alarm-light" data-toggle="modal" data-target="#exampleModalCenter" onclick="test(this,${board.b_seq } );"> 신고</button>

                                                </a>
                                                </c:if>
                                            </div>
                                            </c:if>
                                            <!-- 추천/신고 end -->
                                            
                                            <c:if test="${BoardMgrVO.b_comment_yn eq 'Y' }">
                                            
                                            <!-- 댓글 start -->
                                            <div class="reply_section">
                                                <table cellspacing="0" class="reply_tb">
                                                    <tbody>
                                                        <tr class="reply_write">
                                                            <td colspan="2" style="">
                                                                <!--textarea cols="80" rows="20" name=""></textarea-->
                                                                <textarea class="reply_textarea form-control" name="replycontent" id="replycontent"></textarea>
                                                            </td>
                                                            <td class="" style="">
                                                                <button type="button" class="btn btn-outline-primary btn_rg" onclick="replywrite();">등록</button>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <div class="reply_list">
                                                    <ul class="reply_list_ul">
                                                     
                                                    </ul>
                                                </div>

                                            </div>
                                            <!-- 댓글 end -->
                                            </c:if>
                                            
                                            <!-- 하단 버튼 -->
                                            <a href="#" datataget="" class="btn btn-primary btn-boredlist" onclick="clickListBtn();">목록</a>
                                            <c:if test="${tuser.c_member eq 'MB000' || tuser.m_nickname eq board.reg_id}">
                                            <a href="#" class="btn btn-primary btn-boredwrite" onclick="clickWriteBtn();">수정</a>
                                            <a href="#" class="btn btn-primary btn-boredwrite" onclick="clickDelete();">삭제</a>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ board_content ] end -->
                            </div>
                            <!-- [ Main Content ] end -->
                            
                            <!-- 모달 -->
                            <div class="col-xl-4 col-md-6">
                                <div class="card-body">
                                    <div id="exampleModalCenter" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalCenterTitle">신고</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                </div>
                                                <div class="modal-body">

                                                    <p>신고 사유를 선택해주세요</p>

                                                    <!-- [ primary radio ] start -->
                                                    <div class="  radiowrap">
                                                        <div class="form-group">
                                                            <div class="radio radio-primary d-inline">
                                                                <input type="radio" name="radio-p-1" id="radio-p-1"  checked value="1">
                                                                <label for="radio-p-1" class="cr">성인/도박 등 불법광고 및 스팸활동</label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="radio radio-primary d-inline">
                                                                <input type="radio" name="radio-p-1" id="radio-p-2"value="2">
                                                                <label for="radio-p-2" class="cr">바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="radio radio-primary d-inline">
                                                                <input type="radio" name="radio-p-1" id="radio-p-3"value="3">
                                                                <label for="radio-p-3" class="cr">홈페이지 내 자체운영 원칙에 위배되는 활동</label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="radio radio-primary d-inline mb-2">
                                                                <input type="radio" name="radio-p-1" id="radio-p-4" value="0">
                                                                <label for="radio-p-4" class="cr">기타(반드시 사유를 작성해주세요)</label>
                                                            </div>
                                                        </div>
                                                        
                                                        <!--
                                                        
                                                        <div class="form-group">
                                                            <div class="radio radio-primary d-inline">
                                                                <input type="radio" name="radio-p-1" id="radio-p-1" checked>
                                                                <label for="radio-p-1" class="cr">영리목적/홍보성</label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="radio radio-primary d-inline">
                                                                <input type="radio" name="radio-p-1" id="radio-p-2">
                                                                <label for="radio-p-2" class="cr">불법정보</label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="radio radio-primary d-inline">
                                                                <input type="radio" name="radio-p-1" id="radio-p-3">
                                                                <label for="radio-p-3" class="cr">음란/선정성</label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="radio radio-primary ">
                                                                <input type="radio" name="radio-p-1" id="radio-p-4">
                                                                <label for="radio-p-4" class="cr">욕설/인신공격</label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="radio radio-primary d-inline">
                                                                <input type="radio" name="radio-p-1" id="radio-p-5">
                                                                <label for="radio-p-5" class="cr">개인정보노출</label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="radio radio-primary d-inline">
                                                                <input type="radio" name="radio-p-1" id="radio-p-6">
                                                                <label for="radio-p-6" class="cr">같은 내용의 반복 게시(도배)</label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="radio radio-primary d-inline">
                                                                <input type="radio" name="radio-p-1" id="radio-p-7">
                                                                <label for="radio-p-7" class="cr">기타</label>
                                                            </div>
                                                        </div>
                                                        -->
                                                        <!-- [ primary radio ] end -->

                                                        <textarea class="reply_textarea form-control reseonwhy" name="text" id="repotxt" placeholder="신고 사유를 작성해주세요" rows="3" disabled></textarea>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                                    <button type="button" class="btn btn-primary" onclick="reportwrite();">신고하기</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 모달 end-->
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="../main/footer.jsp"></jsp:include>
    <!-- [ Main Content ] end -->
    
        <!-- footable Js -->
    <script src="/js/board/footable.min.js"></script>


	<input id="bcode" type="hidden" value="${BoardMgrVO.b_code}">
    <script type="text/javascript">
    
    	var bcode = $('#bcode').val();
		
    	switch(bcode) {
	    	case 'BO000':
	    		$('#menu6_1').addClass("active"); break;
	    	case 'BO001':
	    		$('#menu6_2').addClass("active"); break;
	    	default:
	    		$('#menu6_3').addClass("active"); break;
    	}
    	
    	if($('[id^="menu6_"]').filter(".active").length != 0) {
        	$("#menu6").addClass('active');
    		$("#menu6").addClass('pcoded-trigger');
    	} else{
    		$("#menu7").addClass('active');
    		$("#menu7").addClass('pcoded-trigger');
    	}
    	
    	
    	
        $(document).ready(function() {
            // [ Foo-table ]
            $('#demo-foo-filtering').footable({
                "paging": {
                    "enabled": true
                }
                /*
                ,
                "sorting": {
                    "enabled": true
                }*/
            });
          /*  
         // 라디오버튼 클릭시 이벤트 발생
            $("input:radio[name=radio-p-1]").click(function(){
         
                if($("input[name=radio-p-1]:checked").val() == "1"){
                    $("textarea[name=text]").attr("disabled",false);
                    // radio 버튼의 value 값이 1이라면 활성화
         
                }else if($("input[name=radio-p-1]:checked").val() == "0"){
                      $("textarea[name=text]").attr("disabled",true);
                    // radio 버튼의 value 값이 0이라면 비활성화
                }
            }); 
          */
          $("input:radio[name=radio-p-1]").click(function(){
        	  if($("input[name=radio-p-1]:checked").val() == "0"){
                  $("textarea[name=text]").attr("disabled",false);
               
        	  }else if($("input[name=radio-p-1]:checked").val() == "1"){
                  $("textarea[name=text]").attr("disabled",true);
                  $("textarea[name=text]").val("");
              
            }
          });
          
          
          
          
        });
    </script>
</body>
</html>