<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA::고객센터</title>
	<meta charset="utf-8">
	<!-- append css -->
	<!-- footable css -->
    <link rel="stylesheet" href="css/board/footable.bootstrap.min.css">
    <link rel="stylesheet" href="css/board/footable.standalone.min.css">
	<link rel="stylesheet" href="css/board/style_board.css">
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
                            	<!-- [QnA] start -->
                            	<div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>나의 QnA</h5>
                                            <span class="d-block m-t-5"> <code></code>고객님과 함께하는 모아도토리 고객센터 입니다.</span>
                                        </div>
                                        <div class="card-block">
                                            <table id="demo-foo-filtering" class="table table-striped table-hover">
                                                <thead>
                                                        <tr>
                                                            <th>글번호</th>
                                                            <th>제목</th>
                                                            <th>작성일</th>
                                                            <th>조회</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>21</td>
                                                            <td>[문의유형]이것은 제목인데 길어지면 어쩌죠? </td>
                                                            <td>Otto</td>
                                                            <td>0</td>
                                                        </tr>
                                                        <tr>
                                                            <td>20</td>
                                                            <td>[ 계정 ]이것은 제목인데 길어지면 어쩌죠? </td>
                                                            <td>Otto</td>
                                                            <td>@mdo</td>
                                                        </tr>
                                                        <tr>
                                                            <td>19</td>
                                                            <td>[ 예약 ] 예약문의</td>
                                                            <td>Otto</td>
                                                            <td>@mdo</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>[ 가계부 ] 가계부 질문</td>
                                                            <td>Otto</td>
                                                            <td>@mdo</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>[ 기타 ] 개인문의</td>
                                                            <td>Otto</td>
                                                            <td>@mdo</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>[ 기타 ] 개인문의</td>
                                                            <td>Otto</td>
                                                            <td>@mdo</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>[ 기타 ] 개인문의</td>
                                                            <td>Otto</td>
                                                            <td>@mdo</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>[ 기타 ] 개인문의</td>
                                                            <td>Otto</td>
                                                            <td>@mdo</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>[ 기타 ] 개인문의</td>
                                                            <td>Otto</td>
                                                            <td>@mdo</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>[ 기타 ] 개인문의</td>
                                                            <td>Otto</td>
                                                            <td>@mdo</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>[ 기타 ] 개인문의</td>
                                                            <td>Otto</td>
                                                            <td>@mdo</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>[ 기타 ] 개인문의</td>
                                                            <td>Otto</td>
                                                            <td>@mdo</td>
                                                        </tr>
                                                        
                                                    </tbody>
                                                <div class="float-left mb-3">
                                                    <div class="form-group form-primary mb-0">
                                                        <select name="select" class="form-control form-control-sm">
                                                            <option value="opt1">제목</option>
                                                            <option value="opt2">글쓴이</option>
                                                            <option value="opt3">작성일</option>
                                                            <option value="opt4">글번호</option>
                                                        </select>
                                                        <span class="form-bar"></span>
                                                    </div>
                                                </div>
                                                
                                            <div class="input-group mb-3 float-left input-group2">
                                                <input type="text" class="form-control" placeholder="검색어를 입력하세요">
                                                <div class="input-group-append">
                                                    <button class="btn btn-primary btn-icon" type="button"><i class="fas fa-search"></i></button>
                                                </div>
                                            </div>
                                                <a href="#" class="btn btn-primary float-sm-right">문의하기</a>
                                            </table>
                                        </div>
                                    </div>
                                </div>                               
                                <!-- [QnA] end -->
                                
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
		$("#menu7").addClass('active');
		$("#menu7").addClass('pcoded-trigger');
		$("#menu7_2").addClass('active');
    
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