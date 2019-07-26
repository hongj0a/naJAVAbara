<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>MoreDotori AdviceList</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Datta Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
    <meta name="keywords" content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template">
    <meta name="author" content="Codedthemes" />

	<link rel="stylesheet" href="css/adviceList/advice.css">

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
                                    <div class="page-header-title" style="weight:80%;">
                                        <h5>상담내역</h5>
                                    </div>
                                    <div class="find-list" style="weight:60%; float:left;">
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="/"><i class="feather icon-home"></i></a></li>
                                        <li class="breadcrumb-item"><a href="#!">재무 진단</a></li>
                                        <li class="breadcrumb-item"><a href="#!">상담내역</a></li>
                                    </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
		             </div>
    				<!-- [ breadcrumb ] end -->
    				
                    <div class="main-body">
                        <div class="page-wrapper">
                        <!-- [ Main Content ] start -->
                         <div class="row">

                            <div class="col-sm-12">
                                <div class="card fullcalendar-card">
                                      
                                    <div class="card">
                                        <div class="card-block">
                                        
                                              <div class="col-sm-3/4 float-sm-right">
                                                <h6>2019.07.26 am 11:48</h6>
                                            </div>
                                         	<div class="whois">
	                                            <h5 class="card-title">홍길동님</h5>
	                                            <h6 class="card-subtitle mb-2 text-muted">- 예약일시 : 2019-07-26 11:48</h6>
	                                            <h6 class="card-subtitle mb-2 text-muted">- 코멘트    : 기타사유</h6>
	                                        </div>
	                                        <div class="cardcoment">
	                                            <span class="card-text">바빠서 거절합니다.</span>
                                        	</div>
                                        </div>
                                    </div>

                        	     <div id="listview-design" class="listView">
                                    <div class="row">
                                    <div id='list' class='list col-sm-8 float-sm-left'>
                                      <div class="col-xl-12">
                                        <div class="card">
                                        <div class="card-block">
                                            <div class="col-sm-2">
                                            <img src="images/ok2.png" style="width:80px;" alt="activity-user">
                                          </div>
                                          <div class="col-sm-10 align-items-center justify-content-center">
                                            <div class="col margin:0 auto;">
                                              <div class="col-sm-3/4 float-sm-right">
                                                <h6>2019.07.11 am 10:29</h6>
                                            </div>
                                              <h3 class="text-c-black">홍길동님</h3>
                                              <h6 class="text-c-gray">예약일시 : 19.08.01 am 10:30 </h6>
                                              <h6 class="text-c-gray">코멘트    : 배가고프죠 </h6>
                                              <h5>거절한다.</h5>
                                              <div class="col-sm-3/4 float-sm-right">
                                                <div id="exampleModalLive3" class="modal fade" tabindex="-1" role="dialog"
                                                aria-labelledby="exampleModalLiveLabel" style="display: none;" aria-hidden="true">
                                                </div>
                                              </div>
                                            </div>
                                            </div>
                                            </div>
                                        </div>
                                      </div>
                                    </div>
                                        <br>
                                    <div class="col-xl-12">
                                      <div class="card">
                                      <div class="card-block">
                                        <div class="row">
                                          <div class="col-sm-2">
                                          <img src="images/no2.png" style="width:80px;" alt="activity-user">
                                        </div>
                                        <div class="col-sm-10 align-items-center justify-content-center">
                                          <div class="col margin:0 auto;">
                                            <div class="col-sm-3/4 float-sm-right">
                                              <h6>2019.07.11 am 10:29</h6>
                                          </div>
                                            <h3 class="text-c-blue">김채연 님</h3>
                                            <h6 class="text-c-gray">예약일시 : 19.08.01 am 10:30 </h6>
                                            <h5>이러이러해서 상담을 신청합니다.</h5>
                                            <div class="col-sm-3/4 float-sm-right">
                                              <div id="exampleModalLive" class="modal fade" tabindex="-1" role="dialog"
                                              aria-labelledby="exampleModalLiveLabel" style="display: none;" aria-hidden="true">
                                              <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                  <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLiveLabel">상담을 수락하시겠습니까?</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                      <span aria-hidden="true">x</span>
                                                    </button>
                                                  </div>
                                                  <div class="form-group" style="padding:10px">
                                                    <label for="message-text" class="col-form-label">&nbsp;김채연 님께 보내는 메세지:</label>
                                                    <div style="padding:10px;">
                                                    <textarea class="form-control" id="message-text">
                                                    </textarea>
                                                  </div>
                                                  </div>
                                                  <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                                                    <button type="button" class="btn btn-primary">확인</button>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                            <button type="button" class="btn btn-primary"  data-toggle="modal"
                                            data-target="#exampleModalLive">수락</button>
                                            <div id="exampleModalLive2" class="modal fade" tabindex="-1" role="dialog"
                                            aria-labelledby="exampleModalLiveLabel" style="display: none;" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                              <div class="modal-content">
                                                <div class="modal-header">
                                                  <h5 class="modal-title" id="exampleModalLiveLabel">상담을 거절하시겠습니까?</h5>
                                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">x</span>
                                                  </button>
                                                </div>
                                                <div class="form-group" style="padding:10px">
                                                  <label for="message-text" class="col-form-label">&nbsp;거절메세지:</label>
                                                  <div style="padding:10px;">
                                                    <div class="form-group">
                                                      <select class="form-control" id="selectBox1">
                                                        <option>일정 변동이 있어서</option>
                                                        <option>출장 예정이 있어서</option>
                                                        <option>스케쥴이 꽉 차있어서</option>
                                                        <option>휴가중</option>
                                                        <option>기타</option>
                                                      </select>
                                                      <br>
                                                      <div>
                                                            <input type="text" class="form-control form-control-sm" id="colFormLabelSm"
                                                            placeholder="기타를 선택한 경우 작성해주세요.">
                                                          </div>
                                                    </div>
                                                </div>
                                                </div>
                                                <div class="modal-footer">
                                                  <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                                                  <button type="button" class="btn btn-primary">확인</button>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                            <button type="button" class="btn btn-danger" data-toggle="modal"
                                            data-target="#exampleModalLive2">거절</button>
                                          </div>
                                          </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>

                                <div class=" col-sm-4 float-sm-right">
                                  <div class="Detail">
                                  <h5>이력보기</h5>
                                      <ul id="detail" class="detail list-group">
                                        
                                      <li class="list-group-item">

                                          <div class="Note" data-uid="TB-1">
                                            <div class="Note__name">김인희 님</div>
                                            <div class="Note__desc">
                                  [예약완료] 2019.07.05 am 11:10 <br>
                                  [상담완료] 2019.07.07 pm 13.11 <br>
                                  [상담날짜] 2019.07.18 am 10:28 <br>
                                  [거절] 2019.07.19 pm 12:34 <br>
                                   ㄴ[사유] 시간이 맞지 않습니다.<br>
                                   -------------------------------------------<br>
                                  클릭한 회원의 상세이력이 보여집니다.<br>
                                  </div>
                                            <span class="Note__date">11 july 2019, 12:39 pm</span>
                                          </div>
                                         </ul>
                                  	   </div>
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
    <jsp:include page="../main/footer.jsp"></jsp:include>
    <!-- [ Main Content ] end -->

</body>
</html>