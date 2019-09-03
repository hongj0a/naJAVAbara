<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>로그인 - 모아도토리</title>
<meta charset="utf-8">

<!-- animation css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/animation/css/animate.min.css">
<!-- vendor css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/member.css">
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
					<a href="/">
						<img width="100px" src="${pageContext.request.contextPath}/images/slider/icon.png">
						<h3 class="mb-4">MORE DOTORI</h3>
					</a>
					<form action="/login" method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<input type="hidden" id="errorCode" value="<%=request.getParameter("ecode")%>">
						<input type="hidden" id="cDate" value="<%=request.getParameter("cdate")%>">
						<div class="input-group mb-3">
							<input type="text" name="username" class="form-control" placeholder="아이디">
						</div>
						<div class="input-group mb-4">
							<input type="password" name="password" class="form-control" placeholder="비밀번호">
						</div>
						<button type="submit" class="btn btn-primary shadow-2 mb-3 form-control" id="signin">로그인</button>
						<!-- <button class="btn btn-primary shadow-2 mb-4 form-control">Google로 로그인</button> -->
					</form>
					<div>
						<div class="mb-2 text-muted float-sm-left">
							<a href="/signup?type=normal">회원가입</a>
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
	<script src="${pageContext.request.contextPath}/js/vendor-all.min.js"></script>
	<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- alert -->
	<script src="${pageContext.request.contextPath}/plugins/sweetalert/js/sweetalert.min.js"></script>

	<script>
      $(document).ready(function() {
    	  var $error = $('#errorCode').val();
   		  switch($error) {
	   		  case 'ER001':
	   		  case 'ER002':
	   			  swal('아이디 또는 비밀번호가 일치하지 않습니다.');
	   			  break;
	   		  case 'ER003': 
	   			  swal('계정이 비활성화되었습니다. 관리자에게 문의해주세요.');
	   			  break;
	   		  case 'ER004': 
	   			  swal('비밀번호 유효기간이 만료 되었습니다. 관리자에게 문의해주세요.');
	   			  break;
		   	  case 'ER005':
		   		  swal('정지된 회원입니다.\n' + $('#cDate').val() + ' 이후에 로그인 할 수 있습니다.');
		   		  break;
		   	  case 'ER006':
		   		  swal('이미 탈퇴한 회원입니다.');
		   		  break;
    	  }
      });
    </script>

</body>
</html>
