<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA::고객센터</title>
	<meta charset="utf-8">
	<!-- append css -->
	<link rel="stylesheet" href="/css/cs/faq.css">
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
							<form id="tabform" name="tabform" method="post" target="" action="/board/${BoardMgrVO.b_code}/list"  onsubmit="javascript:return false;">
							<input type="hidden" name="searchCate" value="${search_cate }">

							
                            <!-- [ Main Content ] start -->
                            <div class="row">
                            	<!-- [FAQ] start -->
                                <div class="col-sm-12">
                                    <div class="card" id="faq">
                                        <div class="card-header">
	                                        <!-- 게시판 코드에 따라서...? -->
	                                        <!-- 게시판이름 -->
	                                        <h5>${BoardMgrVO.b_title}</h5>
	                                        <!-- 게시판 설명 -->
                                            <span class="d-block m-t-5"> <code></code>${BoardMgrVO.b_subtitle}</span>
                                        </div>                                  
                               	<!-- [ tabs ] start -->
                                <div class="col-sm-12" style="background-color:;padding:1em">
	                                    <ul class="nav nav-tabs2" id="myTab" role="tablist" style="">
	                                        <li class="nav-item">
	                                            <a class="nav-link active text-uppercase" id="all-tab" data-toggle="tab" href="#all" role="tab" aria-controls="all" aria-selected="true">전체</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link text-uppercase" id="account-tab" data-toggle="tab" href="#account" role="tab" aria-controls="account" aria-selected="false">계정</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link text-uppercase" id="reserve-tab" data-toggle="tab" href="#reserve" role="tab" aria-controls="reserve" aria-selected="false">예약</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link text-uppercase" id="asset-tab" data-toggle="tab" href="#asset" role="tab" aria-controls="asset" aria-selected="false">가계부</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link text-uppercase" id="etc-tab" data-toggle="tab" href="#etc" role="tab" aria-controls="etc" aria-selected="false">기타</a>
	                                        </li>
	                                    </ul>
                                    <div class="tab-content" id="myTabContent">
                                    <!-- 전체보기탭 -->
                                        <div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="all-tab">
                                            <p class="mb-0"></p>
	                                        <c:if test="${not empty boardList }">
	                               				<c:forEach var="listConts" items="${boardList}" varStatus="status"> 
														<!-- 
														var="for문 내부에서 사용할 변수명(필수)" 
														items="Collection 객체(List, ArrayList)(필수)" 리스트가 받아올 배열이름
														varStatus="반복 상태 를 알수 있는 변수"
														-->
														<!-- varStatus 값
															  index		int 	items에 정의한 항목을 가리키는 index 번호이다. 0부터 시작
															  count 	int		몇 번째 반복인지 나타낸다. 1부터 시작
															  first		boolean	첫 번째 반복인지 나타냄
															  last		boolean 마지막 반복인지 나타냄
														 -->
		                               				<a href="#!">
	                                                <h5 data-toggle="collapse" data-target="#f${status.count}" aria-Expand="false" aria-controls="f${status.count }">
		                                                <span class="faq_hh">[ ${listConts.fcategori} ]</span> ${listConts.b_subjcet}
		                                                <span class="faq_date">${listConts.reg_dt}</span>
	                                                </h5>
		                                            </a>
		                                            <div class="collapse" id="f${status.count }" data-parent="#myTabContent">
		                                                <p class="mb-0"> ${listConts.b_content}</p>
		                                            </div>
			                                        <hr>
			                                    </c:forEach>
			                                </c:if>
		                                          <%--   <a href="#!">
		                                                <h5 data-toggle="collapse" data-target="#f${status.count }" aria-Expand="false" aria-controls="f${status.count }">
		                                                <span class="faq_hh">[ ${listConts.fcategori} ]</span> 
		                                                	앗, 이런 <b>비밀번호</b>를 잊어버렸어요 <span class="faq_date">${listConts.reg_dt}</span>
		                                                </h5>
		                                            </a>
		                                            <div class="collapse" id="f${status.count } }" data-parent="#myTabContent">
		                                                <p class="mb-0">${listConts.b_content}</p> <!-- faq 내용(답변) -->
		                                            </div> --%>
                                             <!-- 
                                            <a href="#!">
                                                <h5 data-toggle="collapse" data-target="#f2" aria-Expand="false" aria-controls="f2"><span class="faq_hh">[ 예약 ]</span> 예약완료가 되었는데 <b>취소</b>가 안되요<span class="faq_date">2019.07.11</span></h5>
                                            </a>
                                            <div class="collapse" id="f2" data-parent="#myTabContent">
                                                <p class="mb-0">응 원래 안됨</p>
                                            </div>
                                            <hr>
                                            <a href="#!">
                                                <h5 data-toggle="collapse" data-target="#f4" aria-Expand="false" aria-controls="f4"><span class="faq_hh">[ 가계부 ]</span>매일 매일 <b>가계부</b>쓰기가 너무 귀찮은데요?<span class="faq_date">2019.07.11</span></h5>
                                            </a>
                                            <div class="collapse" id="f4" data-parent="#myTabContent">
                                                <p class="mb-0">한달에 한번씩 쓰시든가요</p>
                                            </div>
                                            <hr>
                                            <a href="#!">
                                                <h5 data-toggle="collapse" data-target="#f5" aria-Expand="false" aria-controls="f5"><span class="faq_hh">[ 기타 ]</span> 전문가 상담 후 귀찮게 자꾸 <b>만나자고</b> 연락이 와요<span class="faq_date">2019.07.11</span></h5>
                                            </a>
                                            <div class="collapse" id="f5" data-parent="#myTabContent">
                                                <p class="mb-0">그건 112로 문의하세요</p>
                                            </div> -->
                                        
                                        </div>
                                        
                                        <!-- 계정탭 -->
                                        <div class="tab-pane fade" id="account" role="tabpanel" aria-labelledby="account-tab">
                                            <p class="mb-0"></p>
	                                       <c:if test="${not empty boardList }">
	                                        
	                               				<c:forEach var="listConts" items="${boardList}" varStatus="status">
<%-- 	                               			<c:set var ="tab" value="${listConts1.fcategori}"/> --%>
                                                <!-- document.write("listConts1.fcategori"  + ${listConts1.fcategori}.length()); -->
                                                <!-- 테스트해보면 공백이 어디선가 나오기 시작한다 -->
	                               				<c:if test="${fn:trim(listConts.fcategori) eq '계정' }" >  
	                               				
		                               				<a href="#!">
	                                                <h5 data-toggle="collapse" data-target="#f${status.count}" aria-Expand="false" aria-controls="f${status.count }">
		                                                <span class="faq_hh">[ ${listConts.fcategori} ]</span> ${listConts.b_subjcet}
		                                                <span class="faq_date">${listConts.reg_dt}</span>
	                                                </h5>
		                                            </a>
		                                            <div class="collapse" id="f${status.count}" data-parent="#myTabContent">
		                                                <p class="mb-0"> ${listConts.b_content}</p>
		                                            </div>
			                                        <hr>
			                                     </c:if>
			                                    </c:forEach>
			                                  </c:if>
                                        </div>
                                        <!-- 예약  -->
                                        <div class="tab-pane fade" id="reserve" role="tabpanel" aria-labelledby="reserve-tab">
                                            <p class="mb-0"></p>
	                                       <c:if test="${not empty boardList }">
	                               				<c:forEach var="listConts" items="${boardList}" varStatus="status">
	                               				<c:if test="${fn:trim(listConts.fcategori) eq '예약' }" >  
		                               				<a href="#!">
	                                                <h5 data-toggle="collapse" data-target="#f${status.count}" aria-Expand="false" aria-controls="f${status.count }">
		                                                <span class="faq_hh">[ ${listConts.fcategori} ]</span> ${listConts.b_subjcet}
		                                                <span class="faq_date">${listConts.reg_dt}</span>
	                                                </h5>
		                                            </a>
		                                            <div class="collapse" id="f${status.count}" data-parent="#myTabContent">
		                                                <p class="mb-0"> ${listConts.b_content}</p>
		                                            </div>
			                                        <hr>
			                                     </c:if>
			                                    </c:forEach>
			                                   
			                                  </c:if>
                                        </div>
                                        
                                        <!-- 가계부  -->
                                        <div class="tab-pane fade" id="asset" role="tabpanel" aria-labelledby="asset-tab">
                                            <p class="mb-0"></p>
	                                       <c:if test="${not empty boardList }">
	                               				<c:forEach var="listConts" items="${boardList}" varStatus="status">
	                               				<c:if test="${fn:trim(listConts.fcategori) eq '가계부' }" >  
		                               				<a href="#!">
	                                                <h5 data-toggle="collapse" data-target="#f${status.count}" aria-Expand="false" aria-controls="f${status.count }">
		                                                <span class="faq_hh">[ ${listConts.fcategori} ]</span> ${listConts.b_subjcet}
		                                                <span class="faq_date">${listConts.reg_dt}</span>
	                                                </h5>
		                                            </a>
		                                            <div class="collapse" id="f${status.count}" data-parent="#myTabContent">
		                                                <p class="mb-0"> ${listConts.b_content}</p>
		                                            </div>
			                                        <hr>
			                                     </c:if>
			                                    </c:forEach>
			                                  </c:if>
                                        </div>
                                        
                                        
                                        <!-- 기타  -->
                                        <div class="tab-pane fade" id="etc" role="tabpanel" aria-labelledby="etc-tab">
                                            <p class="mb-0"></p>
	                                       <c:if test="${not empty boardList }">
	                               				<c:forEach var="listConts" items="${boardList}" varStatus="status">
	                               				<c:if test="${fn:trim(listConts.fcategori) eq '기타' }" >  
		                               				<a href="#!">
	                                                <h5 data-toggle="collapse" data-target="#f${status.count}" aria-Expand="false" aria-controls="f${status.count }">
		                                                <span class="faq_hh">[ ${listConts.fcategori} ]</span> ${listConts.b_subjcet}
		                                                <span class="faq_date">${listConts.reg_dt}</span>
	                                                </h5>
		                                            </a>
		                                            <div class="collapse" id="f${status.count}" data-parent="#myTabContent">
		                                                <p class="mb-0"> ${listConts.b_content}</p>
		                                            </div>
			                                        <hr>
			                                     </c:if>
			                                    </c:forEach>
			                                    
                                        <c:if test="${empty boardList }">
		                                  			<h5 data-toggle="collapse" data-target="#f${status.count}" aria-Expand="false" aria-controls="f${status.count }">
                                                      <span>  내용이 없슈</span>
                                                   </h5>
                                                   </c:if> 
		                                  </c:if>
				                                 <%--
				                                 <c:if test= "${empty fn:trim(listConts.fcategori) eq '기타' }">
				                                  	내용이 없습니다.
					                              </c:if> --%>
                                        </div>
                                            <!-- <a href="/board_write" class="btn btn-primary " style="margin:10px; textalign:rignt;">FAQ 작성하기</a> -->                                       
                                    </div>
                                </div>
                                <!-- tab end -->
                                
                                
                                    
                                    </div>
                                </div>
                                <!-- [FAQ] end -->
                                
                            </div>
                            <!-- [ Main Content ] end -->
                            </form>
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
		$("#menu7").addClass('active');
		$("#menu7").addClass('pcoded-trigger');
 		$("#menu7_1").addClass('active');    
        $(document).ready(function() {
            // [ Foo-table ]
            /* $('#demo-foo-filtering').footable({
                "paging": {
                    "enabled": true
                }
                /*
                ,
                "sorting": {
                    "enabled": true
               
            }); */
        });
    </script>
</body>
</html>