var isValidId = false;
var isValidNick = false;

$(document).ready(function() {
      // choose profile-image
      $("#choose-image").on('change', function() {
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
			$('#birth-year').append('<option value="'+ i +'">' + i + '년</option>');
		}
		for(i=1; i<=12; i++) {
			$('#birth-month').append('<option value="'+ i +'">' + i + '월</option>');
		}
		for(i=1; i<=31; i++) {
			$('#birth-day').append('<option value="'+ i +'">' + i + '일</option>');
		}
		
	  // add license select options
	  var arrLicense = ['AFPK', 'CFP', 'FP', 'IFP', 'CPM', 'ChFC'];
	  for(i=1; i<=3; i++) {
		  var $selectName = $('select[name=license' + i + ']');
		  console.log($selectName);
		  for(j=1; j<=6; j++) {
			  $selectName.append('<option value="' + j + '">' + arrLicense[j-1] + '</option>');
		  }
	  }
	  
      // add sns form
      $('.addSNS').on('click', function() {
        $('.inputSNS').append(
          '<div class="input-group mb-1">' +
          '<div class="input-group-prepend">' +
          '<select class="form-control" name="sns-type'+ 2 +'">' +
          '<option value="">SNS</option>' +
          '</select>' +
          '</div>' +
          '<input type="text" class="form-control" name="sns'+ 2 +'" placeholder="SNS주소 (ex. https://www.facebook.com/000)">' +
          '<div class="input-group-append">' +
          '<button class="btn btn-primary subSNS" type="button">' +
          '<i class="fas fa-minus"></i>' +
          '</button>' +
          '</div>' +
          '</div>'
        );
      });

      $(document).on('click', '.subSNS', function() {
        $(this).parents('div.input-group.mb-1').remove();
      });
      
      $('#sign-up').validate({
          focusInvalid: true,
          rules: {
        	  'nickname': {
        		minlength: 2,
        		maxlength: 16
        	  },
              'password': {
            	  minlength: 8,
                  maxlength: 16
              },
              'password-confirm': {
                  equalTo: 'input[name="password"]'
              },
              'phone': {
            	  digits:true,
                  minlength:10,
                  maxlength:11                  
              },
              'license-num1': {
            	  digits: true,
            	  rangelength: [10,10]
              },
              'license-num2': {
            	  digits: true
              },
              'license-num3': {
            	  digits: true
              },
              'introduction': {
            	  minlength: 30
              }
          },
          errorPlacement: function errorPlacement(error, element) {
        	  var $parent = $(element).parents('.form-group');

              if ($parent.find('.jquery-validation-error').length) {
                  return;
              }
              if($parent.find('.mb-2').length) {
            	  return;
              }
              
              $parent.append(
                      error.addClass('jquery-validation-error small form-text invalid-feedback')
                  );
          },
          highlight: function(element) {
        	  if($(element).attr('id') == 'inputId') isValidId = false;
        	  if($(element).attr('id') == 'inputNick') isValidNick = false;
        	  
              var $el = $(element);
              var $parent = $el.parents('.form-group');

              $el.addClass('is-invalid');

              // Select2 and Tagsinput
              if ($el.hasClass('select2-hidden-accessible') || $el.attr('data-role') === 'tagsinput') {
                  $el.parent().addClass('is-invalid');
              }
              $parent.removeClass('mb-4');
              $parent.addClass('mb-2');
          },
          unhighlight: function(element) {
        	  if($(element).attr('id') == 'inputId') isValidId = true;
        	  if($(element).attr('id') == 'inputNick') isValidNick = true;
        	  
        	  var $parent = $(element).parents('.form-group');
              $parent.removeClass('mb-2');
              $parent.addClass('mb-4');
              
              $(element).parents('.form-group').find('.is-invalid').removeClass('is-invalid');
          },
          messages: {
        	  
          }
      });
});

function duplCheckId() {
	if(isValidId) {
		$.ajax({
	   		 url: 'dupl.do',
	   		 data: {
	   			 type: 'id',
	   			 name: $('#inputId').val()
	   		 },
	   		 type: 'POST',
	   		 dataType: 'JSON',
	   		 success: function(data){
	   			 console.log('1 = 중복, 0 = 중복x, -1 = 에러 : ' + data.rst);
	   			 
	   			 switch(data.rst) {
		    			 case 1: swal('존재하는 아이디입니다.'); break;
		    			 case 0: swal('사용 가능한 아이디입니다.'); break;
		    			 default: swal('error');
	   			 }
	   		 }
	   	 });
	} else {
		swal('아이디를 확인해주세요.');
		$('#inputId').focus();
	}
}

function duplCheckNick() {
	if(isValidNick) {
		$.ajax({
	   		 url: 'dupl.do',
	   		 data: {
	   			 type: 'nickname',
	   			 name: $('#inputNick').val()
	   		 },
	   		 type: 'POST',
	   		 dataType: 'JSON',
	   		 success: function(data){
	   			 console.log('1 = 중복, 0 = 중복x, -1 = 에러 : ' + data.rst);
	   			 
	   			 switch(data.rst) {
		    			 case 1: swal('존재하는 닉네임입니다.'); break;
		    			 case 0: swal('사용 가능한 닉네임입니다.'); break;
		    			 default: swal('error');
	   			 }
	   		 }
	   	 });
	} else {
		swal('닉네임을 확인해주세요.');
		$('#inputNick').focus();
	}
}

function findPostcode() {
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
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            $('#inputZipCode').val(data.zonecode);
            $('#inputAddr').val(addr + extraAddr);
            // 커서를 상세주소 필드로 이동한다.
            $('#inputAddrDetail').focus();
        }
    }).open();
}