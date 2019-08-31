<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>NAJAVABARA</title>
<meta charset="utf-8">

<meta name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}"/>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/member.css">
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
							<div class="row justify-content-center text-c-black">
								<div class="card cw-740">
									<div class="card-body">
										<ul class="nav nav-tabs mem-tab" id="account-tab"
											role="tablist">
											<li class="nav-item">
												<a class="nav-link text-uppercase active" id="edit-tab" data-toggle="tab" href="#edit" role="tab" aria-controls="edit" aria-selected="true">회원정보수정</a>
											</li>
											<li class="nav-item">
												<a class="nav-link text-uppercase" id="withdrawal-tab" data-toggle="tab" href="#withdrawal" role="tab" aria-controls="withdrawl" aria-selected="false">회원탈퇴</a>
											</li>
										</ul>
										<div class="tab-content" id="acc-tab-content">
											<div class="tab-pane fade active show" id="edit" role="tabpanel" aria-labelledby="edit-tab">
												<div class="row justify-content-center">
													<form id="account-edit" class="col-sm-11" action="/update.do?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
														<input type="hidden" name="c_member" value="<sec:authentication property="principal.member.c_member"/>">
														<div class="row">
															<div class="col-sm-4">
																<div class="text-center">
																	<label for="choose-image">
																		<sec:authentication property="principal.member.m_profile" var="profile" />
																		<c:choose>
																			<c:when test="${empty profile}">
																				<img class="img-fluid rounded-circle" id="profile-image" src="${pageContext.request.contextPath}/images/user/avatar-3.jpg" alt="dashboard-user">
																			</c:when>
																			<c:otherwise>
																				<img class="img-fluid rounded-circle" id="profile-image" src="${pageContext.request.contextPath}/images/profile-images/${profile}" alt="dashboard-user">
																			</c:otherwise>
																		</c:choose>
																	</label>
																	<div class="custom-file mb-4">
																		<input type="file" class="custom-file-input" name="chooseImg" id="choose-image" accept="image/*">
																		<label class="custom-file-label" for="inputGroupFile01"></label>
																	</div>
																</div>
															</div>
															<div class="col-sm-8">
																<div class="form-group row mb-4">
																	<label class="col-sm-3 col-form-label">아이디</label>
																	<sec:authentication property="principal.member.m_id" var="mid"/>
																	<input type="hidden" name="m_id" value="${mid}">
																	<label class="col-sm-9 col-form-label">${mid}</label>
																</div>
																<div class="form-group row mb-4">
																	<label class="col-sm-3 col-form-label">이름</label>
																	<sec:authentication property="principal.member.m_name" var="mname"/>
																	<input type="hidden" name="m_name" value="${mname}">
																	<label class="col-sm-9 col-form-label">${mname}</label>
																</div>
																<div class="form-group row mb-4">
																	<label class="col-sm-3 col-form-label">닉네임</label>
																	<div class="col-sm-9">
																		<div class="input-group">
																			<input type="text" class="form-control"
																				id="inputNick" name="m_nickname" value="<sec:authentication property="principal.member.m_nickname"/>">
																			<div class="input-group-append">
																				<button class="btn btn-primary" name="nick-dupl-check" type="button">중복확인</button>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="form-group row mb-4">
															<label class="col-sm-3 col-form-label">비밀번호</label>
															<div class="col">
																<button class="btn btn-primary" id="change-pwd-btn" type="button">비밀번호 변경</button>
															</div>
														</div>
														<div class="change-password">
															<div class="form-group row mb-4">
																<label class="col-sm-3 col-form-label">기존 비밀번호</label>
																<div class="col">
																	<input type="password" class="form-control" id="inputPwd" name="password">
																</div>
															</div>
															<div class="form-group row mb-4">
																<label class="col-sm-3 col-form-label">새 비밀번호</label>
																<div class="col">
																	<input type="password" class="form-control" id="inputNewPwd" name="new-password">
																</div>
															</div>
															<div class="form-group row mb-4">
																<label class="col-sm-3 col-form-label">새 비밀번호 확인</label>
																<div class="col">
																	<input type="password" class="form-control" id="inputPwdConfirm" name="new-password-confirm">
																</div>
															</div>
														</div>
														<div class="form-group row mb-4">
															<label class="col-sm-3 col-form-label">연락처</label>
															<div class="col">
																<input type="text" class="form-control" id="inputPhone" name="m_phone" value="<sec:authentication property="principal.member.m_phone"/>">
															</div>
														</div>
														<div class="form-group row mb-4">
															<label class="col-sm-3 col-form-label">성별&nbsp;&nbsp;</label>
															<div class="col col-form-label" id="inputGender">
   																<div class="form-group d-inline">
			                                                        <div class="radio radio-primary d-inline">
			                                                            <input type="radio" name="m_gender" id="genderM" value="M" checked="">
			                                                            <label for="genderM" class="cr">남</label>
			                                                        </div>
			                                                    </div>
			                                                    <div class="form-group d-inline">
			                                                        <div class="radio radio-primary d-inline">
			                                                            <input type="radio" name="m_gender" id="genderF" value="F">
			                                                            <label for="genderF" class="cr">여</label>
			                                                        </div>
			                                                    </div>
															</div>
														</div>
														<div class="form-group row mb-4">
															<sec:authentication property="principal.member.m_birth" var="birth"/>
															<label class="col-sm-3 col-form-label">생년월일</label>
															<div class="col form-inline" id="inputBirth">
																<select class="form-control col-sm-3 mr-1" name="birth" id="birth-year" required>
																</select>
																<label class="col-form-label mr-2">년</label>
																<select class="form-control col-sm-3 mr-1" name="birth" id="birth-month" required>
																</select>
																<label class="col-form-label mr-2">월</label>
																<select class="form-control col-sm-3 mr-1" name="birth" id="birth-day" required>
																</select>
																<label class="col-form-label mr-2">일</label>
															</div>
														</div>
														<sec:authorize access="hasRole('ROLE_EXPERT')" var="isExpert">
															<div id="expert-details">
																<div class="row">
																	<div class="form-group col-sm-4 mb-4">
																		<label for="job" class="col-form-label">직업</label>
																		<input type="text" class="form-control" id="inputJob" name="e_job" required>
																	</div>
																	<div class="form-group col-sm-4">
																		<label for="job" class="col-form-label">직급</label>
																		<input type="text" class="form-control" id="inputPosition" name="e_position" required>
																	</div>
																	<div class="form-group col-sm-4">
																		<label for="job" class="col-form-label">경력</label>
																		<div class="form-inline">
																			<input type="text" class="form-control text-right col-sm-9 mr-1" id="inputCareer" name="career" required>
																			<label for="job" class="col-form-label">년차</label>
																		</div>
																	</div>
																</div>
																<div class="form-group row mb-1">
																	<label class="col-form-label col-sm-3">우편번호</label>
																	<div class="col">
																		<div class="input-group">
																			<input type="text" class="form-control address" id="inputZipCode" name="zipCode" readonly>
																			<div class="input-group-append">
																				<button class="btn btn-primary" name="find-address" type="button">주소찾기</button>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="form-group row mb-1">
																	<label class="col-sm-3 col-form-label"></label>
																	<div class="col">
																		<input type="text" class="form-control address" id="inputAddr" name="address" readonly>
																	</div>
																</div>
																<div class="form-group row mb-4">
																	<label class="col-sm-3 col-form-label"></label>
																	<div class="col">
																		<input type="text" class="form-control" id="inputAddrDetail" name="e_detailaddr" required>
																	</div>
																</div>
																<div class="form-group">
																	<div class="input-group mb-1">
																		<label for="inputLicense1" class="sr-only">자격증1</label>
																		<div class="input-group-prepend">
																			<select name="license" id="ltype1" class="form-control">
																				<option value="">자격증1</option>
																			</select>
																		</div>
																		<input type="text" class="form-control" id="inputLicense1" name="licenseNum" placeholder="자격증 번호" required>
																	</div>
																	<div class="input-group mb-1">
																		<label for="inputLicense2" class="sr-only">자격증2</label>
																		<div class="input-group-prepend">
																			<select name="license" id="ltype2" class="form-control">
																				<option value="">자격증2</option>
																			</select>
																		</div>
																		<input type="text" class="form-control" id="inputLicense2" name="licenseNum" placeholder="자격증 번호">
																	</div>
																	<div class="input-group mb-4">
																		<label for="inputLicense3" class="sr-only">자격증3</label>
																		<div class="input-group-prepend">
																			<select name="license" id="ltype3" class="form-control">
																				<option value="">자격증3</option>
																			</select>
																		</div>
																		<input type="text" class="form-control" id="inputLicense3" name="licenseNum" placeholder="자격증 번호">
																	</div>
																</div>
																<div class="form-group mb-4 inputSNS">
																	<div class="input-group mb-1">
																		<div class="input-group-prepend">
																			<select class="form-control" id="stype1" name="sns">
																				<option value="">SNS</option>
																			</select>
																		</div>
																		<input type="text" class="form-control" id="sn1" name="snsUrl" placeholder="SNS주소">
																		<div class="input-group-append">
																			<button class="btn btn-primary addSNS" type="button">
																				<i class="fas fa-plus"></i>
																			</button>
																		</div>
																	</div>
																</div>
																<div class="form-group mb-4">
																	<textarea class="form-control" rows="8" aria-label="With textarea" name="e_introduce" placeholder="자기소개" required></textarea>
																</div>
															</div>
														</sec:authorize>
														<div class="form-group row justify-content-center">
															<button type="submit" name="save-info-btn" class="btn btn-primary">저장</button>
														</div>
													</form>
												</div>
											</div>
											<div class="tab-pane fade" id="withdrawal" role="tabpanel" aria-labelledby="withdrawal-tab">
												<form id="withdrawal" action="/withdrawal.do" method="post">
													<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
													<div class="input-group mb-4">
														<label class="h5 p-3 m-0">유의사항을 확인 후 탈퇴를 진행해 주세요.</label>
													</div>
													<!-- <p class="p-4 h5">유의사항을 확인 후 탈퇴를 진행해 주세요.</p> -->
													<ul class="fa-ul">
														<li class="mb-3">
															<span class="fa-li"><i class="fas fa-angle-right"></i></span>
															회원 탈퇴 시, 사용하고 계신 아이디(${mid})는 재사용이나 복구가 불가능합니다.</li>
														<li class="mb-3">
															<span class="fa-li"><i class="fas fa-angle-right"></i></span>
															회원님의 모든 개인정보 및 이용정보가 삭제되며, 삭제된 데이터는 복구되지 않습니다.</li>
														<li class="mb-2">
															<span class="fa-li"><i class="fas fa-angle-right"></i></span>
															삭제를 원하는 게시글이 있다면 반드시 회원 탈퇴 전 비공개 처리하거나 삭제하시기 바랍니다.</li>
														<li class="mb-4">
															(탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, 게시글을 임의로 삭제해드릴 수 없습니다.)</li>
													</ul>
													<div class="form-group mb-4 pl-3">
														<div class="checkbox checkbox-primary d-inline">
															<input type="checkbox" id="inputAgree" name="agree" required>
															<label for="inputAgree" class="cr">유의사항을 모두 확인하였으며, 이에 동의합니다.</label>
														</div>
													</div>
													<div id="withdrawalModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="withdrawalModalLabel" aria-hidden="true">
														<div class="modal-dialog modal-dialog-centered" role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title" id="withdrawalModalLabel">회원탈퇴</h5>
																	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">×</span>
																	</button>
																</div>
																<div class="modal-body">
																	<p class="text-center">
																		모아도토리를 정말로 탈퇴하시겠습니까?<br> 탈퇴를 원하신다면 비밀번호를 입력해주세요.
																	</p>
																	<div class="row justify-content-center">
																		<div class="col-sm-7 mb-3">
																			<input type="password" class="form-control" id="pwd-confirm">
																		</div>
																	</div>
																</div>
																<div class="modal-footer justify-content-center">
																	<button type="submit" onclick="checkPassword()" class="btn btn-primary">탈퇴하기</button>
																</div>
															</div>
														</div>
													</div>
													<div class="form-group row justify-content-center">
														<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#withdrawalModal">회원탈퇴</button>
													</div>
												</form>
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
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		$(function () {
		  var token = $("meta[name='_csrf']").attr("content");
		  var header = $("meta[name='_csrf_header']").attr("content");
		  $(document).ajaxSend(function(e, xhr, options) {
		    xhr.setRequestHeader(header, token);
		  });
		});
		
		function insertSform() {
			var cntSNS = $('select[name="sns"]').length;
			if(cntSNS<5) {
				$('.inputSNS').append(
					'<div class="input-group mb-1">'
					+ '<div class="input-group-prepend">'
						+ '<select class="form-control" name="sns">'
							+ '<option value="">SNS</option>'
							+ '<option value="SN001">Facebook</option>'
							+ '<option value="SN002">Instagram</option>'
							+ '<option value="SN003">Twitter</option>'
							+ '<option value="SN004">Youtube</option>'
							+ '<option value="SN005">Blog</option>'
						+ '</select>'
					+ '</div>'
					+ '<input type="text" class="form-control" name="snsUrl" placeholder="SNS주소">'
					+ '<div class="input-group-append">'
						+ '<button class="btn btn-primary subSNS" type="button">'
							+ '<i class="fas fa-minus"></i>'
						+ '</button>'
					+ '</div>'
					+ '</div>'
				);
			}
		}
		
		$(document).ready(function() {
			$('#change-pwd-btn').on('click', function() {
				$(this).parent().parent().hide();
				$('.change-password').css('display','inline');
			});
			
			$("#choose-image").on('change',	function() {
				if (this.files && this.files[0]) {
					var reader = new FileReader();
					reader.onload = function(e) {
						$('#profile-image').attr('src',e.target.result);
					}
					reader.readAsDataURL(this.files[0]);
				}
			});
			
			// add birthday select options
			  var date = new Date();
			  var year = date.getFullYear();

			  for(var i=year; i>=year-100; i--) {
			    $('#birth-year').append('<option value="' + i + '">' + i + '</option>');
			  }
			  for(i=1; i<=12; i++) {
				var j = i.toString();
				if(i<10) { j = '0' + j; }
				
			    $('#birth-month').append('<option value="' + j + '">' + i + '</option>');
			  }
			  for(i=1; i<=31; i++) {
				var j = i.toString();
				if(i<10) { j = '0' + j; }
			    
				$('#birth-day').append('<option value="' + j + '">' + i + '</option>');
			  }

			  // add license select options
			  var arrLicense = ['AFPK', 'CFP', 'FP', 'IFP', 'CPM', 'ChFC'];
			  for (j = 1; j <= 6; j++) {
			    $('select[name="license"]').append('<option value="LI00' + j + '">' + arrLicense[j - 1] + '</option>');
			  }
			  
			  //add sns select options
			  var arrSns = ['Facebook', 'Instagram', 'Twitter', 'Youtube', 'Blog'];
			  for (i = 1; i <= 5; i++) {
				  $('select[name="sns"]').append('<option value="SN00' + i + '">' + arrSns[i - 1] + '</option>');
			  }
			
			$('.addSNS').on('click', insertSform);
				
			$(document).on('click', '.subSNS', function() {
				$(this).parents('div.input-group.mb-1').remove();
			});
			
			$('input[value="<c:out value="${gender}"/>"]').attr('checked', true);
			$('input[value="<c:out value="${gender}"/>"]:checked').parent().addClass('active');
			
			$('#birth-year').val('<c:out value="${fn:substring(birth, 0, 4)}"/>');
			$('#birth-month').val('<c:out value="${fn:substring(birth, 4, 6)}"/>');
			$('#birth-day').val('<c:out value="${fn:substring(birth, 6, 8)}"/>');
			
			if(<c:out value="${isExpert}"/>){
				$.ajax({
					url: '/getExpert.do',
					data: {
						mid: '<c:out value="${mid}"/>'
					},
					dataType: 'JSON',
					type: 'POST',
					success: function(data){
						$('#inputJob').val(data.job);
						$('#inputPosition').val(data.position);
						$('#inputCareer').val(data.career);
						$('#inputZipCode').val(data.zipcode);
						$('#inputAddr').val(data.address);
						$('#inputAddrDetail').val(data.detailaddr);
						$('textarea[name="e_introduce"]').val(data.introduce);
						$('#ltype1').val(data.ltype1);
						$('#inputLicense1').val(data.li1);
						
						if(data.ltype2 != null) {
							$('ltype2').val(data.ltype2);
							$('#inputLicense2').val(data.li2);
							
							if(data.ltype3 != null) {
								$('ltype3').val(data.ltype3);
								$('#inputLicense3').val(data.li3);
							}
						}
						
						if(data.stype1 != null){
							$('#stype1').val(data.stype1);
							$('#sn1').val(data.sn1);
							
							if(data.stype2 != null){
								insertSform();
								$lastSns = $('.inputSNS div div select').last();
								$lastSns.val(data.sn2);
								$lastSns.parent().siblings('input').val(data.sn2);
								
								if(data.stype3 != null){
									insertSform();
									$lastSns = $('.inputSNS div div select').last();
									$lastSns.val(data.sn3);
									$lastSns.parent().siblings('input').val(data.sn3);
									
									if(data.stype4 != null){
										insertSform();
										$lastSns = $('.inputSNS div div select').last();
										$lastSns.val(data.sn4);
										$lastSns.parent().siblings('input').val(data.sn4);
										
										if(data.stype5 != null){
											insertSform();
											$lastSns = $('.inputSNS div div select').last();
											$lastSns.val(data.sn5);
											$lastSns.parent().siblings('input').val(data.sn5);
										}
									}
								}
							}
						}
					}
				});
			}
		});

		function checkPassword(){
			$.ajax({
				url: '/checkPwd.do',
				data: {
					pwd: $('#pwd-confirm').val()
				},
				type: 'POST',
				dataType: 'JSON',
				success: function(data) {
					switch (data.rst) {
						case 1:
							alert('?!?!??!?!??');
							$('#withdrawal').submit();
							break;
						case 0:
							$mbody = $('.modal-body');
							if ($mbody.find('.error.pwd-check-error').length) {
						      break;
						    }
							$mbody.append('<div class="error pwd-check-error">비밀번호를 확인해주세요.</div>');
							break;
						default:
							console.log('error??');
					}
				}
			});
			
		}
	</script>
</body>

</html>