<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
	<meta charset="utf-8">
	<jsp:include page="../main/header.jsp"></jsp:include>
    <!-- append css -->
    <link rel="stylesheet" href="css/cheyeon_member/accountBook.css">
    <link rel="stylesheet" href="css/cheyeon_member/jsCalendar.css">
<%
    request.setCharacterEncoding("utf-8");
    
    Calendar now = Calendar.getInstance();

    int toyear = now.get(Calendar.YEAR);
    int tomonth = now.get(Calendar.MONTH)+1;
    int today = now.get(Calendar.DATE);
    
    int year = toyear;
    int month = tomonth;
    int day = today;
    
    String _year = request.getParameter("year");
    String _month = request.getParameter("month");
    String _day = request.getParameter("day");
    
    if(_year != null)
        year = Integer.parseInt(_year);
    
    if(_month != null)
        month = Integer.parseInt(_month);
    
    if(_day != null)
    	day = Integer.parseInt(_day);
    
    now.set(year, month-1, day);    //출력할 년도, 월로 설정
    
    year = now.get(Calendar.YEAR);    //변화된 년, 월
    month = now.get(Calendar.MONTH) + 1;
    day = now.get(Calendar.DATE);
%>
</head>
<body class="layout-8">
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
                            	<div class="row" id="account_header">
                            		<div class="col">
										한달예산 : 20000원
                            		</div>
                             		<div class="col txt_center">
                             			<div> <%=year %>년 <%=month %>월 <%=day %>일 </div>
                            		</div>
                            		<div class="col txt_right">
                            			월전체내역보기
                            		</div>                            		                           		
                            	</div>
								<div class="row">
								    <div class="col">
								    	<div class="card">
									    <div class="row">
									    	<div class="col-5" id="cal_col">
	                         					<a href='/book2'>
	                         					today : <%=toyear %>/<%=tomonth %>/<%=today %>
	                         					</a>
												<div class="material-theme" id="my-calendar"></div>
								            </div>
								            <div class="col-7 mwidth_350">
												<ul class="nav nav-pills insert_tab" id="pills-tab" role="tablist">
												    <li class="nav-item">
												        <a class="nav-link" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="false">수입</a>
												    </li>
												    <li class="nav-item">
												        <a class="nav-link active" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="true">지출</a>
												    </li>
												    <li class="nav-item">
												        <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">이체</a>
												    </li>
												</ul>
												<div class="tab-content insert_cont" id="pills-tabContent">
												    <div class="tab-pane fade" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
												    </div>
												    <div class="tab-pane fade show active" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">

												    
												    	<table class="insert_form">
												    		<tr>
												    			<td class="form_title">날짜</td>
												    			<td><%=year %>년 <%=month %>월 <%=day %>일</td>
												    		</tr>
												    		<tr class="insert_form_select">
												    			<td class="form_title">자산</td>
												    			<td>
											                        <select>
											                            <option>1</option>
											                            <option>2</option>
											                            <option>3</option>
											                            <option>4</option>
											                            <option>5</option>
											                        </select>												    				
												    			</td>
												    		</tr>
												    		<tr class="insert_form_select">
												    			<td class="form_title">분류</td>
												    			<td>
											                        <select>
											                            <option>1</option>
											                            <option>2</option>
											                            <option>3</option>
											                            <option>4</option>
											                            <option>5</option>
											                        </select>												    				
												    			</td>
												    		</tr>
												    		<tr class="insert_form_txt">
												    			<td class="form_title">금액</td>
												    			<td>
													    			<input type="text" placeholder="000원">
												    			</td>
												    		</tr>
												    		<tr class="insert_form_txtarea">
												    			<td class="form_title">내용</td>
												    			<td>
																	<textarea rows="2"></textarea>												    			
												    			</td>
												    		</tr>
												    	</table>
												    	<table class="insert_form">
												    		<tr class="insert_form_btn">
												    			<td class="wid_50">내용지우기</td>
												    			<td class="wid_50">저장하기</td>
												    		</tr>												    	
												    	</table>									    
												    
												    </div>
												    <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
												    </div>
												</div>
								            </div>					    
									    </div>								    	
								    	</div>
								    </div>
								    <div class="col">
								    	<div class="card">
								    		표표표표표표표표표표표표표표표표표표표표표표표표
								    	</div>
								    </div>
								</div>	                            
								<div class="row">
								    <div class="col-10 card">
								    	<div class="row">
									    	<div class="col-2">
									    		<div class="row">
                                                    <div class="form-group">
                                                    	<div> 수입 </div>
                                                        <div class="checkbox checkbox-fill d-inline">
                                                            <input type="checkbox" name="checkbox-fill-1" id="checkbox-fill-1" checked>
                                                            <label for="checkbox-fill-1" class="cr"> 122,332원 </label>
                                                        </div>
                                                    </div>
									    		</div>
									    		<div class="row">
                                                    <div class="form-group">
                                                    	<div> 지출 </div>
                                                        <div class="checkbox checkbox-fill d-inline">
                                                            <input type="checkbox" name="checkbox-fill-2" id="checkbox-fill-2" checked>
                                                            <label for="checkbox-fill-2" class="cr"> 122,332원 </label>
                                                        </div>
                                                    </div>
									    		</div>
									    		<div class="row">
                                                    <div class="form-group">
                                                    	<div> 그외 </div>
                                                        <div class="checkbox checkbox-fill d-inline">
                                                            <input type="checkbox" name="checkbox-fill-3" id="checkbox-fill-3" checked>
                                                            <label for="checkbox-fill-3" class="cr"> 122,332원 </label>
                                                        </div>
                                                    </div>
									    		</div>									    											    		
									    	</div>
		                                    <div class="col-10">
												<div id="container" style="height: 350px"></div>
		                                    </div>								    	
								    	</div>
								    </div>
								    <div class="col-2">col-2</div>
								</div>							
                            <!-- [ Main Content ] end -->
    <!-- highchart chart -->
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="js/cheyeon_member/accountBook.js"></script>
	<script src="js/cheyeon_member/jsCalendar.js"></script>
    <script language="javascript">
       var calendar = jsCalendar.new("#my-calendar");
       
       <%
       if(toyear!=year||tomonth!=month||today!=day){
    	%>
    		date = new Date('<%=year%>/<%=month%>/<%=day%>');
    		/* console.log('if문 실행됨'); */
    		console.log(jsCalendar.tools.dateToString(date, 'YYYY-MM-DD', 'en'));
	 	   	calendar.set(date);
       <%
       }
       %>
       
       calendar.onDateClick(function(event, date){
          console.log(jsCalendar.tools.dateToString(date, 'YYYY-MM-DD', 'en'));
          year = jsCalendar.tools.dateToString(date, 'YYYY', 'en');
          month = jsCalendar.tools.dateToString(date, 'MM', 'en');
          day = jsCalendar.tools.dateToString(date, 'DD', 'en');
          
          location.href="/book2?year="+year+"&month="+month+"&day="+day;
       });
    </script>
</body>
</html>