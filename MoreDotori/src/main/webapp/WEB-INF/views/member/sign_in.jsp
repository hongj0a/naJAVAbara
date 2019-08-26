<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인 - 모아도토리</title>
<meta charset="utf-8">

<!-- animation css -->
<link rel="stylesheet" href="plugins/animation/css/animate.min.css">
<!-- vendor css -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/member/member.css">
</head>

<body>
	<div class="auth-wrapper">
		<!-- 배경 이미지 삭제함 -->
		<div class="auth-content">
			<div class="auth-bg sign-in">
				<span class="r"></span> <span class="r s"></span> <span class="r s"></span>
				<span class="r"></span>
			</div>
			<div class="card">
				<div class="card-body text-center">
					<a href="/"><h2 class="mb-5">Logo Here</h2></a>
					<form action="/login" method="post">
						<div class="input-group mb-3">
							<input type="text" name="username" class="form-control"
								placeholder="아이디">
						</div>
						<div class="input-group mb-4">
							<input type="password" name="password" class="form-control"
								placeholder="비밀번호">
						</div>
						<!--
                    <div class="form-group text-left">
                        <div class="checkbox checkbox-fill d-inline">
                            <input type="checkbox" name="checkbox-fill-1" id="checkbox-fill-a1" checked="">
                            <label for="checkbox-fill-a1" class="cr"> Save credentials</label>
                        </div>
                    </div>
                    -->
						<button type="submit" class="btn btn-primary shadow-2 mb-3 form-control" id="signin">로그인</button>
						<button class="btn btn-primary shadow-2 mb-4 form-control">Google로 로그인</button>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					</form>
					<div>
						<div class="mb-2 text-muted float-sm-left">
							<a href="/signuptype">회원가입</a>
						</div>
						<div class="mb-2 text-muted float-sm-right">
							<a href="/find_account">계정 찾기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Required Js -->
	<script src="js/vendor-all.min.js"></script>
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- alert -->
	<script src="plugins/sweetalert/js/sweetalert.min.js"></script>

	<script>
      $(document).ready(function() {
          $('#signin').on('click', function() {
              swal('로그인 정보가 일치하지 않습니다.');
          });
      });
    </script>

</body>
</html>
