<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
	<meta charset="utf-8">
<!-- footable css -->
    <link rel="stylesheet" href="plugins/footable/css/footable.bootstrap.min.css">
    <link rel="stylesheet" href="plugins/footable/css/footable.standalone.min.css">
</head>

<body class="layout-8">
	<jsp:include page="../main/header.jsp"></jsp:include>
    <!-- [ Main Content ] start -->
      <section class="pcoded-main-container">
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
                                                    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="feather icon-more-horizontal"></i>
                                                    </button>
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
                                            <div class="table-responsive form-material">
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
                                                <i class="fas fa-search"></i>
                                              </button>
                                            </div>
                                          </div>
                                          </div>
                                        </div>
                                      </div>

                                            <hr>
                                            <table id="demo-foo-filtering" class="table table-striped table-hover">


                                                <thead>
                                                    <tr>
                                                        <th>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </th>

                                                          <th>분류</th>
                                                          <th>회원번호</th>
                                                          <th>아이디</th>
                                                          <th>이름</th>
                                                          <th data-breakpoints="xs">가입일</th>
                                                          <th data-breakpoints="xs">최근접속일</th>
                                                          <th data-breakpoints="xs">경고횟수(경고/누적)</th>
                                                          <th>회원상태</th>
                                                      </tr>
                                                  </thead>


                                                <tbody>
                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>

                                                          <td>전문가</td>
                                                          <td>MB002-1</td>
                                                          <td>kcy123@naver.com</td>
                                                          <td><span class="tag tag-danger"> 김채연</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                    <tr>
                                                      <td>
                                                        <div class="form-group">
                                                          <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                            <input type="checkbox" name="checkbox-p-fill-1" id="checkbox-p-fill-1" checked>
                                                            <label for="checkbox-p-fill-1" class="cr"></label>
                                                          </div>
                                                        </div>
                                                      </td>

                                                          <td>전문가</td>
                                                          <td>MB002-2</td>
                                                          <td>knr321@naver.com</td>
                                                          <td>김나리</td>
                                                          <td><span class="tag tag-danger"> 2018.11.15</span>
                                                          </td>
                                                          <td>2019.05.15</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>

                                                          <td>일반</td>
                                                          <td>MB001-1</td>
                                                          <td>chw123@naver.com</td>
                                                          <td><span class="tag tag-danger">최혜원</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">3/1</div></td>
                                                          <td>정지</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td>일반</td>
                                                          <td>MB001-2</td>
                                                          <td>kih123@naver.com</td>
                                                          <td><span class="tag tag-danger"> 김인희</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">3/15</div></td>
                                                          <td>정지</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td>일반</td>
                                                          <td>MB001-1</td>
                                                          <td>kcy123@naver.com</td>
                                                          <td><span class="tag tag-danger"> 윤모카</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td>일반</td>
                                                          <td>MB001-1</td>
                                                          <td>kcy123@naver.com</td>
                                                          <td><span class="tag tag-danger"> 윤우재</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td>일반</td>
                                                          <td>MB001-1</td>
                                                          <td>kcy123@naver.com</td>
                                                          <td><span class="tag tag-danger"> 김잉크</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td>일반</td>
                                                          <td>MB001-1</td>
                                                          <td>kcy123@naver.com</td>
                                                          <td><span class="tag tag-danger"> 최홍식</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td>일반</td>
                                                          <td>MB001-1</td>
                                                          <td>kcy123@naver.com</td>
                                                          <td><span class="tag tag-danger"> 김토니</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td>일반</td>
                                                          <td>MB001-1</td>
                                                          <td>kcy123@naver.com</td>
                                                          <td><span class="tag tag-danger"> 노꽁지</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td>일반</td>
                                                          <td>MB001-1</td>
                                                          <td>kcy123@naver.com</td>
                                                          <td><span class="tag tag-danger"> 김미미</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td>일반</td>
                                                          <td>MB001-1</td>
                                                          <td>kcy123@naver.com</td>
                                                          <td><span class="tag tag-danger"> 김통통</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td>일반</td>
                                                          <td>MB001-1</td>
                                                          <td>kcy123@naver.com</td>
                                                          <td><span class="tag tag-danger"> 김나비</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td>일반</td>
                                                          <td>MB001-1</td>
                                                          <td>kcy123@naver.com</td>
                                                          <td><span class="tag tag-danger">홍비똥</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td>전문가</td>
                                                          <td>MB002-1</td>
                                                          <td>kcy123@naver.com</td>
                                                          <td><span class="tag tag-danger"> 최순대</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td>전문가</td>
                                                          <td>MB002-1</td>
                                                          <td>kcy123@naver.com</td>
                                                          <td><span class="tag tag-danger"> 최마라</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td>일반</td>
                                                          <td>MB001-1</td>
                                                          <td>kcy123@naver.com</td>
                                                          <td><span class="tag tag-danger"> 홍꼬꼬아찌</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td>일반</td>
                                                          <td>MB001-1</td>
                                                          <td>kcy123@naver.com</td>
                                                          <td><span class="tag tag-danger"> 김어피치</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
                                                            <div class="checkbox checkbox-primary checkbox-fill d-inline">
                                                              <input type="checkbox" name="checkbox-fill-p-1" id="checkbox-p-fill-2">
                                                              <label for="checkbox-p-fill-2" class="cr">
                                                              </label>
                                                            </div>
                                                          </div>
                                                        </td>
                                                          <td>일반</td>
                                                          <td>MB001-1</td>
                                                          <td>kcy123@naver.com</td>
                                                          <td><span class="tag tag-danger"> 김발렌티노</span>
                                                          </td>
                                                          <td>2017.12.15</td>
                                                          <td>2019.07.11</td>
                                                          <td><div style="text-align:center">0</div></td>
                                                          <td>일반</td>
                                                    </tr>

                                                </tbody>
                                            </table>



                                            <div>
                                              <div id="exampleModalLive" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLiveLabel"
                                              style="display: none;" aria-hidden="true">
                                               <div class="modal-dialog" role="document">
                                                 <div class="modal-content">
                                                   <div class="modal-header">
                                                     <h5 class="modal-title" id="exampleModalLiveLabel"> 활동 정지 대상 멤버 &nbsp <font color="red";>2</font></h5>
                                                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                       <span aria-hidden="true">x</span>
                                                     </button>
                                                   </div>

                                                       <div class="modal-body"><td>

                                                         <img class="img-fluid rounded-circle" style="width:40px;" src="images/user/avatar-1.jpg"
                                                         alt="dashboard-user">&nbsp;김인희</td>
                                                         <br>
                                                         <td><img class="img-fluid rounded-circle" style="width:40px;" src="images/user/avatar-2.jpg"
                                                         alt="dashboard-user">&nbsp;윤모카</td>
                                                         <td></td>
                                                         <td></td>
                                                         <br>
                                                         <br>
                                                         <br>
                                                         <br>

                                                       <hr width ="30%" color="lightGray" align="center" class="col-sm-11"/>

                                                         <div class="alert alert-light" role="alert">
                                                           <div class="i-block" data-clipboard-text="feather icon-alert-circle" data-filter="icon-alert-circle"
                                                           data-toggle="tooltip" title data-original-title="icon-alert-circle">
                                                         <i class="feather icon-alert-circle"></i>
                                                              스탭과 이미 활동 정지 상태인 멤버는 제외되었습니다.
                                                           </div>
                                                         </div>

                                                       <div class="row">

                                                         <label for="inputPassword3" class="col-sm-3 col-form-label boldFont">활동 정지 사유</label>

                                                           <div class="col-sm-9">

                                                             <div class="form-check">
                                                               <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                                                               <label class="form-check-label" for="gridRadios1">성인/도박 등 불법광고 및 스팸 활동</label>
                                                             </div>

                                                               <div class="form-check">
                                                                 <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                                                                 <label class="form-check-label" for="gridRadios2">바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</label>
                                                               </div>

                                                                   <div class="form-check">
                                                                     <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3">
                                                                     <label class="form-check-label" for="gridRadios3">홈페이지 내 자체운영 원칙에 위배되는 활동</label>
                                                                   </div>

                                                                 <div class="form-check disabled">
                                                                   <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios4" value="option4">
                                                                   <label class="form-check-label" for="gridRadios4">기타</label>
                                                                 </div>

                                                               <div>
                                                                 <input type="text" class="form-control form-control-sm" id="colFormLabelSm"
                                                                 placeholder="기타를 선택한 경우 작성해주세요.">
                                                               </div>

                                                          </div>
                                                           <br>
                                                         <br>
                                                       </div>


                                                             <br>
                                                             <br>


                                                             <div class="form-group">


                                                               <label for="selectBox" class="boldFont">활동 정지 기간</label>
                                                                   <select class="form-control" id="selectBox1">
                                                                     <option>1일</option>
                                                                     <option>3일</option>
                                                                     <option>7일</option>
                                                                     <option>영구정지</option>
                                                                   </select>

                                                                   <br>
                                                               <p class="boldFont">대상 멤버를 활동 정지 하시겠습니까?</p>

                                                               <br>

                                                       </div>

                                                       <div class="modal-footer" >

                                                           <button type="button" class="btn btn-primary mr-0">활동정지</button>
                                                           <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>

                                                       </div>

                                                     </div>

                                                   </div>

                                                 </div>
                                               </div>
                                             </div>

                                            <div style="float:right">
                                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLive">
                                                변경</button>
                                            </div>

                                            <div style="float:right;">

                                              <select class="form-control" id="selectBox1">
                                                <option>정지</option>
                                                <option>일반</option>
                                              </select>

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
    <jsp:include page="../main/footer.jsp"></jsp:include>
    <!-- [ Main Content ] end -->
    
        <!-- footable Js -->
    <script src="plugins/footable/js/footable.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            // [ Foo-table ]
            $('#demo-foo-filtering').footable({
                "paging": {
                    "enabled": true
                },
                "sorting": {
                    "enabled": true
                }
            });
        });
    </script>
</body>

</html>