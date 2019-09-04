<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA</title>
	<meta charset="utf-8">
	<jsp:include page="../main/header.jsp"></jsp:include>
    <!-- append css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main/noti.css">

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
							<div class="row">
							    <div class="col-2" id="noti_menu">
									<div><a> 전체보기 </a></div>
									<div><a> 가계부 </a></div>
									<div><a> 게시판 </a></div>
									<!-- <div><a> Q&A </a></div> -->
							    </div>
							    <div class="col-8">
				                    <div class="card">
				                        <div class="card-header">
				                            <h5>알림</h5>
				                        </div>
				                        <div class="card-body">
				                        
										<c:choose>
											<c:when test="${empty hmlist}">
			                            		<div> 7일동안 새로운 알림이 없습니다. </div>
											</c:when>
											<c:otherwise>
					                            <c:forEach items="${dateList}" var="dati">
						                        	<div class="noti_lists">
						                        	<h6> ${dati} </h6>
						                        	<hr/>													
						                            <c:forEach items="${hmlist}" var="noti">
						                            	<c:if test="${dati eq noti.MMDD}">
													        <div class="card noti_list">
													            <div class="card-body2 card-body">
													            	<div class="noti_head">
													            		<span>
													            			<a href="#!">[${noti.C_horsehead}] ${noti.N_subject}</a>
													            		</span>
													            		<span><a href="/noti/update.do?N_seq=${noti.N_seq}"><i class="feather icon-x"></i></a></span>
													            	</div>
													            	
													                <div class="noti_body">
													                	<span>
													                		<a href="#!">${noti.N_content} </a>
													                	</span>
													                </div>
													                
													                <div class="noti_foot">
													                	<span> ${noti.N_date} </span>
													                </div>
													            </div>
													        </div>
												        </c:if>				                            
						                            </c:forEach>
				                        			</div>
					                            </c:forEach>													
											</c:otherwise>
										</c:choose>
						
				                        </div>				                        
				                        </div>
				                    </div>							    
							    </div>
							    
<!-- 							    <div class="col-2 noti_gotop">
							   		<button type="button" class="btn btn-icon btn-rounded btn-info" id="noti_gotop_btn"><i class="feather icon-chevrons-up"></i></button>
							    </div> -->							    
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
</body>
</html>