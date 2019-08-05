<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
	<meta charset="utf-8">
    <!-- Wysiwyg editor -->
    <link rel="stylesheet" href="plugins/fullcalendar/css/fullcalendar.min.css">
    <!-- schedule/my Css -->
    <link rel="stylesheet" href="css/schedule.css">
</head>

<body class="layout-8">
	<jsp:include page="../main/header2.jsp"></jsp:include>
    <!-- [ Main Content ] start -->
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
                                        <h5 class="m-b-10">전문가</h5>
                                    </div>
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                                        <li class="breadcrumb-item"><a href="#!">상담현황</a></li>
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
                                <!-- [ Full-calendar ] start -->
                                <div class="col-sm-12">
                                    <div class="card fullcalendar-card">
                                      <div class="card-header">
                                          <h5 class="col-sm-2">상담관리하기</h5>
                                          <div class="float-sm-right">
                                      <button type="button" class="fc-month-button fc-button fc-state-default fc-corner-left fc-corner-right
                                      fc-state-active">리스트로보기</button></div>

                                </div>
                                <div class="fc-view-noteContainer">
                                        <div class="spaceTwo"> <!-- 여기이상함 -->
                                        <div id='calendar' class='calendar col-sm-9 float-sm-left'>

                                        </div>

                                        <div class=" col-sm-3 float-sm-right">
                                          <div class="notes-list">
                                          	<h5>(선택된)스케쥴</h5>
                                              <ul id="Note-list" class="Note-list list-group">
                                              <li class="list-group-item">

                                                  <div class="Note" data-uid="TB-1">
                                                    <div class="Note__name">Note Title</div>
                                                    <div class="Note__desc">
                                          여기에 스케쥴상세 내용이 보여집니다
                                          여기에 스케쥴상세 내용이 보여집니다
                                          여기에 스케쥴상세 내용이 보여집니다
                                          여기에 스케쥴상세 내용이 보여집니다
                                          여기에 스케쥴상세 내용이 보여집니다
                                          여기에 스케쥴상세 내용이 보여집니다
                                          여기에 스케쥴상세 내용이 보여집니다
                                          여기에 스케쥴상세 내용이 보여집니다
                                          </div>
                                                    <span class="Note__date">10 july 2019, 15:14 pm</span>
                                                  </div>
                                              </ul>
                                          </div>
                                          <br>
                                          <div>

                                          <div class="Note-header">
                                              <div class="Note-created">

                                                  <span class="Note-created__date" id="Note-created__date"></span>
                                              </div>
                                            <h5>&nbsp;메모하기</h5>
                                          </div>
                                          <div class="note-body">

                                              <div class="note-write">
                                                  <textarea id="Note-pad" class="form-control" placeholder="Type your note here" rows="15"></textarea>
                                              </div>
                                          </div>

                                        </div>
                                      </div>
                                    </div>
                                  </div>

                                  <div class="listView listPlace" >
                                    <div class="spaceTwo">
                                    <div class="row">
                                    <div id='list' class='list col-sm-8 float-sm-left'>
                                      <div class="col-xl-12">
                                        <div class="card">
                                        <div class="card-block">
                                          <div class="row">
                                            <div class="col-sm-2">
                                            <img src="images/ok2.png" class="imageSize" alt="activity-user">
                                          </div>
                                          <div class="col-sm-10 align-items-center justify-content-center">
                                            <div class="col margin:0 auto;">
                                              <div class="col-sm-3/4 float-sm-right">
                                                <h6>2019.07.11 am 10:29</h6>
                                            </div>
                                              <h3 class="text-c-blue">김인희 님</h3>
                                              <h6 class="text-c-gray">예약일시 : 19.08.01 am 10:30 </h6>
                                              <h5>이러이러해서 상담을 신청합니다.</h5>
                                              <div class="col-sm-3/4 float-sm-right">
                                                <div id="exampleModalLive3" class="modal fade listPlace" tabindex="-1" role="dialog"
                                                aria-labelledby="exampleModalLiveLabel"  aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                  <div class="modal-content">
                                                    <div class="modal-header">
                                                      <h5 class="modal-title" id="exampleModalLiveLabel">상담을 수락하시겠습니까?</h5>
                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">x</span>
                                                      </button>
                                                    </div>
                                                    <div class="form-group spaceOne" >
                                                      <label for="message-text" class="col-form-label">&nbsp;김인희 님께 보내는 메세지:</label>
                                                      <div class="spaceOne">
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
                                              data-target="#exampleModalLive3">수락</button>
                                              <div id="exampleModalLive4" class="modal fade listPlace" tabindex="-1" role="dialog"
                                              aria-labelledby="exampleModalLiveLabel"  aria-hidden="true">
                                              <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                  <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLiveLabel">상담을 거절하시겠습니까?</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                      <span aria-hidden="true">x</span>
                                                    </button>
                                                  </div>
                                                  <div class="form-group spaceOne" >
                                                    <label for="message-text" class="col-form-label">&nbsp;거절메세지:</label>
                                                    <div class="spaceOne">
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
                                              <button type="button" class="btn btn-danger"  data-toggle="modal"
                                              data-target="#exampleModalLive4">거절</button>
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
                                          <img src="images/no2.png" class="imageSize" alt="activity-user">
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
                                              <div id="exampleModalLive" class="modal fade listPlace" tabindex="-1" role="dialog"
                                              aria-labelledby="exampleModalLiveLabel" aria-hidden="true">
                                              <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                  <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLiveLabel">상담을 수락하시겠습니까?</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                      <span aria-hidden="true">x</span>
                                                    </button>
                                                  </div>
                                                  <div class="form-group spaceOne">
                                                    <label for="message-text" class="col-form-label">&nbsp;김채연 님께 보내는 메세지:</label>
                                                    <div class="spaceOne">
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
                                            <div id="exampleModalLive2" class="modal fade listPlace" tabindex="-1" role="dialog"
                                            aria-labelledby="exampleModalLiveLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                              <div class="modal-content">
                                                <div class="modal-header">
                                                  <h5 class="modal-title" id="exampleModalLiveLabel">상담을 거절하시겠습니까?</h5>
                                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">x</span>
                                                  </button>
                                                </div>
                                                <div class="form-group spaceOne">
                                                  <label for="message-text" class="col-form-label">&nbsp;거절메세지:</label>
                                                  <div class="spaceOne">
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
                                </div>
                                <!-- [ Full-calendar ] end -->
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
    
    <!-- Full calendar js -->
    <script src="plugins/fullcalendar/js/lib/moment.min.js"></script>
    <script src="plugins/fullcalendar/js/lib/jquery-ui.min.js"></script>
    <script src="plugins/fullcalendar/js/fullcalendar.min.js"></script>

    <script type="text/javascript">
	    $("#menu4").addClass('active');
	    $("#menu4").addClass('pcoded-trigger'); 
    
    
        // Full calendar
        $(window).on('load', function() {
            $('#external-events .fc-event').each(function() {
                $(this).data('event', {
                    title: $.trim($(this).text()),
                    stick: true
                });
                $(this).draggable({
                    zIndex: 999,
                    revert: true,
                    revertDuration: 0
                });
            });

            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title'
                },
                defaultDate: '2019-08-12',
                editable: true,
                droppable: true,
                events: [{
                    title: 'All Day Event',
                    start: '2019-08-01',
                    borderColor: '#04a9f5',
                    backgroundColor: '#04a9f5',
                    textColor: '#fff'
                }, {
                  title: '우재생일♥',
                  start: '2019-08-05',
                  end: '2018-08-05',
                  borderColor: '#5ec1ff',
                  textColor:'#fff'
                }, {
                    title: 'Long Event',
                    start: '2019-08-07',
                    end: '2019-08-10',
                    borderColor: '#f44236',
                    backgroundColor: '#f44236',
                    textColor: '#fff'
                }, {
                    id: 999,
                    title: 'Repeating Event',
                    start: '2019-08-09T16:00:00',
                    borderColor: '#f4c22b',
                    backgroundColor: '#f4c22b',
                    textColor: '#fff'
                }, {
                    id: 999,
                    title: 'Repeating Event',
                    start: '2019-08-16T16:00:00',
                    borderColor: '#3ebfea',
                    backgroundColor: '#3ebfea',
                    textColor: '#fff'
                }, {
                    title: 'Conference',
                    start: '2019-08-11',
                    end: '2018-08-13',
                    borderColor: '#1de9b6',
                    backgroundColor: '#1de9b6',
                    textColor: '#fff'
                }, {
                    title: 'Meeting',
                    start: '2019-08-12T10:30:00',
                    end: '2018-08-12T12:30:00'
                }, {
                    title: 'Lunch',
                    start: '2019-08-12T12:00:00',
                    borderColor: '#f44236',
                    backgroundColor: '#f44236',
                    textColor: '#fff'
                }, {
                    title: 'Happy Hour',
                    start: '2019-08-12T17:30:00',
                    borderColor: '#a389d4',
                    backgroundColor: '#a389d4',
                    textColor: '#fff'
                }, {
                    title: 'Birthday Party',
                    start: '2019-08-13T07:00:00'
                }, {
                    title: 'Click for Google',
                    url: 'http://google.com/',
                    start: '2019-08-28',
                    borderColor: '#a389d4',
                    backgroundColor: '#a389d4',
                    textColor: '#fff'
                }],
                drop: function() {
                    if ($('#drop-remove').is(':checked')) {
                        $(this).remove();
                    }
                }
            });

           $('.fc-month-button').text('리스트로보기');
           $('.fc-right').hide();
           $('.fc-center').css('margin-right','183px');
           $('.fc-month-button').off('click').click(function(){
             if ($('.fc-month-button').text() === '리스트로보기') {
               $('.fc-month-button').text('달력으로보기');
               $('.fc-view-container').hide();
               $('.fc-view-noteContainer').hide();
               $('.listView').show();
             } else {
               $('.fc-month-button').text('리스트로보기');
               $('.fc-view-container').show();
               $('.fc-view-noteContainer').show();
               $('.listView').hide();
             }
           });
           
           $('.note-write').css('margin-bottom','15px')
        });
    </script>    
</body>

</html>