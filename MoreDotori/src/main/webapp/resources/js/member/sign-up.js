var isValidId = false;
var isValidNick = false;

$(document).ready(function() {
  // choose profile-image
  $("#choose-image").on('change', function() {
    if (this.files && this.files[0]) {
      var reader = new FileReader();
      reader.onload = function(e) {
        $('#profile-image').attr('src', e.target.result);
      }
      reader.readAsDataURL(this.files[0]);
    }
  });

  // add birthday select options
  var date = new Date();
  var year = date.getFullYear();

  for(var i=year; i>=year-100; i--) {
    $('#birth-year').append('<option value="' + i + '">' + i + '년</option>');
  }
  for(i=1; i<=12; i++) {
	var j = i.toString();
	if(i<10) { j = '0' + j; }
	
    $('#birth-month').append('<option value="' + j + '">' + i + '월</option>');
  }
  for(i=1; i<=31; i++) {
	var j = i.toString();
	if(i<10) { j = '0' + j; }
    
	$('#birth-day').append('<option value="' + j + '">' + i + '일</option>');
  }

  // add license select options
  var arrLicense = ['AFPK', 'CFP', 'FP', 'IFP', 'CPM', 'ChFC'];
  for (j = 1; j <= 6; j++) {
    $('select[name=license]').append('<option value="LI00' + j + '">' + arrLicense[j - 1] + '</option>');
  }
  
  //add sns select options
  var arrSns = ['Facebook', 'Instagram', 'Twitter', 'Youtube', 'Blog'];
  for (i = 1; i <= 5; i++) {
	  $('select[name=sns]').append('<option value="SN00' + i + '">' + arrSns[i - 1] + '</option>');
  }
  
  // add sns form
  $('.addSNS').on('click', function() {
	var cntSNS = $('select[name="sns"]').length;
	if(cntSNS<5) {
		$('.inputSNS').append(
			'<div class="input-group mb-1">'
			+ '<div class="input-group-prepend">'
				+ '<select class="form-control" name="sns">'
					+ '<option value="">SNS</option>'
					+ '<option value="SN001">Facebook</option>'
					+ '<option value="SN002">Instagram</option>'
					+ '<option value="SN003">Twitter</option>'
					+ '<option value="SN004">Youtube</option>'
					+ '<option value="SN005">Blog</option>'
				+ '</select>'
			+ '</div>'
			+ '<input type="text" class="form-control" name="snsUrl" placeholder="SNS주소">'
			+ '<div class="input-group-append">'
				+ '<button class="btn btn-primary subSNS" type="button">'
					+ '<i class="fas fa-minus"></i>'
				+ '</button>'
			+ '</div>'
			+ '</div>'
		);
	}
  });

  $(document).on('click', '.subSNS', function() {
    $(this).parents('div.input-group.mb-1').remove();
  });

  $('#sign-up').validate({
    focusInvalid: true,
    rules: {
      'm_nickname': {
        minlength: 2,
        maxlength: 16
      },
      'm_password': {
        minlength: 8,
        maxlength: 16
      },
      'password-confirm': {
        equalTo: 'input[name="m_password"]'
      },
      'm_phone': {
        digits: true,
        minlength: 10,
        maxlength: 11
      },
      'license-num1': {
        digits: true,
        rangelength: [10, 10]
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
      if ($parent.find('.mb-2').length) {
        return;
      }

      $parent.append(
        error.addClass('jquery-validation-error small form-text invalid-feedback')
      );
    },
    highlight: function(element) {
      var $el = $(element);
      var $parent = $el.parents('.form-group');

      if ($el.attr('id') == 'inputId') isValidId = false;
      if ($el.attr('id') == 'inputNick') isValidNick = false;

      $el.addClass('is-invalid');

      $parent.removeClass('mb-4');
      $parent.addClass('mb-2');
    },
    unhighlight: function(element) {
      var $el = $(element);
      var $parent = $el.parents('.form-group');

      if ($el.attr('id') == 'inputId') isValidId = true;
      if ($el.attr('id') == 'inputNick') isValidNick = true;

      $el.parents('.form-group').find('.is-invalid').removeClass('is-invalid');

      $parent.removeClass('mb-2');
      $parent.addClass('mb-4');
    },
    messages: {

    }
  });
});

$(function () {
  var token = $("meta[name='_csrf']").attr("content");
  var header = $("meta[name='_csrf_header']").attr("content");
  $(document).ajaxSend(function(e, xhr, options) {
    xhr.setRequestHeader(header, token);
  });
});

function duplCheckId() {
  if (isValidId) {
    $.ajax({
      url: 'dupl.do',
      data: {
        type: 'id',
        name: $('#inputId').val()
      },
      type: 'POST',
      dataType: 'JSON',
      success: function(data) {
        switch (data.rst) {
          case 1:
            swal('존재하는 아이디입니다.');
            break;
          case 0:
            swal('사용 가능한 아이디입니다.');
            break;
          default:
            swal('error');
        }
      }
    });
  } else {
    swal('아이디를 확인해주세요.');
    $('#inputId').focus();
  }
}

function duplCheckNick() {
  if (isValidNick) {
    $.ajax({
      url: 'dupl.do',
      data: {
        type: 'nickname',
        name: $('#inputNick').val()
      },
      type: 'POST',
      dataType: 'JSON',
      success: function(data) {
        switch (data.rst) {
          case 1:
            swal('존재하는 닉네임입니다.');
            break;
          case 0:
            swal('사용 가능한 닉네임입니다.');
            break;
          default:
            swal('error');
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
      if (data.userSelectedType === 'R') {
        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
        if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
          extraAddr += data.bname;
        }
        // 건물명이 있고, 공동주택일 경우 추가한다.
        if (data.buildingName !== '' && data.apartment === 'Y') {
          extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
        }
        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
        if (extraAddr !== '') {
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
