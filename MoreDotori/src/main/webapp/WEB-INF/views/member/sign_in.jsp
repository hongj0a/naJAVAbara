<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <div class="auth-wrapper"> <!-- 배경 이미지 삭제함 -->
        <div class="auth-content">
        	<div class="auth-bg sign-in">
                <span class="r"></span>
                <span class="r s"></span>
                <span class="r s"></span>
                <span class="r"></span>
            </div>
            <div class="card">
                <div class="card-body text-center">
                    <a href="/"><h2 class="mb-5">Logo Here</h2></a>
                    <div class="input-group mb-3">
                        <input type="email" class="form-control" placeholder="아이디">
                    </div>
                    <div class="input-group mb-4">
                        <input type="password" class="form-control" placeholder="비밀번호">
                    </div>
                    <!--
                    <div class="form-group text-left">
                        <div class="checkbox checkbox-fill d-inline">
                            <input type="checkbox" name="checkbox-fill-1" id="checkbox-fill-a1" checked="">
                            <label for="checkbox-fill-a1" class="cr"> Save credentials</label>
                        </div>
                    </div>
                    -->
                    <button class="btn btn-primary shadow-2 mb-3 form-control" id="signin">로그인</button>
                    <button class="btn btn-primary shadow-2 mb-4 form-control">Google로 로그인</button>
                    <div>
                      <div class="mb-2 text-muted float-sm-left">
                        <a href="/signup">회원가입</a>
                      </div>
                      <div class="mb-2 text-muted float-sm-right">
                        <a href="/find_account">계정 찾기</a>
                      </div>
                    </div>
                    <!--
                    <p class="mb-2 text-muted">Forgot password? <a href="auth-reset-password-v5.html">Reset</a></p>
                    <p class="mb-0 text-muted">Don’t have an account? <a href="auth-signup-v5.html">Signup</a></p>
                    -->
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
    