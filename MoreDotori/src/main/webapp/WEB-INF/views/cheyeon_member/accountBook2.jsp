<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
	<meta charset="utf-8">
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
								            <div class="col-7">
												<ul class="nav nav-pills insert_tab" id="pills-tab" role="tablist">
												    <li class="nav-item">
												        <a class="nav-link" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">수입</a>
												    </li>
												    <li class="nav-item">
												        <a class="nav-link active" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">지출</a>
												    </li>
												    <li class="nav-item">
												        <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">이체</a>
												    </li>
												</ul>
												<div class="tab-content insert_cont" id="pills-tabContent">
												    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
												        <p class="mb-0">Consequat occaecat ullamco amet non eiusmod nostrud dolore irure incididunt est duis anim sunt officia. Fugiat velit proident aliquip nisi incididunt nostrud exercitation proident est nisi. Irure magna
												            elit commodo
												            anim ex veniam culpa eiusmod id nostrud sit cupidatat in veniam ad. Eiusmod consequat eu adipisicing minim anim aliquip cupidatat culpa excepteur quis. Occaecat sit eu exercitation irure Lorem incididunt nostrud.
												        </p>
												    </div>
												    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
												        <p class="mb-0">Ad pariatur nostrud pariatur exercitation ipsum ipsum culpa mollit commodo mollit ex. Aute sunt incididunt amet commodo est sint nisi deserunt pariatur do. Aliquip ex eiusmod voluptate exercitation
												            cillum
												            id incididunt
												            elit sunt. Qui minim sit magna Lorem id et dolore velit Lorem amet exercitation duis deserunt. Anim id labore elit adipisicing ut in id occaecat pariatur ut ullamco ea tempor duis.
												        </p>
												    </div>
												    <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
												        <p class="mb-0">Est quis nulla laborum officia ad nisi ex nostrud culpa Lorem excepteur aliquip dolor aliqua irure ex. Nulla ut duis ipsum nisi elit fugiat commodo sunt reprehenderit laborum veniam eu veniam. Eiusmod
												            minim
												            exercitation fugiat irure ex labore incididunt do fugiat commodo aliquip sit id deserunt reprehenderit aliquip nostrud. Amet ex cupidatat excepteur aute veniam incididunt mollit cupidatat esse irure officia elit
												            do
												            ipsum ullamco Lorem. Ullamco ut ad minim do mollit labore ipsum laboris ipsum commodo sunt tempor enim incididunt. Commodo quis sunt dolore aliquip aute tempor irure magna enim minim reprehenderit. Ullamco
												            consectetur
												            culpa veniam sint cillum aliqua incididunt velit ullamco sunt ullamco quis quis commodo voluptate. Mollit nulla nostrud adipisicing aliqua cupidatat aliqua pariatur mollit voluptate voluptate consequat non.</p>
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