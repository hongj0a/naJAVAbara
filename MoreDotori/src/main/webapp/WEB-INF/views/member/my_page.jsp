<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>NAJAVABARA</title>
<meta charset="utf-8">

<link rel="stylesheet" href="css/member/member.css">
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
											<li class="nav-item"><a
												class="nav-link text-uppercase active" id="edit-tab"
												data-toggle="tab" href="#edit" role="tab"
												aria-controls="edit" aria-selected="true">회원정보수정</a></li>
											<li class="nav-item"><a class="nav-link text-uppercase"
												id="withdrawal-tab" data-toggle="tab" href="#withdrawal"
												role="tab" aria-controls="withdrawl" aria-selected="false">회원탈퇴</a>
											</li>
										</ul>
										<div class="tab-content" id="acc-tab-content">
											<div class="tab-pane fade active show" id="edit"
												role="tabpanel" aria-labelledby="edit-tab">
												<div class="row justify-content-center">
													<form id="account-edit" class="col-sm-11" action="">
														<div class="row">
															<div class="col-sm-4">
																<div class="text-center">
																	<label for="choose-image"> <img
																		class="img-fluid rounded-circle" id="profile-image"
																		for="choose-image" src="images/user/avatar-3.jpg"
																		alt="dashboard-user">
																	</label>
																	<div class="custom-file mb-4">
																		<input type="file" class="custom-file-input"
																			id="choose-image" accept="image/*"> <label
																			class="custom-file-label" for="inputGroupFile01"></label>
																	</div>
																</div>
															</div>
															<div class="col-sm-8">
																<div class="form-group row mb-4">
																	<label class="col-sm-3 col-form-label">아이디</label> <label
																		class="col-sm-9 col-form-label">dlslwkd0525@naver.com</label>
																</div>
																<div class="form-group row mb-4">
																	<label class="col-sm-3 col-form-label">이름</label> <label
																		class="col-sm-9 col-form-label">김인희</label>
																</div>
																<div class="form-group row mb-4">
																	<label class="col-sm-3 col-form-label">닉네임</label>
																	<div class="col-sm-9">
																		<div class="input-group">
																			<input type="text" class="form-control"
																				id="inputNick" name="nickname" value="이니얀">
																			<div class="input-group-append">
																				<button class="btn btn-primary"
																					name="nick-dupl-check" type="button">중복확인</button>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="form-group row mb-4">
															<label class="col-sm-3 col-form-label">비밀번호</label>
															<div class="col">
																<button class="btn btn-primary" id="change-pwd-btn"
																	type="button">비밀번호 변경</button>
															</div>
														</div>
														<div class="change-password" hidden>
															<div class="form-group row mb-4">
																<label class="col-sm-3 col-form-label">기존 비밀번호</label>
																<div class="col">
																	<input type="password" class="form-control"
																		id="inputPwd" name="password">
																</div>
															</div>
															<div class="form-group row mb-4">
																<label class="col-sm-3 col-form-label">새 비밀번호</label>
																<div class="col">
																	<input type="password" class="form-control"
																		id="inputNewPwd" name="new-password">
																</div>
															</div>
															<div class="form-group row mb-4">
																<label class="col-sm-3 col-form-label">새 비밀번호 확인</label>
																<div class="col">
																	<input type="password" class="form-control"
																		id="inputPwdConfirm" name="new-password-confirm">
																</div>
															</div>
														</div>
														<div class="form-group row mb-4">
															<label class="col-sm-3 col-form-label">연락처</label>
															<div class="col">
																<input type="text" class="form-control" id="inputPhone"
																	name="phone" value="01082881636">
															</div>
														</div>
														<div class="form-group row mb-4">
															<label class="col-sm-3 col-form-label">성별&nbsp;&nbsp;</label>
															<div class="col">
																<div class="btn-group btn-group-toggle"
																	data-toggle="buttons" id="inputGender">
																	<label class="btn btn-primary"> <input
																		type="radio" name="gender" value="male">남
																	</label> <label class="btn btn-primary active"> <input
																		type="radio" name="gender" value="female">여
																	</label>
																</div>
															</div>
														</div>
														<div class="form-group row mb-4">
															<label class="col-sm-3 col-form-label">생년월일</label>
															<div class="col form-inline" id="inputBirth">
																<select class="form-control col-sm-3 mr-1"
																	id="inputBirth">
																	<option value="1995">1995</option>
																</select> <label class="col-form-label mr-2">년</label> <select
																	class="form-control col-sm-3 mr-1">
																	<option value="5">5</option>
																</select> <label class="col-form-label mr-2">월</label> <select
																	class="form-control col-sm-3 mr-1">
																	<option value="25">25</option>
																</select> <label class="col-form-label mr-2">일</label>
															</div>
														</div>
														<div id="expert-details">
															<div class="row">
																<div class="form-group col-sm-4 mb-4">
																	<label for="job" class="col-form-label">직업</label> <input
																		type="text" class="form-control" id="inputJob"
																		name="job" value="자산관리사">
																</div>
																<div class="form-group col-sm-4">
																	<label for="job" class="col-form-label">직급</label> <input
																		type="text" class="form-control" id="inputPosition"
																		name="position" value="사원">
																</div>
																<div class="form-group col-sm-4">
																	<label for="job" class="col-form-label">경력</label>
																	<div class="form-inline">
																		<input type="text"
																			class="form-control text-right col-sm-9 mr-1"
																			id="inputCareer" name="career" value="3"> <label
																			for="job" class="col-form-label">년차</label>
																	</div>
																</div>
															</div>
															<div class="form-group row mb-1">
																<label class="col-form-label col-sm-3">우편번호</label>
																<div class="col">
																	<div class="input-group">
																		<input type="text" class="form-control bc-none"
																			id="inputZipCode" name="zip-code" value="17949"
																			readonly>
																		<div class="input-group-append">
																			<button class="btn btn-primary" name="find-address"
																				type="button">주소찾기</button>
																		</div>
																	</div>
																</div>
															</div>
															<div class="form-group row mb-1">
																<label class="col-sm-3 col-form-label"></label>
																<div class="col">
																	<input type="text" class="form-control bc-none"
																		id="inputAddr" name="address" value="경기도 평택시 포승읍 호암길"
																		readonly>
																</div>
															</div>
															<div class="form-group row mb-4">
																<label class="col-sm-3 col-form-label"></label>
																<div class="col">
																	<input type="type" class="form-control"
																		id="inputAddrDetail" name="addr-details" value="38-4">
																</div>
															</div>
															<div class="form-group">
																<div class="input-group mb-1">
																	<label for="inputLicense1" class="sr-only">자격증1</label>
																	<div class="input-group-prepend">
																		<select class="form-control">
																			<option value="">자격증1</option>
																		</select>
																	</div>
																	<input type="text" class="form-control"
																		id="inputLicense1" name="license-num1"
																		placeholder="자격증 번호">
																</div>
																<div class="input-group mb-1">
																	<label for="inputLicense2" class="sr-only">자격증2</label>
																	<div class="input-group-prepend">
																		<select class="form-control">
																			<option value="">자격증2</option>
																		</select>
																	</div>
																	<input type="text" class="form-control"
																		id="inputLicense2" name="license-num2"
																		placeholder="자격증 번호">
																</div>
																<div class="input-group mb-4">
																	<label for="inputLicense3" class="sr-only">자격증3</label>
																	<div class="input-group-prepend">
																		<select class="form-control">
																			<option value="">자격증3</option>
																		</select>
																	</div>
																	<input type="text" class="form-control"
																		id="inputLicense3" name="license-num3"
																		placeholder="자격증 번호">
																</div>
															</div>
															<div class="form-group mb-4 inputSNS">
																<div class="input-group mb-1">
																	<div class="input-group-prepend">
																		<select class="form-control" name="sns-type1">
																			<option value="facebook">Facebook</option>
																			<option value="instagram">Instagram</option>
																		</select>
																	</div>
																	<input type="text" class="form-control" name="sns1"
																		placeholder="SNS주소 (ex. https://www.facebook.com/000)"
																		value="https://www.facebook.com/InheeKimS2">
																	<div class="input-group-append">
																		<button class="btn btn-primary addSNS" type="button">
																			<i class="fas fa-plus"></i>
																		</button>
																	</div>
																</div>
																<div class="input-group mb-1">
																	<div class="input-group-prepend">
																		<select class="form-control" name="sns-type2">
																			<option value="instagram">Instagram</option>
																			<option value="facebook">Facebook</option>
																		</select>
																	</div>
																	<input type="text" class="form-control" name="sns2"
																		placeholder="SNS주소 (ex. https://www.facebook.com/000)"
																		value="http://www.instagram.com/2nniyan">
																	<div class="input-group-append">
																		<button class="btn btn-primary subSNS" type="button">
																			<i class="fas fa-minus"></i>
																		</button>
																	</div>
																</div>
															</div>
															<div class="form-group mb-4">
																<textarea class="form-control" rows="8"
																	aria-label="With textarea" name="introduction"
																	placeholder="자기소개">안녕하세요!
금융관련 방송 다수 출연했습니다.</textarea>
															</div>
														</div>
														<div class="form-group row justify-content-center">
															<button type="submit" name="save-info-btn"
																class="btn btn-primary">저장</button>
														</div>
													</form>
												</div>
											</div>
											<div class="tab-pane fade" id="withdrawal" role="tabpanel"
												aria-labelledby="withdrawal-tab">
												<form>
													<div class="input-group mb-4">
														<label class="h5 p-3 m-0">유의사항을 확인 후 탈퇴를 진행해 주세요.</label>
													</div>
													<!-- <p class="p-4 h5">유의사항을 확인 후 탈퇴를 진행해 주세요.</p> -->
													<ul class="fa-ul">
														<li class="mb-3"><span class="fa-li"><i
																class="fas fa-angle-right"></span></i>회원 탈퇴 시, 사용하고 계신
															아이디(dlslwkd0525@naver.com)는 재사용이나 복구가 불가능합니다.</li>
														<li class="mb-3"><span class="fa-li"><i
																class="fas fa-angle-right"></span></i>회원님의 모든 개인정보 및 이용정보가
															삭제되며, 삭제된 데이터는 복구되지 않습니다.</li>
														<li class="mb-2"><span class="fa-li"><i
																class="fas fa-angle-right"></span></i>삭제를 원하는 게시글이 있다면 반드시 회원
															탈퇴 전 비공개 처리하거나 삭제하시기 바랍니다.</li>
														<label class="mb-4">(탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할
															수 있는 방법이 없어, 게시글을 임의로 삭제해드릴 수 없습니다.)</label>
													</ul>
													<div class="form-group mb-4 pl-3">
														<div class="checkbox checkbox-primary d-inline">
															<input type="checkbox" id="inputAgree" name="agree">
															<label for="inputAgree" class="cr">유의사항을 모두
																확인하였으며, 이에 동의합니다.</label>
														</div>
													</div>
													<div id="withdrawalModal" class="modal fade" tabindex="-1"
														role="dialog" aria-labelledby="withdrawalModalLabel"
														aria-hidden="true">
														<div class="modal-dialog modal-dialog-centered"
															role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title" id="withdrawalModalLabel">회원탈퇴</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">×</span>
																	</button>
																</div>
																<div class="modal-body">
																	<p class="text-center">
																		모아도토리를 정말로 탈퇴하시겠습니까?<br> 탈퇴를 원하신다면 비밀번호를 입력해주세요.
																	</p>
																	<div class="row justify-content-center">
																		<div class="col-sm-7 mb-3">
																			<input type="password" class="form-control"
																				name="pwd-confirm">
																		</div>
																	</div>
																</div>
																<div class="modal-footer justify-content-center">
																	<button type="button" class="btn btn-primary">탈퇴하기</button>
																</div>
															</div>
														</div>
													</div>
													<div class="form-group row justify-content-center">
														<button type="button" class="btn btn-primary"
															data-toggle="modal" data-target="#withdrawalModal">회원탈퇴</button>
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
		$(document)
				.ready(
						function() {
							$('#change-pwd-btn').on('click', function() {
								$(this).parent().parent().hide();
								$('.change-password').removeAttr('hidden');
							});

							$("#choose-image")
									.on(
											'change',
											function() {
												if (this.files && this.files[0]) {
													var reader = new FileReader();

													reader.onload = function(e) {
														$('#profile-image')
																.attr(
																		'src',
																		e.target.result);
													}

													reader
															.readAsDataURL(this.files[0]);
												}
											});

							$('.addSNS')
									.on(
											'click',
											function() {
												$('.inputSNS')
														.append(
																'<div class="input-group mb-1">'
																		+ '<div class="input-group-prepend">'
																		+ '<select class="form-control">'
																		+ '<option>SNS</option>'
																		+ '</select>'
																		+ '</div>'
																		+ '<input type="text" class="form-control" name="address" placeholder="SNS주소 (ex. https://www.facebook.com/000)">'
																		+ '<div class="input-group-append">'
																		+ '<button class="btn btn-primary subSNS" type="button">'
																		+ '<i class="fas fa-minus"></i>'
																		+ '</button>'
																		+ '</div>'
																		+ '</div>');
											});

							$(document).on(
									'click',
									'.subSNS',
									function() {
										$(this).parents('div.input-group.mb-1')
												.remove();
									});
						});
		function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수

	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }

	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }
	</script>
</body>

</html>