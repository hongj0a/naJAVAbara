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
</head>
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
    
    int end = now.getActualMaximum(Calendar.DAY_OF_MONTH);    //해당월의 마지막 날짜
    int w = now.get(Calendar.DAY_OF_WEEK);    //1~7(일~토)
%>
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
									    	<div class="col-5">
									            <table width="100%" border="0" cellpadding="1" cellspacing="2">
									                <tr height="30">
									                    <td align="center">
									                        <a href="/book?year=<%=year%>&month=<%=month-1%>&day=<%=day%>">◀</a>
									                        <b><%=year %>年 <%=month %>月</b>
									                        <a href="/book?year=<%=year%>&month=<%=month+1%>&day=<%=day%>">▶</a>
									                    </td>
									                </tr>
									            </table>
									            
									            <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#cccccc">
									                <tr height="25">
									                    <td align="center" bgcolor="#e6e4e6"><font color="red">일</font></td>
									                    <td align="center" bgcolor="#e6e4e6">월</td>
									                    <td align="center" bgcolor="#e6e4e6">화</td>
									                    <td align="center" bgcolor="#e6e4e6">수</td>
									                    <td align="center" bgcolor="#e6e4e6">목</td>
									                    <td align="center" bgcolor="#e6e4e6">금</td>
									                    <td align="center" bgcolor="#e6e4e6"><font color="blue">토</font></td>
									                </tr>
									                <%
									                    int newLine = 0;
									                    //1일이 어느 요일에서 시작하느냐에 따른 빈칸 삽입
									                    out.println("<tr height='25'>");
									                    for(int i=1; i<w; i++)
									                    {
									                        out.println("<td bgcolor='#ffffff'>&nbsp;</td>");
									                        newLine++;
									                    }
									                    
									                    String fc, bg;
									                    for(int i=1; i<=end; i++)
									                    {
									                        
									                        fc = (newLine == 0)?"red":(newLine==6?"blue":"#000000");
									                        bg = "#ffffff";
									                        out.println("<td align='center' bgcolor=" + bg + "><font color=" + fc + ">"
									                        		+ "<a href='/book?year=" + year + "&month=" + month + "&day=" + i + "'>"
									                                + i + "</a></font></td>");
									                        newLine++;
									                        if(newLine == 7 && i != end)
									                        {
									                            out.println("</tr>");
									                            out.println("<tr height='25'>");
									                            newLine = 0;
									                        }
									                    }
									                    
									                    while(newLine>0 && newLine<7)
									                    {
									                        out.println("<td bgcolor='ffffff'>&nbsp;</td>");
									                        newLine++;    
									                    }
									                    out.println("</tr>");
									                %>
									            </table>
								            </div>
								            <div class="col-7">
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

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- [ Main Content ] end -->
    <!-- highchart chart -->
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="js/cheyeon_member/accountBook.js"></script>
</body>
</html>