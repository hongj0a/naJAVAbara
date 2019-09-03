<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>회원가입 유형 - 모아도토리</title>
<meta charset="utf-8">

<!-- vendor css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/member.css">

</head>

<body>
	<div class="auth-wrapper">
		<div class="card cw-740">
			<div class="card-header text-center">
				<a href="/">
					<img width="100px" src="${pageContext.request.contextPath}/images/slider/icon.png">
					<h4>MORE DOTORI</h4>
				</a>
			</div>
			<div class="card-body text-center">
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
	<script src="${pageContext.request.contextPath}/js/vendor-all.min.js"></script>
	<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script>
	function btn_click(btn){
		location.href='/signup?type=' + $(btn).attr('id');
	};
	
	</script>
</body>

</html>
