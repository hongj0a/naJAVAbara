<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>계정 찾기 - 모아도토리</title>
<meta charset="utf-8">

<meta name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}"/>

<!-- vendor css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/member.css">
</head>

<body>
	<div class="auth-wrapper">
		<!-- 배경 이미지 삭제함 -->
		<div class="card cw-740">
			<div class="card-body text-center">
				<div class="col-sm-12">
					<a href="/"><h3 class="mb-4">Logo Here</h3></a>
					<!-- <h5>계정 찾기</h5> -->
					<ul class="nav nav-tabs mem-tab" id="myTab" role="tablist">
						<li class="nav-item">
							<a class="nav-link active text-uppercase" id="find-id-tab" data-toggle="tab" href="#find-id" role="tab" aria-controls="find-id" aria-selected="true">아이디 찾기</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-uppercase" id="find-password-tab" data-toggle="tab" href="#find-password" role="tab" aria-controls="find-password" aria-selected="false">비밀번호 찾기</a>
						</li>
					</ul>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="find-id" role="tabpanel" aria-labelledby="find-id-tab">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							<h4>등록한 정보로 아이디 찾기</h4>
							<h6>회원정보로 등록한 이름, 연락처, 생년월일로 아이디를 찾을 수 있습니다.</h6>
							<hr>
							<form id="findId" method="post" action="/findId.do">
								<div class="form-group row">
									<label for="inputName" class="col-sm-3 col-form-label">이름</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="inputName" name="name" required>
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPhone" class="col-sm-3 col-form-label">연락처</label>
									<div class="col-sm-3">
										<select class="form-control" name="phone1">
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
											<option value="02">02</option>
											<option value="031">031</option>
											<option value="032">032</option>
											<option value="033">033</option>
											<option value="041">041</option>
											<option value="042">042</option>
											<option value="043">043</option>
											<option value="044">044</option>
											<option value="051">051</option>
											<option value="052">052</option>
											<option value="053">053</option>
											<option value="054">054</option>
											<option value="055">055</option>
											<option value="061">061</option>
											<option value="062">062</option>
											<option value="063">063</option>
											<option value="064">064</option>
											<option value="070">070</option>
											
										</select>
									</div>
									<div class="col-sm-3">
										<input type="text" class="form-control" id="inputPhone2" name="phone2" required>
									</div>
									<div class="col-sm-3">
										<input type="text" class="form-control" id="inputPhone3" name="phone3" required>
									</div>
								</div>
								<div class="form-group row">
									<label for="inputBirth" class="col-sm-3 col-form-label">생년월일</label>
									<div class="col-sm-3" id="inputBirth">
										<select class="form-control" name="birth" id="birth-year" required>
											<option value="">년</option>
										</select>
									</div>
									<div class="col-sm-3">
										<select class="form-control" name="birth2" id="birth-month" required>
											<option value="">월</option>
										</select>
									</div>
									<div class="col-sm-3">
										<select class="form-control" name="birth3" id="birth-day" required>
											<option value="">일</option>
										</select>
									</div>
								</div>
								<hr>
								<div class="col-sm-12">
									<input type="submit" class="btn btn-primary" name="find-id-btn" value="확인">
								</div>
							</form>
						</div>
						<div class="tab-pane fade" id="find-password" role="tabpanel" aria-labelledby="find-password-tab">
							<h4>E-mail로 임시 비밀번호 전송하기</h4>
							<h6>회원정보로 등록한 E-mail로 임시 비밀번호를 전송하여 확인할 수 있습니다.</h6>
							<hr>
							<form id="findPwd" method="post" action="/findPwd.do">
								<div class="row align-items-center justify-content-center">
									<div class="form-group row col-sm-8">
										<label for="inputName" class="col-sm-3 col-form-label">이름</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="inputName2" name="name" required>
										</div>
									</div>
									<div class="form-group row col-sm-8">
										<label for="inputId" class="col-sm-3 col-form-label">아이디</label>
										<div class="col-sm-9">
											<input type="email" class="form-control" id="inputId" name="id" required>
										</div>
									</div>
								</div>
								<hr>
								<div class="col-sm-12">
									<input type="submit" class="btn btn-primary" name="find-pwd-btn" value="확인">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Required Js -->
	<script src="${pageContext.request.contextPath}/js/vendor-all.min.js"></script>
	<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	
	<script src="${pageContext.request.contextPath}/plugins/sweetalert/js/sweetalert.min.js"></script>
	
	<script src="${pageContext.request.contextPath}/plugins/jquery-validation/js/jquery.validate.min.js"></script>
	<script src="${pageContext.request.contextPath}/plugins/jquery-validation/js/messages_ko.js"></script>
	
	<script>
	$(function() {
	  var token = $("meta[name='_csrf']").attr("content");
	  var header = $("meta[name='_csrf_header']").attr("content");
	  $(document).ajaxSend(function(e, xhr, options) {
	    xhr.setRequestHeader(header, token);
	  });
	});
	
	// add birthday select options
	  var date = new Date();
	  var year = date.getFullYear();

	  for (var i = year; i >= year - 100; i--) {
	    $('#birth-year').append('<option value="' + i + '">' + i + '</option>');
	  }
	  for (i = 1; i <= 12; i++) {
	    var j = i.toString();
	    if (i < 10) { j = '0' + j; }

	    $('#birth-month').append('<option value="' + j + '">' + i + '</option>');
	  }
	  for (i = 1; i <= 31; i++) {
	    var j = i.toString();
	    if (i < 10) { j = '0' + j; }

	    $('#birth-day').append('<option value="' + j + '">' + i + '</option>');
	  }
	  
	  $('#findId').validate({
   	    focusInvalid: true,
   	    rules: {
   	    	'phone2': {
   	    		digits: true,
   	    		maxlength: 4
   	    	},
   	    	'phone3': {
   	    		digits: true,
   	    		maxlength: 4
   	    	}
   	    },
	    errorPlacement: function errorPlacement(error, element) {
	      var $parent = $(element).parent('[class^="col-sm-"]');
	      if ($parent.find('.jquery-validation-error').length) {
	        return;
	      }
	      $parent.append(
	        error.addClass('jquery-validation-error small form-text invalid-feedback text-left')
	      );
	    },
	    highlight: function(element) {
	      var $el = $(element);
	      var $parent = $el.parents('.form-group');

   		  $el.addClass('is-invalid');
	      $parent.addClass('mb-2');
	    },
	    unhighlight: function(element) {
	      var $el = $(element);
	      var $parent = $el.parents('.form-group');
	      
	      $el.parents('.form-group').find('.is-invalid').removeClass('is-invalid');
	      $parent.removeClass('mb-2');
		},
	    submitHandler: function(form) {
	    	var phone = $('select[name="phone1"]').val() + $('input[name="phone2"]').val() + $('input[name="phone2"]').val();
			var birth = $('#birth-year').val() + $('#birth-month').val() + $('#birth-day').val();
			
			$.ajax({
			  url: form.action,
			  data: {
				  name: $('#inputName').val(),
			   	  phone: phone,
			   	  birth: birth
			  },
	 	      dataType: 'JSON',
		      type: form.method,
		      success: function(data) {
		    	  switch(data.rst) {
			    	  case -1:
			    		  swal('0ㅁ0');
			    		  break;
			    	  case 0:
			    		  swal('입력하신 정보에 일치하는 아이디가 존재하지 않습니다.');
			    		  break;
			    	  case 1:
			    		  swal('회원님의 아이디는 [ ' + data.id + ' ] 입니다.');
			    		  break;
		    	  }
		      }
			});
	    }
 	  });
	  
	  $('#findPwd').validate({
		focusInvalid: true,
		errorPlacement: function errorPlacement(error, element) {
	      var $parent = $(element).parent('[class^="col-sm-"]');
	      if ($parent.find('.jquery-validation-error').length) {
	        return;
	      }
	      $parent.append(
	        error.addClass('jquery-validation-error small form-text invalid-feedback text-left')
	      );
	    },
	    highlight: function(element) {
	      var $el = $(element);
	      var $parent = $el.parents('.form-group');
	   		  $el.addClass('is-invalid');
	      $parent.addClass('mb-2');
	    },
	    unhighlight: function(element) {
	      var $el = $(element);
	      var $parent = $el.parents('.form-group');
	      
	      $el.parents('.form-group').find('.is-invalid').removeClass('is-invalid');
	      $parent.removeClass('mb-2');
		},
  	    submitHandler: function(form) {
  			$.ajax({
  			  url: form.action,
  			  data: {
  				  name: $('#inputName2').val(),
  			   	  id: $('#inputId').val()
  			  },
  	 	      dataType: 'JSON',
  		      type: form.method,
  		      success: function(data) {
  		    	  switch(data.rst) {
	  		    	  case -1:
			    		  swal('0ㅁ0');
			    		  break;
			    	  case 0:
			    		  swal('메일 전송 실패 ㅜ_ㅜ');
			    		  break;
			    	  case 1:
			    		  swal('회원님의 메일로 임시 비밀번호 발송이 완료되었습니다.');
			    		  break;
  		    	  }
  		      }
  			});
  	    }
   	  });
	</script>
</body>
</html>
