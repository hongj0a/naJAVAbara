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
                            		</div>
                             		<div class="col txt_center">
                             			<%=year %>년 <%=month %>월 <%=day %>일
                            		</div>
                            		<div class="col txt_right">
                            			월전체내역보기
                            		</div>                            		                           		
                            	</div>
								<div class="row">
								    <div class="col">
								    	<div class="card">
									    <div class="row">
									    	<div class="col">
											  <!-- Calendar Start -->
										      <div class="calendar-section">
										          <div class="calendar">
										            <div class="calendar_header">
										              <button class="switch-month switch-left">
										                <i class="feather icon-chevron-left"></i>
										              </button>
										              <h2></h2>
										              <button class="switch-month switch-right">
										                <i class="feather icon-chevron-right"></i>
										              </button>
										            </div>
										            <div class="calendar_weekdays"></div>
										            <div class="calendar_content"></div>
										          </div>
										      </div>
											  <!-- End Calendar -->
								            </div>
								            <div class="col">
								            	gg
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
    <script>
	    $( document ).ready(function() {
			function c(passed_month, passed_year) {
				var calendar = calendarInfo;
				makeWeek(calendar.weekline);
				calendar.datesBody.empty();
				var calMonthArray = makeMonthArray(passed_month, passed_year);
				var r = 0;
				var u = false;
				while(!u) {
					if(daysArray[r] == calMonthArray[0].weekday) { u = true } 
					else { 
						calendar.datesBody.append('<div class="blank"></div>');
						r++;
					}
				} 
				for(var cell=0;cell<42-r;cell++) { // 42 date-cells in calendar
					if(cell >= calMonthArray.length) {
						calendar.datesBody.append('<div class="blank"></div>');
					} else {
						var shownDate = calMonthArray[cell].day;
						// Later refactiroing -- iter_date not needed after "today" is found
						var iter_date = new Date(passed_year,passed_month,shownDate); 
						if ( 
							(
								( shownDate != today.getDate() && passed_month == today.getMonth() ) 
								|| passed_month != today.getMonth()
							) 
								&& iter_date < today) {						
							var m = '<div class="past-date"><span class="circle">';
						} else {
							var m = checkToday(iter_date)?'<div class="today"><span class="circle">':'<div><span class="circle">';
						}
						calendar.datesBody.append(m + shownDate + "</span></div>");
					}
				}
	
				// var color = o[passed_month];
				calendar.calHeader.find("h2").text(i[passed_month]+" "+passed_year);
							//.css("background-color",color)
							//.find("h2").text(i[passed_month]+" "+year);
	
				// find elements (dates) to be clicked on each time
				// the calendar is generated
				
				//clickedElement = cal.find(".calendar_content").find("div");
				var clicked = false;
	
				clickedElement = calendar.datesBody.find('div');
				clickedElement.on("click", function(){
					clicked = $(this);
					// Understading which element was clicked;
					// var parentClass = $(this).parent().parent().attr('class');
	
					dateClick = true;
					dateClicked = getClickedInfo(clicked, calendar);
					
					/* var dateClickDateObj = new Date(dateClicked.year, 
							dateClicked.month, 
							dateClicked.date); */
					
					//해당 년월일로 이동
					location.href="/book2?year="+dateClicked.year+"&month="+dateClicked.month+"&day="+dateClicked.date;
				});			
	
			}
	
			function makeMonthArray(passed_month, passed_year) { // creates Array specifying dates and weekdays
				var e=[];
				for(var r=1;r<getDaysInMonth(passed_year, passed_month)+1;r++) {
					e.push({day: r,
							// Later refactor -- weekday needed only for first week
							weekday: daysArray[getWeekdayNum(passed_year,passed_month,r)]
						});
				}
				return e;
			}
			function makeWeek(week) {
				week.empty();
				for(var e=0;e<7;e++) { 
					week.append("<div>"+daysArray[e].substring(0,3)+"</div>") 
				}
			}
	
			function getDaysInMonth(currentYear,currentMon) {
				return(new Date(currentYear,currentMon+1,0)).getDate();
			}
			function getWeekdayNum(e,t,n) {
				return(new Date(e,t,n)).getDay();
			}
			function checkToday(e) {
				var todayDate = today.getFullYear()+'/'+(today.getMonth()+1)+'/'+today.getDate();
				var checkingDate = e.getFullYear()+'/'+(e.getMonth()+1)+'/'+e.getDate();
				return todayDate==checkingDate;
	
			}
			function getAdjacentMonth(curr_month, curr_year, direction) {
				var theNextMonth;
				var theNextYear;
				if (direction == "next") {
					theNextMonth = (curr_month + 1) % 12;
					theNextYear = (curr_month == 11) ? curr_year + 1 : curr_year;
				} else {
					theNextMonth = (curr_month == 0) ? 11 : curr_month - 1;
					theNextYear = (curr_month == 0) ? curr_year - 1 : curr_year;
				}
				return [theNextMonth, theNextYear];
			}
			function b() {
				today = new Date;
				year = today.getFullYear();
				month = today.getMonth();
				var nextDates = getAdjacentMonth(month, year, "next");
				nextMonth = nextDates[0];
				nextYear = nextDates[1];
			}
	
			var e=480;
	
			var today;
			var year,
				month,
				nextMonth,
				nextYear;
	
			//var t=2013;
			//var n=9;
			var r = [];
			var i = ["JANUARY","FEBRUARY","MARCH","APRIL","MAY",
					"JUNE","JULY","AUGUST","SEPTEMBER","OCTOBER",
					"NOVEMBER","DECEMBER"];
			var daysArray = ["Sunday","Monday","Tuesday",
							"Wednesday","Thursday","Friday","Saturday"];
			var o = ["#16a085","#1abc9c","#c0392b","#27ae60",
					"#FF6860","#f39c12","#f1c40f","#e67e22",
					"#2ecc71","#e74c3c","#d35400","#2c3e50"];
			
			var cal=$(".calendar");
			var calHeader=cal.find(".calendar_header");
			var weekline=cal.find(".calendar_weekdays");
			var datesBody=cal.find(".calendar_content");
	
			var switchButton = cal.find(".calendar_header").find('.switch-month');
	
			var calendarInfo = {"calHeader": calHeader,
					"weekline": weekline,
					"datesBody": datesBody
			}
			var clickedElement;
			var dateClicked;
			var dateClick = false;
	
			b();
			c(month, year);
			switchButton.on("click",function() {
				var clicked=$(this);
				var generateCalendars = function(e) {
					var nextDatesFirst = getAdjacentMonth(month, year, e);
					var nextDatesSecond = getAdjacentMonth(nextMonth, nextYear, e);
					month = nextDatesFirst[0];
					year = nextDatesFirst[1];
					nextMonth = nextDatesSecond[0];
					nextYear = nextDatesSecond[1];
	
					c(month, year, 0);
					c(nextMonth, nextYear, 1);
				};
				if(clicked.attr("class").indexOf("left")!=-1) { 
					generateCalendars("previous");
				} else { generateCalendars("next"); }
				clickedElement = cal.find(".calendar_content").find("div");
				console.log("checking");
			});
	
	
			//  Click picking stuff
			function getClickedInfo(element, calendar) {
				var clickedInfo = {};
				var clickedMonth,
					clickedYear;
				//console.log(element.parent().parent().attr('class'));
				clickedMonth = month;
				clickedYear = year;
				clickedInfo = {	"date": parseInt(element.text()),
								"month": clickedMonth+1,
								"year": clickedYear}
				console.log(clickedInfo);
				return clickedInfo;
			}
	});    
    </script>
</body>
</html>