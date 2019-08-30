<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>NAJAVABARA</title>
	<meta charset="utf-8">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/asset-condition.css">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/material/css/materialdesignicons.min.css">
</head>

<body class="layout-8">
	<jsp:include page="../main/header.jsp"></jsp:include>
	<!-- [ Main Content ] start -->
	<div class="pcoded-main-container">
		<div class="pcoded-wrapper">
			<div class="pcoded-content">
				<div class="pcoded-inner-content">

					<!-- [ breadcrumb ] start -->
					<div class="page-header"></div>
					<!-- [ breadcrumb ] end -->

					<div class="main-body">
						<div class="page-wrapper">

							<!-- [ Main Content ] start -->
							<div class="row">
								<div class="col-sm-12">
									<h3 class="mb-5 text-center">홍길동 님의 자산현황 및 통계</h3>
									<h6 class="mb-3 text-right">
										오늘은 <span class="font-weight-bold"><span class="today_yy"></span>년 <span class="today_mm"></span>월 <span class="today_dd"></span>일 <span class="today_dy"></span>요일</span> 입니다.
									</h6>
									<div id="my-statistics" role="tablist"
										aria-multiselectable="true">
										<div class="card my-statistics">
											<div class="card-header" role="tab" id="ch1">
												<a data-toggle="collapse" href="#collapseOne"
													aria-expanded="true" aria-controls="collapseOne">
													<h5>수입 및 지출 통계</h5>
													<div class="i-block float-sm-right collapse-arrow">
														<i class="fas"></i>
													</div>
												</a>
											</div>
											<div id="collapseOne" class="collapse show" role="tabpanel"
												data-parent="#my-statistics" aria-labelledby="ch1">
												<div class="card-block">
													<div class="float-sm-right">
														<ul class="nav nav-pills asset" id="tab1" role="tablist">
															<li class="nav-item"><a class="nav-link active"
																id="tab1-month" data-toggle="pill"
																href="#pills1-month" role="tab" aria-controls="pills1-month"
																aria-selected="true">월별</a></li>
															<li class="nav-item"><a class="nav-link"
																id="tab1-week" data-toggle="pill"
																href="#pills1-week" role="tab"
																aria-controls="pills1-week" aria-selected="false">주별</a>
															</li>
															<li class="nav-item"><a class="nav-link"
																id="tab1-year" data-toggle="pill"
																href="#pills1-year" role="tab"
																aria-controls="pills1-year" aria-selected="false">연별</a>
															</li>
															<li class="nav-item"><a class="nav-link"
																id="tab1-day" data-toggle="pill"
																href="#pills1-day" role="tab" aria-controls="pills1-day"
																aria-selected="false">요일별</a></li>
														</ul>
													</div>
													<div class="tab-content" id="asset-tab1">
														<div class="tab-pane fade show active" id="pills1-month"
															role="tabpanel" aria-labelledby="tab1-month">
															<div class="stats_sub"> 월별 <span class="money_in">수입</span> 및 <span class="money_out">지출</span> 통계  </div>
															<div id="tab1-chart1" class="lineAreaDashboard"></div>
														</div>
														<div class="tab-pane fade" id="pills1-week"
															role="tabpanel" aria-labelledby="tab1-week">
															<div class="stats_sub"> 주별 <span class="money_in">수입</span> 및 <span class="money_out">지출</span> 통계  </div>
															<div id="tab1-chart2" class="lineAreaDashboard"></div>
														</div>
														<div class="tab-pane fade" id="pills1-year"
															role="tabpanel" aria-labelledby="tab1-year">
															<div class="stats_sub"> 10 년간 <span class="money_in">수입</span> 및 <span class="money_out">지출</span> 통계  </div>
															<div id="tab1-chart3" class="lineAreaDashboard"></div>
														</div>
														<div class="tab-pane fade" id="pills1-day" role="tabpanel"
															aria-labelledby="pills1-day">
															<div class="stats_sub"> <span class="today_mm"></span>월 요일별 <span class="money_in">수입</span> 및 <span class="money_out">지출</span> 통계  </div>
															<div id="tab1-chart4" class="lineAreaDashboard"></div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="card my-statistics">
											<div class="card-header" role="tab" id="ch2">
												<a class="collapsed" data-toggle="collapse"
													href="#collapseTwo" aria-expanded="false"
													aria-controls="collapseTwo">
													<h5>지출 분류별 통계</h5>
													<div class="i-block float-sm-right collapse-arrow">
														<i class="fas"></i>
													</div>
												</a>
											</div>
											<div id="collapseTwo" class="collapse" role="tabpanel"
												data-parent="#my-statistics" aria-labelledby="ch2">
												<div class="card-block">
													<div class="float-sm-right">
														<ul class="nav nav-pills asset" id="tab2" role="tablist">
															<li class="nav-item"><a class="nav-link active"
																id="tab2-month" data-toggle="pill"
																href="#pills2-month" role="tab" aria-controls="pills2-month"
																aria-selected="true">월별</a></li>
															<li class="nav-item"><a class="nav-link"
																id="tab2-week" data-toggle="pill"
																href="#pills2-week" role="tab"
																aria-controls="pills2-week" aria-selected="false">주별</a>
															</li>
															<li class="nav-item"><a class="nav-link"
																id="tab2-year" data-toggle="pill"
																href="#pills2-year" role="tab"
																aria-controls="pills2-year" aria-selected="false">연별</a>
															</li>
														</ul>
													</div>
													<div class="tab-content" id="asset-tab2">
														<div class="tab-pane fade show active tab2" style="margin:0 auto;" id="pills2-month"
															role="tabpanel" aria-labelledby="tab2-month">
															<div class="stats_sub"> 월별 <span class="money_out">지출</span> 분류별 통계  </div>
															<div id="tab2-chart1"></div>
														</div>
														<div class="tab-pane fade" id="pills2-week"
															role="tabpanel" aria-labelledby="tab2-week">
															<div class="stats_sub"> 주별 <span class="money_out">지출</span> 분류별 통계  </div>
															<div id="tab2-chart2" class="tab2"></div>
														</div>
														<div class="tab-pane fade" id="pills2-year"
															role="tabpanel" aria-labelledby="tab2-year">
															<div class="stats_sub"> 10 년간 <span class="money_out">지출</span> 분류별 통계  </div>
															<div id="tab2-chart3" class="tab2"></div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="card my-statistics">
											<div class="card-header" role="tab" id="ch3">
												<a class="collapsed" data-toggle="collapse"
													href="#collapseThree" aria-expanded="false"
													aria-controls="collapseThree">
													<h5>나의 자산 현황</h5>
													<div class="i-block float-sm-right collapse-arrow">
														<i class="fas"></i>
													</div>
												</a>
											</div>
											<div id="collapseThree" class="collapse" role="tabpanel"
												data-parent="#my-statistics" aria-labelledby="ch3">
												<div class="card-block tab2">
													<div class="text-center">
														<h4 class="mb-3"><span class="today_yy"></span>년 <span class="today_mm"></span>월 <span class="today_dd"></span>일</h4>
														<h6 class="mb-5">홍길동 님, 하루에 <span class="">@@@@</span>원을 사용하시는 것을 권장 드려요.</h6>
													</div>
													<div class="row">
														<div class="col-sm-6">
															<h5 class="mb-3 text-center">자산</h5>
															<div id="chart-statistics1" class="chart-statistics"></div>
															<div class="pt-2 pb-2">
																<span class="mr-3"><i
																	class="feather icon-circle text-c-green  mr-2"></i>page
																	Views</span> <span class="float-right">15.5 %</span>
															</div>
															<div class="pt-2 pb-2">
																<span class="mr-3"><i
																	class="feather icon-circle text-c-blue  mr-2"></i>page
																	Clicks</span> <span class="float-right">23.5 %</span>
															</div>
															<div class="pt-2">
																<span class="mr-3"><i
																	class="feather icon-circle text-c-purple  mr-2"></i>page
																	Likes</span> <span class="float-right">36.3 %</span>
															</div>
														</div>
														<div class="col-sm-6">
															<h5 class="mb-3 text-center">예산</h5>
															<div id="chart-statistics2" class="chart-statistics"></div>
															<div class="pt-2 pb-2">
																<span class="mr-3"><i
																	class="feather icon-circle text-c-gray  mr-2"></i>이번 달 지출</span> <span
																	class="float-right thisMonth_out"></span>
															</div>
															<div class="pt-2 pb-2">
																<span class="mr-3"><i
																	class="feather icon-circle text-c-green  mr-2"></i>남은
																	예산</span> <span class="float-right">56,000 원</span>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="card my-statistics">
											<div class="card-header" role="tab" id="ch4">
												<a class="collapsed" data-toggle="collapse"
													href="#collapseFour" aria-expanded="false"
													aria-controls="collapseFour">
													<h5>자산별 지출현황</h5>
													<div class="i-block float-sm-right collapse-arrow">
														<i class="fas"></i>
													</div>
												</a>
											</div>
											<div id="collapseFour" class="collapse" role="tabpanel"
												data-parent="#my-statistics" aria-labelledby="ch4">
												<div class="card-block tab2">
													<div id="tab4-chart"></div>
													<div class="row">
														<div class="col-sm-6">
															<div class="card inner-card">
																<div class="card-header">
																	<h5>지출 금액 Top3</h5>
																</div>
																<div class="card-body">
																	<div class="row">
																		<div class="col-sm-2 col-form-label">
																			<i class="mdi mdi-numeric-1-box"></i>
																		</div>
																		<div class="col col-form-label">월세</div>
																		<div class="col-sm-2 col-form-label">1건</div>
																		<div class="col-sm-3 col-form-label text-right">300,000원</div>
																	</div>
																	<div class="row">
																		<div class="col-sm-2 col-form-label">
																			<i class="mdi mdi-numeric-2-box"></i>
																		</div>
																		<div class="col col-form-label">피슈마라홍탕</div>
																		<div class="col-sm-2 col-form-label">5건</div>
																		<div class="col-sm-3 col-form-label text-right">96,530원</div>
																	</div>
																	<div class="row">
																		<div class="col-sm-2 col-form-label">
																			<i class="mdi mdi-numeric-3-box"></i>
																		</div>
																		<div class="col col-form-label">올리브영</div>
																		<div class="col-sm-2 col-form-label">2건</div>
																		<div class="col-sm-3 col-form-label text-right">57,000원</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="col">
															<div class="card inner-card">
																<div class="card-header">
																	<h5>지출 분류별 건수 Top3</h5>
																</div>
																<div class="card-body">
																	<div class="row">
																		<div class="col-sm-2 col-form-label">
																			<i class="mdi mdi-numeric-1-box"></i>
																		</div>
																		<div class="col col-form-label">피슈마라홍탕</div>
																		<div class="col-sm-2 col-form-label">5건</div>
																		<div class="col-sm-3 col-form-label text-right">96,530원</div>
																	</div>
																	<div class="row">
																		<div class="col-sm-2 col-form-label">
																			<i class="mdi mdi-numeric-2-box"></i>
																		</div>
																		<div class="col col-form-label">올리브영</div>
																		<div class="col-sm-2 col-form-label">2건</div>
																		<div class="col-sm-3 col-form-label text-right">57,000원</div>
																	</div>
																	<div class="row">
																		<div class="col-sm-2 col-form-label">
																			<i class="mdi mdi-numeric-3-box"></i>
																		</div>
																		<div class="col col-form-label">월세</div>
																		<div class="col-sm-2 col-form-label">1건</div>
																		<div class="col-sm-3 col-form-label text-right">300,000원</div>
																	</div>
																</div>
															</div>
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
			</div>
		</div>
	</div>
	<jsp:include page="../main/footer.jsp"></jsp:include>
	<!-- [ Main Content ] end -->

	<!-- chart -->
	<script src="${pageContext.request.contextPath}/plugins/chart-highchart/js/highcharts.js"></script>
	<script src="http://code.highcharts.com/highcharts-more.js"></script>
	<script src="https://code.highcharts.com/modules/solid-gauge.js"></script>
	
	<script src="${pageContext.request.contextPath}/plugins/chart-am4/js/core.js"></script>
	<script src="${pageContext.request.contextPath}/plugins/chart-am4/js/charts.js"></script>
	<script src="${pageContext.request.contextPath}/plugins/amchart/js/amcharts.js"></script>
	<script src="${pageContext.request.contextPath}/plugins/amchart/js/serial.js"></script>
	<script src="${pageContext.request.contextPath}/plugins/amchart/js/pie.min.js"></script>
	
	<script src="${pageContext.request.contextPath}/js/member/asset-condition.js"></script>
	<script>
	   	//메뉴
		$("#menu1").addClass('active');
		$("#menu1").addClass('pcoded-trigger');
		$("#menu1_3").addClass('active');		
	</script>
</body>

</html>