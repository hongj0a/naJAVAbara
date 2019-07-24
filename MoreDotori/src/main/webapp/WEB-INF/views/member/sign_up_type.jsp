<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>회원가입 유형 - 모아도토리</title>
<meta charset="utf-8">

<!-- vendor css -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/member.css">

</head>

<body>
	<div class="auth-wrapper">
		<div class="card cw-740">
			<div class="card-body text-center">
				<h2 class="mb-5">Logo Here</h2>
				<h3>회원가입</h3>
				<h5 class="mb-5">가입 유형을 선택해주세요.</h5>
				<form>
					<div class="form-row">
						<div class="form-group col-md-6">
							<button class="btn btn-primary shadow-2" id="normal">일반
								회원 가입</button>
						</div>
						<div class="form-group col-md-6">
							<button class="btn btn-primary shadow-2" id="expert">전문가
								회원 가입</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Required Js -->
	<script src="js/vendor-all.min.js"></script>
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
