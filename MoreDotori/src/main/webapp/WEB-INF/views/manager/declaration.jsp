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
   <jsp:include page="../main/header3.jsp"></jsp:include>
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
                                      <input type="search" class="form-control form-control-sm" placeholder="Search here..." aria-controls="zero-configuration">
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
                                <ul class="nav nav-pills" id="pills-tab" role="tablist">
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
                                        <table id="zero-configuration" class="display table nowrap" style="width:100%">
                                          <thead>
                                            <tr>
                                              <th>번호</th>
                                              <th>신고대상</th>
                                              <th>신고게시물</th>
                                              <th>신고횟수</th>
                                              <th>이력보기</th>
                                             <th>정지하기</th>
                                            </tr>
                                          </thead>
                                            <tbody>


                                              <tr>
                                                <td>2</td>
                                                <td>정준영</td>
                                                <td class="layout"><a href="" class="linkColor">[PR-12] 신촌역앞에 피슈마라홍탕이 끝내줘요 !!! 너무맛있어요!!!</a></td>
                                                <td>3</td>
                                                
                                                <td>
                                                
                                                     <span class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg">
                                                     	<i class="feather icon-zoom-in"></i>
                                                     </span>
			                                                  <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
	                                                	        <div class="modal-dialog modal-lg">
                                                    	         <div class="modal-content">
                                                        	        <div class="modal-header">
                                                            	       <h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                            	         <span class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></span>
                                 			                            </div>
                                                	         <div class="modal-body space">
                                                              <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>1 </td>
          					                                              <td>김형우</td>
          					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>2 </td>
          					                                              <td>김잉크</td>
          					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>3 </td>
          					                                              <td>윤모카</td>
          					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>4 </td>
          					                                              <td>김채욘</td>
          					                                              <td>[기타]다마고치를 안한대요..</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>5 </td>
          					                                              <td>기미니</td>
          					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                          </table>
          	                                                        </div>
          	                                                    </div>
          	                                                </div>
          	                                            </div>
                                                      </td>
                                                      
                                                      
                                                      
                                                      <td>
                                            <span data-toggle="modal" data-target="#exampleModalLive" style="cursor:pointer;"><span class="badge badge-danger">정지</span></span>
                                                
                                                </td>
                                                    </tr>
                                                 
          
                                                              <tr>
                                                                <td>3</td>
                                                                <td>로이킴</td>
                                                                <td class="layout">[일반-12] 점심뭐먹지?</td>
                                                                <td>3</td>
                                                                <td>
                                                                
                                                                 <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="feather icon-zoom-in"></i></button>
                      			                                        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
                      	                                                	<div class="modal-dialog modal-lg">
                                                                          	<div class="modal-content">
                                                                              	<div class="modal-header">
                                                                                  	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                                  	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                             			             </div>
                                                                              	<div class="modal-body space">
                                                                                  <table class="report_detail_table">
                                  				                                            <tr>
                                  				                                              <th class="head">신고번호</th>
                                  				                                              <th class="head">신고자</th>
                                  				                                              <th class="head">신고사유</th>
                                  				                                              <th class="head">신고일</th>
                                  				                                            </tr>
                                  				                                            <tr class="thickness">
                                  				                                              <td>1 </td>
                                  				                                              <td>김형우</td>
                                  				                                              <td>[기타]나의 기분을 안좋게 하였음</td>
                                  				                                              <td>2019.07.16</td>
                                  				                                            </tr>
                                  				                                            <tr class="thickness">
                                  				                                              <td>2 </td>
                                  				                                              <td>김잉크</td>
                                  				                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
                                  				                                              <td>2019.07.16</td>
                                  				                                            </tr>
                                  				                                             <tr class="thickness">
                                  				                                              <td>3 </td>
                                  				                                              <td>윤모카</td>
                                  				                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
                                  				                                              <td>2019.07.16</td>
                                  				                                            </tr>
                                  				                                             <tr class="thickness">
                                  				                                              <td>4 </td>
                                  				                                              <td>김채욘</td>
                                  				                                              <td>[기타]다마고치를 안한대요..</td>
                                  				                                              <td>2019.07.16</td>
                                  				                                            </tr>
                                  				                                            <tr class="thickness">
                                  				                                              <td>5 </td>
                                  				                                              <td>기미니</td>
                                  				                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
                                  				                                              <td>2019.07.16</td>
                                  				                                            </tr>
                                                                                      
                              					                                          </table>
                      	                                                        </div>
                      	                                                    </div>
                      	                                                </div>
                      	                                            </div>
                      	                                            </td>
                      	                                                  
                                                      
                                                      <td>
                                            <span data-toggle="modal" data-target="#exampleModalLive" style="cursor:pointer;"><span class="badge badge-danger">정지</span></span>
                                                
                                                </td>
                                                                  
                                                                </tr>
                                                              
                                                                    <tr>
                                                                      <td>4</td>
                                                                      <td>에디킴</td>
                                                                      <td class="layout">[자유-12] 홍대불닭발 우리빼고가니깐 좋냐!</td>
                                                                      <td>3</td>
                                                                      <td>
                                                                                                          
                                                                       <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="feather icon-zoom-in"></i></button>
                      			                                        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
                      	                                                	<div class="modal-dialog modal-lg">
                                                                          	<div class="modal-content">
                                                                              	<div class="modal-header">
                                                                                  	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                                  	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                             			             </div>
                                                                              	<div class="modal-body space">
                                                                                    <table class="report_detail_table">
                      					                                            <tr>
                      					                                              <th class="head">신고번호</th>
                      					                                              <th class="head">신고자</th>
                      					                                              <th class="head">신고사유</th>
                      					                                              <th class="head">신고일</th>
                      					                                            </tr>
                      					                                            <tr class="thickness">
                      					                                              <td>1 </td>
                      					                                              <td>김형우</td>
                      					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
                      					                                              <td>2019.07.16</td>
                      					                                            </tr>
                      					                                            <tr class="thickness">
                      					                                              <td>2 </td>
                      					                                              <td>김잉크</td>
                      					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
                      					                                              <td>2019.07.16</td>
                      					                                            </tr>
                      					                                             <tr class="thickness">
                      					                                              <td>3 </td>
                      					                                              <td>윤모카</td>
                      					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
                      					                                              <td>2019.07.16</td>
                      					                                            </tr>
                      					                                             <tr class="thickness">
                      					                                              <td>4 </td>
                      					                                              <td>김채욘</td>
                      					                                              <td>[기타]다마고치를 안한대요..</td>
                      					                                              <td>2019.07.16</td>
                      					                                            </tr>
                      					                                            <tr class="thickness">
                      					                                              <td>5 </td>
                      					                                              <td>기미니</td>
                      					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
                      					                                              <td>2019.07.16</td>
                  					                                                </tr>
    					                                                         </table>
            	                                                        </div>
            	                                                    </div>
            	                                                </div>
            	                                            </div>
                                                        </td>
                                                                    
                                                      
                                                      <td>
                                            <span data-toggle="modal" data-target="#exampleModalLive" style="cursor:pointer;"><span class="badge badge-danger">정지</span></span>
                                                
                                                </td>
                                                      
                                                      <td>
                                            <span data-toggle="modal" data-target="#exampleModalLive" style="cursor:pointer;"><span class="badge badge-danger">정지</span></span>
                                                
                                                </td>
                                                      </tr>
                                                      
                                                            <tr>
                                                              <td>5</td>
                                                              <td>안재욱</td>
                                                              <td class="layout">[자유-12] 뒤끝 오짐~~</td>
                                                              <td>4</td>
                                                              <td>
                                                
                                                                   <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="feather icon-zoom-in"></i></button>
                  			                                        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
                  	                                                	<div class="modal-dialog modal-lg">
                                                                      	<div class="modal-content">
                                                                          	<div class="modal-header">
                                                                              	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                              	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                         			             </div>
                                                                          	<div class="modal-body space">
                                                                                <table class="report_detail_table">
                  					                                            <tr>
                  					                                              <th class="head">신고번호</th>
                  					                                              <th class="head">신고자</th>
                  					                                              <th class="head">신고사유</th>
                  					                                              <th class="head">신고일</th>
                  					                                            </tr>
                  					                                            <tr class="thickness">
                  					                                              <td>1 </td>
                  					                                              <td>김형우</td>
                  					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
                  					                                              <td>2019.07.16</td>
                  					                                            </tr>
                  					                                            <tr class="thickness">
                  					                                              <td>2 </td>
                  					                                              <td>김잉크</td>
                  					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
                  					                                              <td>2019.07.16</td>
                  					                                            </tr>
                  					                                             <tr class="thickness">
                  					                                              <td>3 </td>
                  					                                              <td>윤모카</td>
                  					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
                  					                                              <td>2019.07.16</td>
                  					                                            </tr>
                  					                                             <tr class="thickness">
                  					                                              <td>4 </td>
                  					                                              <td>김채욘</td>
                  					                                              <td>[기타]다마고치를 안한대요..</td>
                  					                                              <td>2019.07.16</td>
                  					                                            </tr>
                  					                                            <tr class="thickness">
                  					                                              <td>5 </td>
                  					                                              <td>기미니</td>
                  					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
                  					                                              <td>2019.07.16</td>
                  					                                            </tr>
                  					                                          </table>
          	                                                        </div>
          	                                                    </div>
          	                                                </div>
          	                                            </div>
                                                    </td>
                                                          
                                                      
                                                      <td>
                                            <span data-toggle="modal" data-target="#exampleModalLive" style="cursor:pointer;"><span class="badge badge-danger">정지</span></span>
                                                
                                                </td>
                                                  </tr>
                                              <tr>
                                                
                                                  <td>6</td>
                                                  <td>안재욱</td>
                                                  <td class="layout">[자유-12]비 싫</td>
                                                  <td>4</td>
                                                  <td>
                                                            
                                                           <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="feather icon-zoom-in"></i></button>
          			                                        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
          	                                                	<div class="modal-dialog modal-lg">
                                                              	<div class="modal-content">
                                                                  	<div class="modal-header">
                                                                      	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                 			             </div>
                                                                  	<div class="modal-body space">
                                                                        <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>1 </td>
          					                                              <td>김형우</td>
          					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>2 </td>
          					                                              <td>김잉크</td>
          					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>3 </td>
          					                                              <td>윤모카</td>
          					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>4 </td>
          					                                              <td>김채욘</td>
          					                                              <td>[기타]다마고치를 안한대요..</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>5 </td>
          					                                              <td>기미니</td>
          					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                              
                                                </td>
                                                      
                                                      
                                                      <td>
                                            <span data-toggle="modal" data-target="#exampleModalLive" style="cursor:pointer;"><span class="badge badge-danger">정지</span></span>
                                                
                                                </td>
                                              </tr>
                                              <tr>
                                                <td>7</td>
                                                <td>안재욱</td>
                                                <td class="layout">[자유-12] 고양이키우시는분 !</td>
                                                <td>4</td>
                                                <td>
                                                
                                                           <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="feather icon-zoom-in"></i></button>
          			                                        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
          	                                                	<div class="modal-dialog modal-lg">
                                                              	<div class="modal-content">
                                                                  	<div class="modal-header">
                                                                      	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                 			             </div>
                                                                  	<div class="modal-body space">
                                                                        <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>1 </td>
          					                                              <td>김형우</td>
          					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>2 </td>
          					                                              <td>김잉크</td>
          					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>3 </td>
          					                                              <td>윤모카</td>
          					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>4 </td>
          					                                              <td>김채욘</td>
          					                                              <td>[기타]다마고치를 안한대요..</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>5 </td>
          					                                              <td>기미니</td>
          					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                                  </td>
                                                        
                                                      
                                                      <td>
                                            <span data-toggle="modal" data-target="#exampleModalLive" style="cursor:pointer;"><span class="badge badge-danger">정지</span></span>
                                                
                                                </td>
                                                </tr>
                                                <tr>
                                                  <td>8</td>
                                                  <td>안재욱</td>
                                                  <td class="layout">[자유-13] 심심하당</td>
                                                  <td>4</td>
                                                  <td>
                                                        
                                                         <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="feather icon-zoom-in"></i></button>
        			                                        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
        	                                                	<div class="modal-dialog modal-lg">
                                                            	<div class="modal-content">
                                                                	<div class="modal-header">
                                                                    	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                    	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                               			             </div>
                                                                	<div class="modal-body space">
                                                                      <table class="report_detail_table">
        					                                            <tr>
        					                                              <th class="head">신고번호</th>
        					                                              <th class="head">신고자</th>
        					                                              <th class="head">신고사유</th>
        					                                              <th class="head">신고일</th>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>1 </td>
        					                                              <td>김형우</td>
        					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>2 </td>
        					                                              <td>김잉크</td>
        					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                             <tr class="thickness">
        					                                              <td>3 </td>
        					                                              <td>윤모카</td>
        					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                             <tr class="thickness">
        					                                              <td>4 </td>
        					                                              <td>김채욘</td>
        					                                              <td>[기타]다마고치를 안한대요..</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>5 </td>
        					                                              <td>기미니</td>
        					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>

                                              
                                                    </td>
                                                  </tr>
                                                  <tr>
                                                    <td>9</td>
                                                    <td>안재욱</td>
                                                    <td class="layout">[pr-13]웅앵웅</td>
                                                    <td>4</td>
                                                    <td>
                                                
                                                           <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="feather icon-zoom-in"></i></button>
          			                                        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
          	                                                	<div class="modal-dialog modal-lg">
                                                              	<div class="modal-content">
                                                                  	<div class="modal-header">
                                                                      	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                 			             </div>
                                                                  	<div class="modal-body space">
                                                                        <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>1 </td>
          					                                              <td>김형우</td>
          					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>2 </td>
          					                                              <td>김잉크</td>
          					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>3 </td>
          					                                              <td>윤모카</td>
          					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>4 </td>
          					                                              <td>김채욘</td>
          					                                              <td>[기타]다마고치를 안한대요..</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>5 </td>
          					                                              <td>기미니</td>
          					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
                                              </div>
                                          </td>

                                          
                                              </tr>
                                              <tr>
                                                <td>10</td>
                                                <td>정준영</td>
                                           	    <td class="layout">[pr-13]웅앵웅</td>
                                                <td>3</td>
                                                <td>
                                                
                                                           <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="feather icon-zoom-in"></i></button>
          			                                        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
          	                                                	<div class="modal-dialog modal-lg">
                                                              	<div class="modal-content">
                                                                  	<div class="modal-header">
                                                                      	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                 			             </div>
                                                                  	<div class="modal-body space">
                                                                        <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>1 </td>
          					                                              <td>김형우</td>
          					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>2 </td>
          					                                              <td>김잉크</td>
          					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>3 </td>
          					                                              <td>윤모카</td>
          					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>4 </td>
          					                                              <td>김채욘</td>
          					                                              <td>[기타]다마고치를 안한대요..</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>5 </td>
          					                                              <td>기미니</td>
          					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                          </td>
                                          
                                                </tr>
                                                <tr>
                                                  <td>11</td>
                                                  <td>로이킴</td>
                                                  <td class="layout">[pr-13]웅앵웅</td>
                                                  <td>3</td>
                                                  <td>
                                                          
                                                           <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="feather icon-zoom-in"></i></button>
          			                                        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
          	                                                	<div class="modal-dialog modal-lg">
                                                              	<div class="modal-content">
                                                                  	<div class="modal-header">
                                                                      	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                 			             </div>
                                                                  	<div class="modal-body space">
                                                                        <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>1 </td>
          					                                              <td>김형우</td>
          					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>2 </td>
          					                                              <td>김잉크</td>
          					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>3 </td>
          					                                              <td>윤모카</td>
          					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>4 </td>
          					                                              <td>김채욘</td>
          					                                              <td>[기타]다마고치를 안한대요..</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>5 </td>
          					                                              <td>기미니</td>
          					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                            </td>
                                              
                                                </tr>
                                                <tr>
                                                  <td>12</td>
                                                  <td>에디킴</td>
                                                  <td class="layout">[pr-13]웅앵웅</td>
                                                  <td>3</td>
                                                            
                                                          <td>
                                                          
                                                               <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="feather icon-zoom-in"></i></button>
          			                                        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
          	                                                	<div class="modal-dialog modal-lg">
                                                              	<div class="modal-content">
                                                                  	<div class="modal-header">
                                                                      	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                 			             </div>
                                                                  	<div class="modal-body space">
                                                                        <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>1 </td>
          					                                              <td>김형우</td>
          					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>2 </td>
          					                                              <td>김잉크</td>
          					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>3 </td>
          					                                              <td>윤모카</td>
          					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>4 </td>
          					                                              <td>김채욘</td>
          					                                              <td>[기타]다마고치를 안한대요..</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>5 </td>
          					                                              <td>기미니</td>
          					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                            </td>
                                                </tr>
                                                <tr>
                                                  <td>13</td>
                                                  <td>안재욱</td>
                                                  <td class="layout">[pr-13]웅앵웅</td>
                                                  <td>4</td>
                                                  
                                                  <td>
                                                          
                                                               <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="feather icon-zoom-in"></i></button>
          			                                        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
          	                                                	<div class="modal-dialog modal-lg">
                                                              	<div class="modal-content">
                                                                  	<div class="modal-header">
                                                                      	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                 			             </div>
                                                                  	<div class="modal-body space">
                                                                        <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>1 </td>
          					                                              <td>김형우</td>
          					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>2 </td>
          					                                              <td>김잉크</td>
          					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>3 </td>
          					                                              <td>윤모카</td>
          					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>4 </td>
          					                                              <td>김채욘</td>
          					                                              <td>[기타]다마고치를 안한대요..</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>5 </td>
          					                                              <td>기미니</td>
          					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>  
                                          </td>
                                      </tr>
                                              <tr>
                                                <td>14</td>
                                                <td>안재욱</td>
                                                <td class="layout">[pr-13]웅앵웅</td>
                                                <td>4</td>
                                                
                                                <td>
                                                
                                                             <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="feather icon-zoom-in"></i></button>
        			                                        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
        	                                                	<div class="modal-dialog modal-lg">
                                                            	<div class="modal-content">
                                                                	<div class="modal-header">
                                                                    	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                    	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                               			             </div>
                                                                	<div class="modal-body space">
                                                                      <table class="report_detail_table">
        					                                            <tr>
        					                                              <th class="head">신고번호</th>
        					                                              <th class="head">신고자</th>
        					                                              <th class="head">신고사유</th>
        					                                              <th class="head">신고일</th>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>1 </td>
        					                                              <td>김형우</td>
        					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>2 </td>
        					                                              <td>김잉크</td>
        					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                             <tr class="thickness">
        					                                              <td>3 </td>
        					                                              <td>윤모카</td>
        					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                             <tr class="thickness">
        					                                              <td>4 </td>
        					                                              <td>김채욘</td>
        					                                              <td>[기타]다마고치를 안한대요..</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>5 </td>
        					                                              <td>기미니</td>
        					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                          </td>
                                          </tr>
                                                <tr>
                                                  <td>15</td>
                                                  <td>안재욱</td>
                                                  <td class="layout">[pr-13]웅앵웅</td>
                                                  <td>4</td>
                                                  
                                                  <td>
                                                        
                                                             <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="feather icon-zoom-in"></i></button>
        			                                        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
        	                                                	<div class="modal-dialog modal-lg">
                                                            	<div class="modal-content">
                                                                	<div class="modal-header">
                                                                    	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                    	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                               			             </div>
                                                                	<div class="modal-body space">
                                                                      <table class="report_detail_table">
        					                                            <tr>
        					                                              <th class="head">신고번호</th>
        					                                              <th class="head">신고자</th>
        					                                              <th class="head">신고사유</th>
        					                                              <th class="head">신고일</th>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>1 </td>
        					                                              <td>김형우</td>
        					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>2 </td>
        					                                              <td>김잉크</td>
        					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                             <tr class="thickness">
        					                                              <td>3 </td>
        					                                              <td>윤모카</td>
        					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                             <tr class="thickness">
        					                                              <td>4 </td>
        					                                              <td>김채욘</td>
        					                                              <td>[기타]다마고치를 안한대요..</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>5 </td>
        					                                              <td>기미니</td>
        					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                          </td>
                                          </tr>
                                                  <tr>
                                                  <td>16</td>
                                                  <td>안재욱</td>
                                                  <td class="layout">[pr-13]웅앵웅</td>
                                                  <td>4</td>
                                                  
                                                  <td>
                                                          
                                                               <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="feather icon-zoom-in"></i></button>
          			                                        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
          	                                                	<div class="modal-dialog modal-lg">
                                                              	<div class="modal-content">
                                                                  	<div class="modal-header">
                                                                      	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                 			             </div>
                                                                  	<div class="modal-body space">
                                                                        <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>1 </td>
          					                                              <td>김형우</td>
          					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>2 </td>
          					                                              <td>김잉크</td>
          					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>3 </td>
          					                                              <td>윤모카</td>
          					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>4 </td>
          					                                              <td>김채욘</td>
          					                                              <td>[기타]다마고치를 안한대요..</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>5 </td>
          					                                              <td>기미니</td>
          					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                          </td>
                                      </tr>
                                                <tr>
                                                  <td>17</td>
                                                  <td>안재욱</td>
                                                  <td class="layout">[pr-13]웅앵웅</td>
                                                  <td>4</td>
                                                  
                                                  <td>
                                                
                                                               <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="feather icon-zoom-in"></i></button>
          			                                        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
          	                                                	<div class="modal-dialog modal-lg">
                                                              	<div class="modal-content">
                                                                  	<div class="modal-header">
                                                                      	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                 			             </div>
                                                                  	<div class="modal-body space">
                                                                        <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>1 </td>
          					                                              <td>김형우</td>
          					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>2 </td>
          					                                              <td>김잉크</td>
          					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>3 </td>
          					                                              <td>윤모카</td>
          					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>4 </td>
          					                                              <td>김채욘</td>
          					                                              <td>[기타]다마고치를 안한대요..</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>5 </td>
          					                                              <td>기미니</td>
          					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                                
                                          </td>
                                        </tr>
                                      </tbody>
                                  </table>
                                  
                                  
                                                <div id="exampleModalLive" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLiveLabel" style="display: none;" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLiveLabel">확인메세지</h5>
                                                            <span class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></span>
                                                        </div>
                                                        
                                                        
                                                        
                                                        <div class="modal-body">
                                                            <p> <i class="feather icon-alert-circle"></i>&nbsp;&nbsp;정말로 정준영 회원을 정지하시겠습니까?</p>
                                                        </div>
                                                        
                                                        <br>
                                                      
                                                        
                                                        
                                                       <p class="fontSize">[ 활동정지사유 ]</p>
                                                       <br>
                                                        <div class="form-group">
                                                        <div class="radio radio-primary d-inline">
                                                            <input type="radio" name="radio-p-1" id="radio-p-1" checked="">
                                                            <label for="radio-p-1" class="cr">성인/도박 등 불법광고 및 스팸 활동</label>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="radio radio-primary d-inline">
                                                            <input type="radio" name="radio-p-1" id="radio-p-2">
                                                            <label for="radio-p-2" class="cr">바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</label>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="radio radio-primary d-inline">
                                                            <input type="radio" name="radio-p-1" id="radio-p-3">
                                                            <label for="radio-p-3" class="cr">홈페이지 내 자체운영 원칙에 위배되는 활동</label>
                                                        </div>
                                                    </div>
                                                     <div class="form-group">
                                                        <div class="radio radio-primary d-inline">
                                                            <input type="radio" name="radio-p-1" id="radio-p-4">
                                                            <label for="radio-p-4" class="cr">기타</label>
                                                            <input type="text" class="form-control form-control-sm col-sm-11" id="colFormLabelSm" placeholder="기타를 선택한 경우 작성해주세요.">
                                                        </div>
                                                    </div>
                                                        
                                                     <br>                             
                                                        <label for="selectBox" class="fontSize">[ 활동정지기간 ]</label>
                                                     <select class="form-control" id="selectBox1">
                                                       <option>1일</option>
                                                       <option>3일</option>
                                                       <option>7일</option>
                                                       <option>영구정지</option>
                                                     </select>
                                                       
                                                        
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                                            <button type="button" class="btn btn-primary">확인</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                              </div>
                            </div>

                                  <div class="tab-pane fade" id="pills-reply" role="tabpanel" aria-labelledby="pills-reply-tab">
                                    <table id="zero-configuration2" class="table">
                                      <thead>
                                        <tr>
                                          <th>번호</th>
                                          <th>신고대상</th>
                                          <th>신고게시물</th>
                                          <th>신고횟수</th>
                                          <th>이력보기</th>
                                        </tr>
                                      </thead>
                                        <tbody>
                                        <tr>
                                       	  <td>2</td>
                                          <td>지코</td>
                                          <td class="layout">[pr-13]웅앵웅ㅇㅇ앵우앵우앵우애우우앵웅우애웅우앵</td>
                                          <td>3</td>
                                          
                                                    <td>
                                                          
                                                               <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg1"><i class="feather icon-zoom-in"></i></button>
          			                                        <div class="modal fade bd-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
          	                                                	<div class="modal-dialog modal-lg">
                                                              	<div class="modal-content">
                                                                  	<div class="modal-header">
                                                                      	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                 			             </div>
                                                                  	<div class="modal-body space">
                                                                        <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>1 </td>
          					                                              <td>김형우</td>
          					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>2 </td>
          					                                              <td>김잉크</td>
          					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>3 </td>
          					                                              <td>윤모카</td>
          					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>4 </td>
          					                                              <td>김채욘</td>
          					                                              <td>[기타]다마고치를 안한대요..</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>5 </td>
          					                                              <td>기미니</td>
          					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                          </td>
                                        </tr>
				
                                        <tr>
                                          <td>2</td>
                                          <td>송민호</td>
                                          <td class="layout">[pr-13]웅앵웅</td>
                                          <td>3</td>
                                          
                                          <td>
                                                          
                                                               <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg1"><i class="feather icon-zoom-in"></i></button>
          			                                        <div class="modal fade bd-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
          	                                                	<div class="modal-dialog modal-lg">
                                                              	<div class="modal-content">
                                                                  	<div class="modal-header">
                                                                      	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                 			             </div>
                                                                  	<div class="modal-body space">
                                                                        <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>1 </td>
          					                                              <td>김형우</td>
          					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>2 </td>
          					                                              <td>김잉크</td>
          					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>3 </td>
          					                                              <td>윤모카</td>
          					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>4 </td>
          					                                              <td>김채욘</td>
          					                                              <td>[기타]다마고치를 안한대요..</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>5 </td>
          					                                              <td>기미니</td>
          					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                            </td>
                                        </tr>
                                            
                                        <tr>
                                          <td>2</td>
                                          <td>피오</td>
                                          <td class="layout">[pr-13]웅앵웅</td>
                                          <td>3</td>
                                          
                                          <td>
                                                              
                                                                   <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg1"><i class="feather icon-zoom-in"></i></button>
              			                                        <div class="modal fade bd-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
              	                                                	<div class="modal-dialog modal-lg">
                                                                  	<div class="modal-content">
                                                                      	<div class="modal-header">
                                                                          	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                          	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                     			             </div>
                                                                      	<div class="modal-body space">
                                                                            <table class="report_detail_table">
              					                                            <tr>
              					                                              <th class="head">신고번호</th>
              					                                              <th class="head">신고자</th>
              					                                              <th class="head">신고사유</th>
              					                                              <th class="head">신고일</th>
              					                                            </tr>
              					                                            <tr class="thickness">
              					                                              <td>1 </td>
              					                                              <td>김형우</td>
              					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
              					                                              <td>2019.07.16</td>
              					                                            </tr>
              					                                            <tr class="thickness">
              					                                              <td>2 </td>
              					                                              <td>김잉크</td>
              					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
              					                                              <td>2019.07.16</td>
              					                                            </tr>
              					                                             <tr class="thickness">
              					                                              <td>3 </td>
              					                                              <td>윤모카</td>
              					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
              					                                              <td>2019.07.16</td>
              					                                            </tr>
              					                                             <tr class="thickness">
              					                                              <td>4 </td>
              					                                              <td>김채욘</td>
              					                                              <td>[기타]다마고치를 안한대요..</td>
              					                                              <td>2019.07.16</td>
              					                                            </tr>
              					                                            <tr class="thickness">
              					                                              <td>5 </td>
              					                                              <td>기미니</td>
              					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
              					                                              <td>2019.07.16</td>
              					                                            </tr>
					                                                     </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>  
                                            </td>
                                        </tr>
                                        <tr>
                                          <td>2</td>
                                          <td>정준영</td>
                                          <td class="layout">[pr-13]웅앵웅</td>
                                          <td>3</td>
                                          
                                          <td>
                                                
                                                             <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg1"><i class="feather icon-zoom-in"></i></button>
        			                                        <div class="modal fade bd-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
        	                                                	<div class="modal-dialog modal-lg">
                                                            	<div class="modal-content">
                                                                	<div class="modal-header">
                                                                    	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                    	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                               			             </div>
                                                                	<div class="modal-body space">
                                                                      <table class="report_detail_table">
        					                                            <tr>
        					                                              <th class="head">신고번호</th>
        					                                              <th class="head">신고자</th>
        					                                              <th class="head">신고사유</th>
        					                                              <th class="head">신고일</th>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>1 </td>
        					                                              <td>김형우</td>
        					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>2 </td>
        					                                              <td>김잉크</td>
        					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                             <tr class="thickness">
        					                                              <td>3 </td>
        					                                              <td>윤모카</td>
        					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                             <tr class="thickness">
        					                                              <td>4 </td>
        					                                              <td>김채욘</td>
        					                                              <td>[기타]다마고치를 안한대요..</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>5 </td>
        					                                              <td>기미니</td>
        					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                            </td>
                                        </tr>
                                        <tr>
                                          <td>2</td>
                                          <td>로이킴</td>
                                          <td class="layout">[pr-13]웅앵웅</td>
                                          <td>3</td>
                                          
                                          <td>
                                                          
                                                               <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg1"><i class="feather icon-zoom-in"></i></button>
          			                                        <div class="modal fade bd-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
          	                                                	<div class="modal-dialog modal-lg">
                                                              	<div class="modal-content">
                                                                  	<div class="modal-header">
                                                                      	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                 			             </div>
                                                                  	<div class="modal-body space">
                                                                        <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>1 </td>
          					                                              <td>김형우</td>
          					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>2 </td>
          					                                              <td>김잉크</td>
          					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>3 </td>
          					                                              <td>윤모카</td>
          					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>4 </td>
          					                                              <td>김채욘</td>
          					                                              <td>[기타]다마고치를 안한대요..</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>5 </td>
          					                                              <td>기미니</td>
          					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                            </td>
                                        </tr>
                                        <tr>
                                          <td>2</td>
                                          <td>에디킴</td>
                                          <td class="layout">[pr-13]웅앵웅</td>
                                          <td>3</td>
                                          
                                          <td>
                                                
                                                             <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg1"><i class="feather icon-zoom-in"></i></button>
        			                                        <div class="modal fade bd-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
        	                                                	<div class="modal-dialog modal-lg">
                                                            	<div class="modal-content">
                                                                	<div class="modal-header">
                                                                    	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                    	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                               			             </div>
                                                                	<div class="modal-body space">
                                                                      <table class="report_detail_table">
        					                                            <tr>
        					                                              <th class="head">신고번호</th>
        					                                              <th class="head">신고자</th>
        					                                              <th class="head">신고사유</th>
        					                                              <th class="head">신고일</th>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>1 </td>
        					                                              <td>김형우</td>
        					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>2 </td>
        					                                              <td>김잉크</td>
        					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                             <tr class="thickness">
        					                                              <td>3 </td>
        					                                              <td>윤모카</td>
        					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                             <tr class="thickness">
        					                                              <td>4 </td>
        					                                              <td>김채욘</td>
        					                                              <td>[기타]다마고치를 안한대요..</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>5 </td>
        					                                              <td>기미니</td>
        					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                            </td>
                                        </tr>
                                        <tr>
                                          <td>3</td>
                                          <td>안재욱</td>
                                          <td class="layout">[pr-13]웅앵웅</td>
                                          <td>4</td>
                                          
                                          <td>
                                                          
                                                               <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg1"><i class="feather icon-zoom-in"></i></button>
          			                                        <div class="modal fade bd-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
          	                                                	<div class="modal-dialog modal-lg">
                                                              	<div class="modal-content">
                                                                  	<div class="modal-header">
                                                                      	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                 			             </div>
                                                                  	<div class="modal-body space">
                                                                        <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>1 </td>
          					                                              <td>김형우</td>
          					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>2 </td>
          					                                              <td>김잉크</td>
          					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>3 </td>
          					                                              <td>윤모카</td>
          					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>4 </td>
          					                                              <td>김채욘</td>
          					                                              <td>[기타]다마고치를 안한대요..</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>5 </td>
          					                                              <td>기미니</td>
          					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                            </td>
                                        </tr>
                                        <tr>
                                          <td>3</td>
                                          <td>안재욱</td>
                                          <td class="layout">[pr-13]웅앵웅</td>
                                          <td>4</td>
                                          
                                          <td>
                                                          
                                                               <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg1"><i class="feather icon-zoom-in"></i></button>
          			                                        <div class="modal fade bd-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
          	                                                	<div class="modal-dialog modal-lg">
                                                              	<div class="modal-content">
                                                                  	<div class="modal-header">
                                                                      	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                 			             </div>
                                                                  	<div class="modal-body space">
                                                                        <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>1 </td>
          					                                              <td>김형우</td>
          					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>2 </td>
          					                                              <td>김잉크</td>
          					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>3 </td>
          					                                              <td>윤모카</td>
          					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>4 </td>
          					                                              <td>김채욘</td>
          					                                              <td>[기타]다마고치를 안한대요..</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>5 </td>
          					                                              <td>기미니</td>
          					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                            </td>
                                        </tr>
                                        <tr>
                                          <td>3</td>
                                          <td>안재욱</td>
                                          <td class="layout">[pr-13]웅앵웅</td>
                                          <td>4</td>
                                          
                                          <td>
                                                        
                                                             <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg1"><i class="feather icon-zoom-in"></i></button>
        			                                        <div class="modal fade bd-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
        	                                                	<div class="modal-dialog modal-lg">
                                                            	<div class="modal-content">
                                                                	<div class="modal-header">
                                                                    	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                    	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                               			             </div>
                                                                	<div class="modal-body space">
                                                                      <table class="report_detail_table">
        					                                            <tr>
        					                                              <th class="head">신고번호</th>
        					                                              <th class="head">신고자</th>
        					                                              <th class="head">신고사유</th>
        					                                              <th class="head">신고일</th>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>1 </td>
        					                                              <td>김형우</td>
        					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>2 </td>
        					                                              <td>김잉크</td>
        					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                             <tr class="thickness">
        					                                              <td>3 </td>
        					                                              <td>윤모카</td>
        					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                             <tr class="thickness">
        					                                              <td>4 </td>
        					                                              <td>김채욘</td>
        					                                              <td>[기타]다마고치를 안한대요..</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>5 </td>
        					                                              <td>기미니</td>
        					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                            </td>
                                        </tr>
                                        <tr>
                                          <td>3</td>
                                          <td>안재욱</td>
                                          <td class="layout">[pr-13]웅앵웅</td>
                                          <td>4</td>
                                          
                                          <td>
                                                        
                                                             <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg1"><i class="feather icon-zoom-in"></i></button>
        			                                        <div class="modal fade bd-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
        	                                                	<div class="modal-dialog modal-lg">
                                                            	<div class="modal-content">
                                                                	<div class="modal-header">
                                                                    	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                    	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                               			             </div>
                                                                	<div class="modal-body space">
                                                                      <table class="report_detail_table">
        					                                            <tr>
        					                                              <th class="head">신고번호</th>
        					                                              <th class="head">신고자</th>
        					                                              <th class="head">신고사유</th>
        					                                              <th class="head">신고일</th>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>1 </td>
        					                                              <td>김형우</td>
        					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>2 </td>
        					                                              <td>김잉크</td>
        					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                             <tr class="thickness">
        					                                              <td>3 </td>
        					                                              <td>윤모카</td>
        					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                             <tr class="thickness">
        					                                              <td>4 </td>
        					                                              <td>김채욘</td>
        					                                              <td>[기타]다마고치를 안한대요..</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                            <tr class="thickness">
        					                                              <td>5 </td>
        					                                              <td>기미니</td>
        					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
        					                                              <td>2019.07.16</td>
        					                                            </tr>
        					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                            </td>
                                        </tr>
                                        <tr>
                                          <td>3</td>
                                          <td>안재욱</td>
                                          <td class="layout">[pr-13]웅앵웅</td>
                                          <td>4</td>
                                          
                                                    <td>
                                                          
                                                               <button type="button" class="buttonChange" data-toggle="modal" data-target=".bd-example-modal-lg1"><i class="feather icon-zoom-in"></i></button>
          			                                        <div class="modal fade bd-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
          	                                                	<div class="modal-dialog modal-lg">
                                                              	<div class="modal-content">
                                                                  	<div class="modal-header">
                                                                      	<h5 class="modal-title h4" id="myLargeModalLabel">이력보기</h5>
                                                                      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                 			             </div>
                                                                  	<div class="modal-body space">
                                                                        <table class="report_detail_table">
          					                                            <tr>
          					                                              <th class="head">신고번호</th>
          					                                              <th class="head">신고자</th>
          					                                              <th class="head">신고사유</th>
          					                                              <th class="head">신고일</th>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>1 </td>
          					                                              <td>김형우</td>
          					                                              <td>[기타]나의 기분을 안좋게 하였음</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>2 </td>
          					                                              <td>김잉크</td>
          					                                              <td>성인/도박 등 불법광고 및 스팸 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>3 </td>
          					                                              <td>윤모카</td>
          					                                              <td>바람직하지 않은 활동(광고, 도배, 욕설, 비방 등)</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                             <tr class="thickness">
          					                                              <td>4 </td>
          					                                              <td>김채욘</td>
          					                                              <td>[기타]다마고치를 안한대요..</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                            <tr class="thickness">
          					                                              <td>5 </td>
          					                                              <td>기미니</td>
          					                                              <td>홈페이지 내 자체운영 원칙에 위배되는 활동</td>
          					                                              <td>2019.07.16</td>
          					                                            </tr>
          					                                          </table>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                            </td>
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
  <script src="assets/plugins/data-tables/js/datatables.min.js"></script>
  <script src="assets/js/pages/tbl-datatable-custom.js"></script>

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
        
        var html = "";
        html += "<tr class=\"collapse inner_detail\" data-parent=\"#asdf\" id=\"collapse1\">";
        html += "<td class=\"inner_detail_td\" colspan=\"4\" style=\"padding:0px\" >";
        html += "  <table class=\"report_detail_table\">";
        html += "    <tr>";
        html += "      <th>신고번호</th>";
        html += "      <th>신고자</th>";
        html += "      <th>신고사유</th>";
        html += "      <th>신고일</th>";
        html += "    </tr>";
        html += "    <tr>";
        html += "      <td>1 </td>";
        html += "      <td>김형우</td>";
        html += "      <td>나의 기분을 안좋게 하였음</td>";
        html += "      <td>2019.07.16</td>";
        html += "    </tr>";
        html += "    <tr>";
        html += "      <td>2 </td>";
        html += "      <td>김잉크</td>";
        html += "      <td>야동..</td>";
        html += "      <td>2019.07.16</td>";
        html += "    </tr>";
        html += "  </table>";
        html += "</td>";
        html += "<td class=\"tdStyle\"></td>";
        html += "<td class=\"tdStyle\"></td>";
        html += "<td class=\"tdStyle\"></td>";
        html += "</tr>";
        
        $('#aa').off('click').click(function(){
        	console.log('1');
        	$(this).after(html);
        });
    });
    
    
</script>
</body>

</html>