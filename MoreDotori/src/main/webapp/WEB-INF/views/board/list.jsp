<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA::${BoardMgrVO.b_title}</title>
	<meta charset="utf-8">
	<!-- append css -->
	<!-- footable css -->
    <link rel="stylesheet" href="/css/board/footable.bootstrap.min.css">
    <link rel="stylesheet" href="/css/board/footable.standalone.min.css">
	<link rel="stylesheet" href="/css/board/style_board.css">
	
</head>

<body class="layout-8">
	<jsp:include page="../main/header.jsp"></jsp:include>
    <!-- [ Main Content ] start -->
     <script type="text/javascript">
	 function clickSearchBtn(){
 		var form = document.aform;
 		//if(!validation(form)) return;
 		form.action = "/board/${BoardMgrVO.b_code}/list";
 		form.submit();
 	}
	 $(document).ready(function() {
       
         
         $("input[name='searchWord']").keypress(function(e){
 			if(e.which == 13){
 				clickSearchBtn();
 			}
 		});
         
         $("#btnSearch").click(function(e){
			clickSearchBtn();
  		});
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
							<form id="aform" name="aform" method="post" action="/board/${BoardMgrVO.b_code}/list"  onsubmit="javascript:return false;">
							<input type="hidden" name="searchCate" value="${search_cate }">
							<input type="hidden" name="page" value="0"/>
							<input type="hidden" name="memId" value="0"/>
							<input type="hidden" name="mode" value=""/>
							<input type="hidden" name="seqNo" value="0"/>
							<input type="hidden" name="boardNo" value="0"/>
                            <!-- [ Main Content ] start -->
                            <div class="row">
                            	 <!-- [ board_free ] start -->
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                        <!-- 게시판 코드에 따라서...? -->
                                        <!-- 게시판이름 -->
                                        <h5>${BoardMgrVO.b_title}</h5>
                                        <!-- 게시판 설명 -->
                                        <span class="d-block m-t-5"> <code></code>${BoardMgrVO.b_subtitle}</span>
                                        </div>
                                        <div class="card-block">
                                            <table id="demo-foo-filtering" class="table table-striped table-hover">
                                                <thead>
                                                	<tr>
                                                		<th>글번호</th>
                                                        <th>제목</th>
                                                        <th>글쓴이</th>
                                                        <th>작성일</th>
                                                        <th>조회</th>
                                                        <th>추천</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                	<c:if test="${not empty boardList }">
														<c:forEach var="listConts" items="${boardList}" varStatus="status">
														<!-- 
														var="for문 내부에서 사용할 변수명(필수)" 
														items="Collection 객체(List, ArrayList)(필수)" "리스트가 받아올 배열이름"
														varStatus="반복 상태 를 알수 있는 변수"
														-->
														<!-- varStatus 값
															  index		int 	items에 정의한 항목을 가리키는 index 번호이다. 0부터 시작
															  count 	int		몇 번째 반복인지 나타낸다. 1부터 시작
															  first		boolean	첫 번째 반복인지 나타냄
															  last		boolean 마지막 반복인지 나타냄
														 -->
															<tr>
																<td> ${listConts.num} </td>
																<td><a href="content?seq=${listConts.b_seq}">${listConts.b_subjcet} </a></td>
		                                                        <td>${listConts.reg_id}</td>
		                                                        <td>${listConts.reg_dt}</td>
		                                                        <td>${listConts.b_readnum}</td>
		                                                        <td>${listConts.b_heartnum}</td>
															</tr>
														</c:forEach>
													</c:if>			
													<c:if test="${empty boardList }">
														<tr><td colspan="6" style="text-align: center;">검색된 데이터가 없습니다.</td></tr>
													</c:if>
                                                </tbody>
                                                <div class="float-left mb-3">
                                                    <div class="form-group form-primary mb-0">
                                                        <select name="searchType" id="searchcondition"  title="구분" class="form-control form-control-sm">
                                                        	<option value="" <c:if test="${empty paramBoard.searchType}"> selected="selected" </c:if>>:: 선택 ::</option>
                                                            <option value="opt1" <c:if test="${paramBoard.searchType eq 'opt1'}"> selected="selected" </c:if>>제목</option>
                                                            <option value="opt2" <c:if test="${paramBoard.searchType eq 'opt2'}"> selected="selected" </c:if>>글쓴이</option>
                                                            <option value="opt3" <c:if test="${paramBoard.searchType eq 'opt3'}"> selected="selected" </c:if>>작성일</option>
                                                            <option value="opt4" <c:if test="${paramBoard.searchType eq 'opt4'}"> selected="selected" </c:if>>글번호</option>
                                                        </select>
                                                        <span class="form-bar"></span>
                                                    </div>
                                                </div>
                                                
                                            <div class="mb-3 float-left input-group input-group2">
                                                <input type="text" class="form-control" placeholder="검색어를 입력하세요" name="searchWord" value="${paramBoard.searchWord }">
                                                <div class="input-group-append">
                                                    <button class="btn btn-primary btn-icon" type="button" id="btnSearch"><i class="fas fa-search"></i></button>
                                                </div>
                                            </div>
                                            <a href="/board_write" class="btn btn-primary float-sm-right">글쓰기</a>
                                            </table>      
                                        </div>
                                    </div>
                                </div>
                                <!-- [ board_free ] end -->
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
		$("#menu6").addClass('active');
		$("#menu6").addClass('pcoded-trigger');
		$("#menu6_3").addClass('active');       
		
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
            
           
        });
        
       
    		
    </script>
</body>
</html>