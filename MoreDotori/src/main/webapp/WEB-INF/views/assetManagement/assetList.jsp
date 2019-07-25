<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>MoreDotori AssetList</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Datta Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
    <meta name="keywords" content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template">
    <meta name="author" content="Codedthemes" />

    <!-- Favicon icon -->
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <!-- fontawesome icon -->
    <link rel="stylesheet" href="fonts/fontawesome/css/fontawesome-all.min.css">
    <!-- animation css -->
    <link rel="stylesheet" href="plugins/animation/css/animate.min.css">
    <!-- vendor css -->
    <link rel="stylesheet" href="css/style.css">

	<link rel="stylesheet" href="css/assetManagement/assetm.css">

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
                                        <h5>자산목록 관리</h5>
                                    </div>
                                    <div class="find-list" style="weight:60%; float:left;">
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="/"><i class="feather icon-home"></i></a></li>
                                        <li class="breadcrumb-item"><a href="#!">나의 자산</a></li>
                                        <li class="breadcrumb-item"><a href="#!">자산목록 관리</a></li>
                                    </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
		             </div>
					  <div class="reading-list">
                                            <div id="exampleModalLive" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLiveLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div id="contentsize-plus" class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLiveLabel">항목 추가</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        </div>
                                                        <div class="modal-body">
                                                        </br>
                                            			<div class="col-12">
                                            				<span>타입 :  </span>
                                                    		&nbsp;
                                                    		<select class="js-example-basic-single form-control plus-imp">
                                                            	<option value="현금">현금</option>
                                                            	<option value="통장">통장</option>
                                                            	<option value="신용카드">신용카드</option>
                                                            	<option value="체크카드">체크카드</option>
                                                        	</select> 
                                                     		</div>
                                                     	</br>
                                                        <div class="col-12">
                                                     		<span>별칭 :  </span>
                                                     		&nbsp;
                                                        	<input type="address" class="form-control plus-imp">
                                                        </div>
                                                        </br>
                                                        <div class="col-12">
                                                     		<span>잔액 :  </span>
                                                     		&nbsp;
                                                        	<input type="address" class="form-control plus-imp">
                                                        </div>
                                                        </br>
                                                        <div class="col-12">
                                                     		<span>메모 :  </span>
                                                     		&nbsp;
                                                        	<input type="address" class="form-control plus-imp">
                                                        </div>	
                                                        </br>
                                                      </div>
                                                        <div id="plus-size" class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                                            <button type="submit" class="btn btn-primary">저장</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href=#! data-toggle="modal" data-target="#exampleModalLive">+ 항목 추가</a>
                                        </div>
		 			</br></br>
    				<!-- [ breadcrumb ] end -->
    				
                    <div class="main-body">
                        <div class="page-wrapper">
                            <!-- [ Main Content ] start -->
                            <div class="row">
                              <div id="cardsize1" class="card">
                              	 <div class="card-block p-0">
                             		 <div id="sizesize" class="text-center project-main">
	                                   <div class="col-xl-12 col-md-12" id="colxlmd">
										  <div>
												<table>
												  <tr>
												  	<th>분류</th>
												    <th>별칭</th>
												    <th>잔액</th>
												    <th>메모</th>
												    <th>삭제</th>
												  </tr>
												  <tr>
												    <td>현금</td>
												    <td>웅앵웅앵웅</td>
												    <td>10,000원</td>
												    <td>웅앵</td>
												    <td><a href=#!>삭제</a></td>
												  </tr>
												  <tr>
												    <td>통장</td>
												    <td>웅앵웅앵웅</td>
												    <td>100,000원</td>
												  	<td>웅앵</td>
												    <td><a href=#!>삭제</a></td>
												  </tr>
												  <tr>
												    <td>신용카드</td>
												    <td>웅앵웅앵웅</td>
												    <td>230,000원</td>
												    <td>웅앵</td>
												    <td><a href=#!>삭제</a></td>
												  </tr>
												  <tr>
												    <td>체크카드</td>
												 	<td>웅앵웅앵웅</td>
												    <td>5,000,000원</td>
												    <td>웅앵</td>
												    <td><a href=#!>삭제</a></td>
												</tr>
											</table>
                              		   </div>
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
    <jsp:include page="../main/footer.jsp"></jsp:include>
    <!-- [ Main Content ] end -->

    <!-- Required Js -->
    <script src="js/vendor-all.min.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/pcoded.js"></script>
    

    <!-- Todo Js -->
    <script src="plugins/todo/js/todo.js"></script>

</body>
</html>