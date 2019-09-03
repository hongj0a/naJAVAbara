<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA::${BoardMgrVO.b_title}</title>
	<meta charset="utf-8">
    <style>
        .ck-editor__editable {
            min-height: 300px;
            max-height: 500px;
        }
    </style>	
</head>

<body class="layout-8">
	<jsp:include page="../main/header.jsp"></jsp:include>
    <!-- [ Main Content ] start -->
    <script type="text/javascript">
    	//목록으로
		function clickListBtn(){
			var form = document.aform;
			//if(!validation(form)) return;
			form.action = "/admin/board/${BoardMgrVO.b_code}/list";
			form.submit();
		}
    	
    	
/*     	function check(){
	      if(document.input.elements[1].value == ""){
		     alert("제목을 입력 하셔야 합니다. ");
			 return false;
		  }document.input.submit();
    	} */
    	
    	
    	
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
							<form:form id="aform" modelAttribute="boardVo" name="aform" method="post" action="/admin/board/${BoardMgrVO.b_code}/act"  onsubmit="javascript:return false;">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							<input type="hidden" name="mode" id="mode"  value="${boardVO.mode }"/>
                            <!-- [ Main Content ] start -->
                            <div class="row">
                            	 <!-- [ board_write ] start -->
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>글쓰기</h5>
                                        </div>
                                        <div class="card-block">
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="">제목</span>
                                                </div>
                                                <input id="b_subjcet" name="b_subjcet" type="text" class="form-control" placeholder="제목" aria-label="" aria-describedby="" value="${boardVO.b_subjcet }"/>
                                            </div>
                                             <div class="input-group mb-3">
                                             	<div class="input-group-prepend">
                                                    <span class="input-group-text" id="">분류</span>
                                                </div>
                                                <select name="fcategori" id="fcategori" class="form-control">
                                                	<option value="">::선택해주세요::</option>
													<option value="계정" <c:if test="${boardVO.fcategori eq '계정' }" >selected </c:if> >계정</option>
													<option value="예약" <c:if test="${boardVO.fcategori eq '예약' }" >selected </c:if>>예약</option>
													<option value="가계부" <c:if test="${boardVO.fcategori eq '가계부' }" >selected </c:if>>가계부</option>
													<option value="기타" <c:if test="${boardVO.fcategori eq '기타' }" >selected </c:if>>기타</option>
												</select>


                                             </div>
                                            <!-- 에디터 1  -->
                                            <div class="mb-3">
                                                <textarea name="b_content" id="b_content" rows="5" style="width:100%;">${boardVO.b_content }
                                                </textarea>
                                            </div>
                                            <button type="submit" class="input-group-append btn-send btn btn-primary float-sm-right" onclick="submit();">확인</button>
                                            <a href="#" class="btn btn-secondary float-sm-right" onclick="clickListBtn();">목록으로</a>
                                        </div>
                                    </div>
                                </div>                             
                                <!-- [ board_write ] end -->
                            </div>
                            </form:form>
                            <!-- [ Main Content ] end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="../main/footer.jsp"></jsp:include>
    <!-- [ Main Content ] end -->
    
    <!-- Ckeditor js -->
    <script src="/js/ckeditor/ckeditor.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            // classic editor
			
           function submit(){
       		var form = document.aform;
   			//if(!validation(form)) return;
   			form.action = "/admin/board/${BoardMgrVO.b_code}/act";
   			form.submit();
       	}
        });
        
    </script>

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
    </script>    
    
    <!-- 
    <style>
    	.cke_dialog_footer_buttons a.cke_dialog_ui_button span {
		    color: inherit;
		    font-size: 12px;
		    font-weight: bold;
		    padding: 0 12px;
		}
    </style> -->
</body>
</html>