<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>회원가입 유형 - 모아도토리</title>
<meta charset="utf-8">

<!-- vendor css -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/member/member.css">

</head>

<body>
	<div class="auth-wrapper">
		<div class="card cw-740">
			<div class="card-body text-center">
				<a href="/"><h2 class="mb-5">Logo Here</h2></a>
				<h3>회원가입</h3>
				<h5 class="mb-5">가입 유형을 선택해주세요.</h5>
				<form>
					<div class="form-row">
						<div class="form-group col-md-6">
							<input type="button" class="btn btn-primary shadow-2" id="normal" value="일반 회원 가입" onclick="btn_click(this)">
						</div>
						<div class="form-group col-md-6">
							<input type="button" class="btn btn-primary shadow-2" id="expert" value="전문가 회원 가입" onclick="btn_click(this)">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Required Js -->
	<script src="js/vendor-all.min.js"></script>
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<script>
	function btn_click(btn){
		location.href='/signup?type=' + $(btn).attr('id');
	};
	
	</script>
</body>

</html>
