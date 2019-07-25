<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA::고객센터</title>
	<meta charset="utf-8">
	<!-- append css -->
	<link rel="stylesheet" href="css/cs/faq.css">
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
                            	<!-- [FAQ] start -->
                                <div class="col-sm-12">
                                    <div class="card" id="faq">
                                        <div class="card-header">
                                            <h5>FAQ</h5>
                                            <span class="d-block m-t-5"> <code></code>자주 묻는 질문과 대답 / 원하는 내용이 없다면 QnA를 이용해주세요</span>
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
                                            <a class="nav-link text-uppercase" id="reserve-tab" data-toggle="tab" href="#reserve" role="tab" aria-controls="reserve" aria-selected="false">가계부</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link text-uppercase" id="reserve-tab" data-toggle="tab" href="#reserve" role="tab" aria-controls="reserve" aria-selected="false">기타</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content" id="myTabContent">
                                        <div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="all-tab">
                                            <p class="mb-0">
                                            </p>
                                            <a href="#!">
                                                <h5 data-toggle="collapse" data-target="#f1" aria-Expand="false" aria-controls="f1"><span class="faq_hh">[ 계정 ]</span> 앗, 이런 <b>비밀번호</b>를 잊어버렸어요 <span class="faq_date">2019.07.11</span></h5>
                                            </a>
                                            <div class="collapse" id="f1" data-parent="#myTabContent">
                                                <p class="mb-0">바보아냐?</p>
                                            </div>
                                            <hr>
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
                                            </div>
                                            
                                       
                                        </div>
                                        <div class="tab-pane fade" id="account" role="tabpanel" aria-labelledby="account-tab">
                                            <p class="mb-0"></p>
                                        </div>
                                        <div class="tab-pane fade" id="reserve" role="tabpanel" aria-labelledby="reserve-tab">
                                            <p class="mb-0"></p>
                                        </div>
                                    </div>
                                </div> 
                                        
                                    
                                    </div>
                                </div>
                                <!-- [FAQ] end -->
                                
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
    
        <!-- footable Js -->
    <script src="js/board/footable.min.js"></script>

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
        });
    </script>
</body>
</html>