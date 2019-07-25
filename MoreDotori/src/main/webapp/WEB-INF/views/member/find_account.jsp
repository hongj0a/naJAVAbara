<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>계정 찾기 - 모아도토리</title>
<meta charset="utf-8">

<!-- vendor css -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/member.css">
</head>

<body>
	<div class="auth-wrapper">
		<!-- 배경 이미지 삭제함 -->
		<div class="card cw-740">
			<div class="card-body text-center">
				<div class="col-sm-12">
					<h3 class="mb-4">Logo Here</h3>
					<!-- <h5>계정 찾기</h5> -->
					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<li class="nav-item"><a
							class="nav-link active text-uppercase" id="find-id-tab"
							data-toggle="tab" href="#find-id" role="tab"
							aria-controls="find-id" aria-selected="true">아이디 찾기</a></li>
						<li class="nav-item"><a class="nav-link text-uppercase"
							id="find-password-tab" data-toggle="tab" href="#find-password"
							role="tab" aria-controls="find-password" aria-selected="false">비밀번호
								찾기</a></li>
					</ul>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="find-id"
							role="tabpanel" aria-labelledby="find-id-tab">
							<h4>등록한 정보로 아이디 찾기</h4>
							<h6>회원정보로 등록한 이름, 연락처, 생년월일로 아이디를 찾을 수 있습니다.</h6>
							<hr>
							<form>
								<div class="form-group row">
									<label for="inputName" class="col-sm-3 col-form-label">이름</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="inputName"
											name="name">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPhone" class="col-sm-3 col-form-label">연락처</label>
									<div class="col-sm-3">
										<select class="form-control" name="phone1">
											<option value="010">010</option>
										</select>
									</div>
									<div class="col-sm-3">
										<input type="text" class="form-control" id="inputPhone2"
											name="phone2">
									</div>
									<div class="col-sm-3">
										<input type="text" class="form-control" id="inputPhone3"
											name="phone3">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputBirth" class="col-sm-3 col-form-label">생년월일</label>
									<div class="col-sm-3" id="inputBirth">
										<select class="form-control" name="birth-year">
											<option value="1995">1995</option>
										</select>
									</div>
									<div class="col-sm-3">
										<select class="form-control" name="birth-year">
											<option value="05">05</option>
										</select>
									</div>
									<div class="col-sm-3">
										<select class="form-control" name="birth-day">
											<option value="25">25</option>
										</select>
									</div>
								</div>
								<hr>
								<div class="col-sm-12">
									<button type="submit" name="find-id-btn"
										class="btn btn-primary text-center">확인</button>
								</div>
							</form>
						</div>
						<div class="tab-pane fade" id="find-password" role="tabpanel"
							aria-labelledby="find-password-tab">
							<h4>E-mail로 임시 비밀번호 전송하기</h4>
							<h6>회원정보로 등록한 E-mail로 임시 비밀번호를 전송하여 확인할 수 있습니다.</h6>
							<hr>
							<form>
								<div class="row align-items-center justify-content-center">
									<div class="form-group row col-sm-7">
										<label for="inputName" class="col-sm-3 col-form-label">이름</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="inputName"
												name="name">
										</div>
									</div>
									<div class="form-group row col-sm-7">
										<label for="inputId" class="col-sm-3 col-form-label">아이디</label>
										<div class="col-sm-9">
											<input type="email" class="form-control" id="inputId"
												name="id">
										</div>
									</div>
								</div>
								<hr>
								<div class="col-sm-12">
									<button type="submit" name="find-pwd-btn"
										class="btn btn-primary">확인</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Required Js -->
	<script src="js/vendor-all.min.js"></script>
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
