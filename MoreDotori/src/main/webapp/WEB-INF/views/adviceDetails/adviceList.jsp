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
                         	<div class="col-1"></div>
                            <div class="col-10">
                                <div class="card fullcalendar-card">
                                      
                                    <div class="card size0101">
                                        <div class="card-block">
                                        	<div class="xxxx">
                                                <h6>2019.07.26 am 11:48</h6>
                                            </div>
                                            <div class="row">
	                                        <div class="dd">
	                                        	<div id="onecolor1" class="oneoneone">거절</div>
	                                          </div>
                                         	<div class="whois">
	                                            <h5 class="card-title">홍길동님</h5>
	                                            <h6 id="fontss" class="card-subtitle mb-2 text-muted">- 예약일시 : 2019-07-26 11:48</h6>
	                                            <h6 id="fontss" class="card-subtitle mb-2 text-muted">- 코멘트    : 기타사유</h6>
		                                        <div class="cardcoment">
		                                            <span class="card-text">바빠서 거절합니다.</span>
	                                        	</div>
	                                        </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div class="card size0101">
                                        <div class="card-block">
                                        	<div class="xxxx">
                                                <h6>2019.07.26 am 11:48</h6>
                                            </div>
                                            <div class="row">
	                                        <div class="dd">
	                                        	<div id="onecolor2" class="oneoneone">예약 대기</div>
	                                          </div>
                                         	<div class="whois">
	                                            <h5 class="card-title">홍길동님</h5>
	                                            <h6 id="fontss" class="card-subtitle mb-2 text-muted">- 예약일시 : 2019-07-26 11:48</h6>
	                                            <h6 id="fontss" class="card-subtitle mb-2 text-muted">- 코멘트    : 상담가의 답변을 기다리는 중입니다.</h6>
	                                        </div>
                                        <div id="exampleModalLive4" class="modal fade" tabindex="-1" role="dialog"
                                              aria-labelledby="exampleModalLiveLabel" style="display: none;" aria-hidden="true">
                                              <div class="modal-dialog" role="document">
                                                <div id="modalboxsize" class="modal-content">
                                                  <div class="modal-header">
                                                    <h5 class="modal-title titlesize" id="exampleModalLiveLabel">상담을 취소하시겠습니까?</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                      <span aria-hidden="true">x</span>
                                                    </button>
                                                  </div>
                                                  <div id="footersize" class="modal-footer">
                                                    <button type="submit" class="btn btn-primary">예</button>
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
										</div>
										<button type="button" id="btncs1" class="btn btn-primary"  data-toggle="modal"
                                              data-target="#exampleModalLive4">거절</button>
                                    </div>
                                  </div>
                                  <div class="card size0101">
                                        <div class="card-block">
                                        	<div class="xxxx">
                                                <h6>2019.07.26 am 11:48</h6>
                                            </div>
                                            <div class="row">
	                                        <div class="dd">
	                                        	<div id="onecolor3" class="oneoneone">예약 완료</div>
	                                          </div>
                                         	<div class="whois">
	                                            <h5 class="card-title">홍길동님</h5>
	                                            <h6 id="fontss" class="card-subtitle mb-2 text-muted">- 예약일시 : 2019-07-26 11:48</h6>
	                                            <h6 id="fontss" class="card-subtitle mb-2 text-muted">- 코멘트    : 기타사유</h6>
	                                            <div class="cardcoment">
		                                            <span class="card-text">예약해주셔서 감사합니다. 상담을 위한 @@@문서, 111문서, 444문서를 준비해 주시기 바랍니다.</span>
	                                        	</div>
	                                        </div>
	                                        	<div id="exampleModalLive5" class="modal fade" tabindex="-1" role="dialog"
                                              aria-labelledby="exampleModalLiveLabel" style="display: none;" aria-hidden="true">
                                              <div class="modal-dialog" role="document">
                                                <div id="modalboxsize" class="modal-content">
                                                  <div class="modal-header">
				                                        <div class="card-block">
				                                            <div class="row">
					                                        <div class="dd2">
					                                        	<div class="dmddo">
					                                        		<img class="img-fluid rounded-circle" src="images/user/avatar-5.jpg" alt="dashboard-user">
					                                        	</div>
					                                          </div>
				                                         	<div class="whois2">
					                                            <h5 class="card-title">홍길동님</h5>
					                                            <h6 id="fontss" class="card-subtitle mb-2 text-muted">- 이메일    : 엉엉엉@엉엉엉.엉엉엉</h6>
					                                            <h6 id="fontss" class="card-subtitle mb-2 text-muted">- 연락처    : 엉엉엉-엉엉엉엉-엉엉엉엉</h6>
						                                        <h6 id="fontss" class="card-subtitle mb-2 text-muted">- 회사주소 : 서울시 마포구 백범로23 구프라자3층</h6>
					                                        </div>
				                                        </div>
				                                    </div>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                      <span aria-hidden="true">x</span>
                                                    </button>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
										</div>
										<button type="button" id="btncs2" class="btn btn-primary"  data-toggle="modal"
                                              data-target="#exampleModalLive5">명함보기</button>
                                    </div>
                                  </div>
                                  <div class="card size0101">
                                        <div class="card-block">
                                        	<div class="xxxx">
                                                <h6>2019.07.26 am 11:48</h6>
                                            </div>
                                            <div class="row">
	                                        <div class="dd">
	                                        	<div id="onecolor4" class="oneoneone">상담 완료</div>
	                                          </div>
                                         	<div class="whois">
	                                            <h5 class="card-title">홍길동님</h5>
	                                            <h6 id="fontss" class="card-subtitle mb-2 text-muted">- 예약일시 : 2019-07-26 11:48</h6>
	                                            <h6 id="fontss" class="card-subtitle mb-2 text-muted">- 코멘트    : 기타사유</h6>
	                                            <div class="cardcoment">
		                                            <span class="card-text">바빠서 거절합니다.</span>
	                                        	</div>
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