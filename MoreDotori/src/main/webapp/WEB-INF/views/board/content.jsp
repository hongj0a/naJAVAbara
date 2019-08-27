<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                            <div class="row">
                            <!-- [ board_content ] start -->
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>${BoardMgrVO.b_title}</h5>
                                            <span class="d-block m-t-5"> <code>모든 회원</code> 들의 자유로운 게시판 입니다.</span>

                                        </div>
                                        <!-- 게시글 시작 -->
                                        <div class="card-block">
                                            <div>
                                                <h5 class="board-subject">글제목이 오는자리~ 요즘 돈 쓸일이 많아서 걱정이에요</h5>
                                                <a href="#" class="btn btn-primary btn-boredlist">목록</a>
                                            </div>
                                            <!-- 게시글 내용 start -->
                                            <div class="bo_content_wrapper">
                                                <!-- 작성자/작성일/조회수 -->
                                                <div class="bo_info_wrapper row">
                                                    <div class="col-sm-7 bo_info">
                                                        <span class="col">글쓴이</span>
                                                        <span class="col bo_content_info">여기가닉네임</span>
                                                    </div>
                                                    <div class="col-md-3 bo_info">
                                                        <span class="col">작성일</span>
                                                        <span class="col bo_content_info">2019.07.11</span>
                                                    </div>
                                                    <div class="col-md-2 bo_info">
                                                        <span class="col">조회수</span>
                                                        <span class="col bo_content_info">000</span>
                                                    </div>
                                                </div>
                                                <!-- 작성 글 내용 -->
                                                <div class="bo_content mb-3">
                                                    <pre>여기에 내용이 나오게 해줘여
입력한거
그대로
                                                    나오게
                                                    해달라
                                                    고
                                                    </pre>
                                                </div>
                                            </div>
                                            <!-- 게시글 내용 end -->
                                            <!-- 추천/신고 start -->
                                            <div class="like_section">
                                                <a class="like">
                                                    <!--
                                                    <div class="like_btn">
                                                        <span class=" fas fa-heart" href="#" data-type="like"></span>
                                                        <span class="like_count">0</span>
                                                    </div> -->
                                                    <button type="button" class="btn btn2 btn-outline-danger" data-toggle="" data-target="" date-type="like"><span class="fas fa-heart"></span><span class="like_count">0</span></button>
                                                </a>
                                                <a class="warning  float-right">
                                                    <button type="button" class="btn btn2 btn-outline-danger mdi mdi-alarm-light" data-toggle="modal" data-target="#exampleModalCenter"> 신고</button>

                                                </a>
                                            </div>
                                            <!-- 추천/신고 end -->
                                            <!-- 댓글 start -->
                                            <div class="reply_section">
                                                <table cellspacing="0" class="reply_tb">
                                                    <tbody>
                                                        <tr class="reply_write">
                                                            <td colspan="2" style="">
                                                                <!--textarea cols="80" rows="20" name=""></textarea-->
                                                                <textarea class="reply_textarea form-control" name=""></textarea>
                                                            </td>
                                                            <td class="" style="">
                                                                <button type="button" class="btn btn-outline-primary btn_rg">등록</button>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <div class="reply_list">
                                                    <ul class="reply_list_ul">
                                                        <li>
                                                            <div class="media userlist-box reply_info" data-id="" data-status="" data-username="">
                                                                <!-- 유저이미지 -->
                                                                <a class="media-left" href="#!">
                                                                    <img class="media-object img-radius" src="images/user/avatar-1.jpg" alt="image ">
                                                                </a>
                                                                <!-- 유저정보 -->
                                                                <div class="media-body">
                                                                    <span class="chat-header float-left">닉네임***?<small class="d-block text-c-green">2019.07.14</small></span>
                                                                    <span class="like_warning float-right">
                                                                    <span>
	                                                                    <a href="#">추천 </a>|
	                                                                    <a data-toggle="modal" data-target="#exampleModalCenter" style="cursor:pointer;"> 신고</a>
                                                                    </span>
                                                                    </span>

                                                                </div>
                                                            </div>
                                                            <div class="reply_comment">
                                                                두개가 되어랏
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="media userlist-box reply_info" data-id="" data-status="" data-username="">
                                                                <!-- 유저이미지 -->
                                                                <a class="media-left" href="#!">
                                                                    <img class="media-object img-radius" src="images/user/avatar-1.jpg" alt="image ">
                                                                </a>
                                                                <!-- 유저정보 -->
                                                                <div class="media-body">
                                                                    <span class="chat-header float-left">닉네임***?<small class="d-block text-c-green">2019.07.14</small></span>
                                                                    <span class="like_warning float-right">
                                                                    <span>
	                                                                    <a href="#">추천 </a>|
	                                                                    <a data-toggle="modal" data-target="#exampleModalCenter"style="cursor:pointer;"> 신고</a>
                                                                    </span>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="reply_comment">
                                                                여기는 댓글 리스트입니다. 입력한 댓글 내용이 바로 여기에 뿌려지는 거시지요.
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>

                                            </div>
                                            <!-- 댓글 end -->
                                            <!-- 하단 버튼 -->
                                            <a href="#" datataget="" class="btn btn-primary btn-boredlist">목록</a>
                                            <a href="#" class="btn btn-primary btn-boredwrite">글쓰기</a>
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
                                                                <input type="radio" name="radio-p-1" id="radio-p-2"value="1">
                                                                <label for="radio-p-2" class="cr">바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="radio radio-primary d-inline">
                                                                <input type="radio" name="radio-p-1" id="radio-p-3"value="1">
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

                                                        <textarea class="reply_textarea form-control reseonwhy" name="text" placeholder="신고 사유를 작성해주세요" rows="3" disabled></textarea>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                                    <button type="button" class="btn btn-primary">신고하기</button>
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

    <script type="text/javascript">
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