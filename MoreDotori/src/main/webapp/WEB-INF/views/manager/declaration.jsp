<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
	<meta charset="utf-8">
  <!-- 내가추가함  -->
  <link rel="stylesheet" href="css/report.css">

  <!-- data tables css-->
  <link rel="stylesheet" href="plugins/data-tables/css/datatables.min.css">
  <!-- footable css -->

  <link rel="stylesheet" href="plugins/footable/css/footable.bootstrap.min.css">
  <link rel="stylesheet" href="plugins/footable/css/footable.standalone.min.css">
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
                      <div class="page-header-title">
                        <h5 class="m-b-10">신고내역</h5>
                      </div>
                      <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                        <li class="breadcrumb-item"><a href="#!">관리자페이지</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <!-- [ breadcrumb ] end -->
              <div class="main-body">
                <div class="page-wrapper">
                  <!-- [ Main Content ] start -->
                  <div class= "row">
                    <!-- [ Foo-table ] start -->
                    <div class="col-sm-12">
                      <div class="card">
                        <div class="card-block task-data">
                          <div class="table-responsive form-material">
                            <div id="simpletable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                              <div class="row">
                                <div class="col-sm-3">
                                  <div class="dataTables_length" id="simpletable_length">
                                    <label>신고관리 페이지</label>
                                  </div>
                                </div>
                                <div class="col-sm-9">
                                  <div id="simpletable_filter" class="dataTables_filter col-sm-5 float-sm-right">
                                    <div class="input-group mb-3">
                                      <input type="text" class="form-control add_task_todo" placeholder="Search here...." required>
                                      <div class="input-group-append">
                                        <button class="btn btn-primary btn-icon btn-msg-send" type="button">
                                          <i class="fas fa-search" style="color:white"></i>
                                        </button>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>

                              <div class="card-block">
                                <ul class="nav nav-pills mb-2" id="pills-tab" role="tablist">
                                  <li class="nav-item">
                                    <a class="nav-link show active" id="pills-main-tab" data-toggle="pill"
                                    href="#pills-main" role="tab" aria-controls="pills-main" aria-selected="true">게시글</a>
                                  </li>
                                  <li class="nav-item">
                                    <a class="nav-link show" id="pills-reply-tab" data-toggle="pill"
                                    href="#pills-reply" role="tab" aria-controls="pills-reply" aria-selected="false">댓글</a>
                                  </li>
                                </ul>
                                <div class="tab-content" id="pills-tabContent">
                                  <div class="tab-pane fade active show" id="pills-main" role="tabpanel" aria-labelledby="pills-main-tab">
                                    <div>
                                        <table id="zero-configuration" class="display table nowrap table-hover" style="width:100%">
                                          <thead>
                                            <tr>
                                              <th>번호</th>
                                              <th>신고대상</th>
                                              <th>신고게시물</th>
                                              <th>신고횟수</th>
                                            </tr>
                                          </thead>
                                            <tbody id="asdf">

                                              <tr data-toggle="collapse" href="#collapse1">
                                                <td>1</td>
                                                <td>승리</td>
                                                <td>12</td>
                                                <td>3</td>
                                              </tr>

                                                <tr class="collapse inner_detail" data-parent="#asdf" id="collapse1">
                                                  <td class="inner_detail_td" colspan="4" style="padding:0px" >
                                                    <table class="report_detail_table">
                                                      <tr>
                                                        <th>신고번호</th>
                                                        <th>신고자</th>
                                                        <th>신고사유</th>
                                                        <th>신고일</th>
                                                      </tr>
                                                      <tr>
                                                        <td>1 </td>
                                                        <td>김형우</td>
                                                        <td>나의 기분을 안좋게 하였음</td>
                                                        <td>2019.07.16</td>
                                                      </tr>
                                                      <tr>
                                                        <td>2 </td>
                                                        <td>김잉크</td>
                                                        <td>야동..</td>
                                                        <td>2019.07.16</td>
                                                      </tr>
                                                    </table>
                                                  </td>
                                                  <td class="tdStyle"></td>
                                                  <td class="tdStyle"></td>
                                                  <td class="tdStyle"></td>
                                                </tr>


                                              <tr>
                                                <td>2</td>
                                                <td>정준영</td>
                                                <td>12</td>
                                                <td>3</td>
                                              </tr>
                                              <tr>
                                                <td>3</td>
                                                <td>로이킴</td>
                                                <td>12</td>
                                                <td>3</td>
                                              </tr>
                                              <tr>
                                                <td>4</td>
                                                <td>에디킴</td>
                                                <td>12</td>
                                                <td>3</td>
                                              </tr>
                                              <tr>
                                                <td>5</td>
                                                <td>안재욱</td>
                                                <td>13</td>
                                                <td>4</td>
                                              </tr>
                                              <tr>
                                                <td>6</td>
                                                <td>안재욱</td>
                                                <td>13</td>
                                                <td>4</td>
                                              </tr>
                                              <tr>
                                                <td>7</td>
                                                <td>안재욱</td>
                                                <td>13</td>
                                                <td>4</td>
                                              </tr>
                                              <tr>
                                                <td>8</td>
                                                <td>안재욱</td>
                                                <td>13</td>
                                                <td>4</td>
                                              </tr>
                                              <tr>
                                                <td>9</td>
                                                <td>안재욱</td>
                                                <td>13</td>
                                                <td>4</td>
                                              </tr>
                                              <tr>
                                                <td>10</td>
                                                <td>정준영</td>
                                                <td>12</td>
                                                <td>3</td>
                                              </tr>
                                              <tr>
                                                <td>11</td>
                                                <td>로이킴</td>
                                                <td>12</td>
                                                <td>3</td>
                                              </tr>
                                              <tr>
                                                <td>12</td>
                                                <td>에디킴</td>
                                                <td>12</td>
                                                <td>3</td>
                                              </tr>
                                              <tr>
                                                <td>13</td>
                                                <td>안재욱</td>
                                                <td>13</td>
                                                <td>4</td>
                                              </tr>
                                              <tr>
                                                <td>14</td>
                                                <td>안재욱</td>
                                                <td>13</td>
                                                <td>4</td>
                                              </tr>
                                              <tr>
                                                <td>15</td>
                                                <td>안재욱</td>
                                                <td>13</td>
                                                <td>4</td>
                                              </tr>
                                              <tr>
                                                <td>16</td>
                                                <td>안재욱</td>
                                                <td>13</td>
                                                <td>4</td>
                                              </tr>
                                              <tr>
                                                <td>17</td>
                                                <td>안재욱</td>
                                                <td>13</td>
                                                <td>4</td>
                                              </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                  </div>

                                  <div class="tab-pane fade" id="pills-reply" role="tabpanel" aria-labelledby="pills-reply-tab">
                                    <table id="zero-configuration2" class="table table-hover">
                                      <thead>
                                        <tr>
                                          <td>번호</td>
                                          <td>신고대상</td>
                                          <td>신고게시물</td>
                                          <td>신고횟수</td>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <tr>
                                          <td>2</td>
                                          <td>지코</td>
                                          <td>12</td>
                                          <td>3</td>
                                        </tr>
                                        <tr>
                                          <td>2</td>
                                          <td>송민호</td>
                                          <td>12</td>
                                          <td>3</td>
                                        </tr>
                                        <tr>
                                          <td>2</td>
                                          <td>피오</td>
                                          <td>12</td>
                                          <td>3</td>
                                        </tr>
                                        <tr>
                                          <td>2</td>
                                          <td>정준영</td>
                                          <td>12</td>
                                          <td>3</td>
                                        </tr>
                                        <tr>
                                          <td>2</td>
                                          <td>로이킴</td>
                                          <td>12</td>
                                          <td>3</td>
                                        </tr>
                                        <tr>
                                          <td>2</td>
                                          <td>에디킴</td>
                                          <td>12</td>
                                          <td>3</td>
                                        </tr>
                                        <tr>
                                          <td>3</td>
                                          <td>안재욱</td>
                                          <td>13</td>
                                          <td>4</td>
                                        </tr>
                                        <tr>
                                          <td>3</td>
                                          <td>안재욱</td>
                                          <td>13</td>
                                          <td>4</td>
                                        </tr>
                                        <tr>
                                          <td>3</td>
                                          <td>안재욱</td>
                                          <td>13</td>
                                          <td>4</td>
                                        </tr>
                                        <tr>
                                          <td>3</td>
                                          <td>안재욱</td>
                                          <td>13</td>
                                          <td>4</td>
                                        </tr>
                                        <tr>
                                          <td>3</td>
                                          <td>안재욱</td>
                                          <td>13</td>
                                          <td>4</td>
                                        </tr>
                                      </tbody>
                                    </table>

									</div>	
                                <!-- [ data-table ] end -->
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
        </div>
    </div>
</div>
    <jsp:include page="../main/footer.jsp"></jsp:include>
    <!-- [ Main Content ] end -->
    
    <!-- datatable Js -->
<script src="plugins/data-tables/js/datatables.min.js"></script>

<!-- footable Js -->
<script src="plugins/footable/js/footable.min.js"></script>

<script type="text/javascript">

	$("#menu10").addClass('active');
	$("#menu10").addClass('pcoded-trigger');
	$("#menu10_2").addClass('active');
	
    $(document).ready(function() {
        // [ Foo-table ]
        $('#zero-configuration').footable({
            "paging": {
                "enabled": true
            }
        });

        $('#zero-configuration2').footable({
            "paging": {
                "enabled": true
            }
        });
    });
</script>
</body>

</html>