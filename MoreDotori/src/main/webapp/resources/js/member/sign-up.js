$(document).ready(function() {
      // choose profile-image
      $("#choose-image").on('change',	function() {
			if (this.files && this.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#profile-image').attr('src',e.target.result);
				}
				reader.readAsDataURL(this.files[0]);
			}
	  });
      
      	var date = new Date();
		var year = date.getFullYear();
		var optionIndex = 0;

		for(var i=year-100; i<=year; i++) {
			$('#birth-year').add(new Option(i+"년",i),optionIndex++);                        
		}

		selectValue = $('#birth-month'); 
		optionIndex = 0;

		for(i=1; i<=12; i++) {
			selectValue.add(new Option(i+"월",i),optionIndex++);
		}

		selectValue = $('#birth-day');
		optionIndex = 0;
		
		for(i=1; i<=31; i++) {
			selectValue.add(new Option(i+"일",i),optionIndex++);
		}
		alert(year+'년');

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
              'id': {
                  required: true,
                  email: true
              },
              'name': {
            	  required: true
              },
              'nickname': {
            	  required: true
              },
              'password': {
            	  required: true,
            	  minlength: 8,
                  maxlength: 16
              },
              'password-confirm': {
            	  required: true,
                  minlength: 8,
                  equalTo: 'input[name="password"]'
              },
              'phone': {
                  required: true,
                  minlength:10,
                  maxlength:11,
                  digits:true
              },
              'gender': {
            	  required: true
              },
              'birth-year': {
            	  required: true
              },
			  'birth-month': {
				  required: true
              },
			  'birth-day': {
				  required: true
              },
              'job': {
            	  required: true
              },
			  'position': {
				  required: true
              },
			  'career': {
				  required: true
              },
              'addr-details': {
            	  required: true
              },
              'license-num1': {
            	  required: true,
            	  digits: true
              },
              'license-num2': {
            	  digits: true
              },
              'license-num3': {
            	  digits: true
              },
              'introduction': {
            	  required: true,
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
              $parent.removeClass('mb-4');
              $parent.addClass('mb-2');
          },
          unhighlight: function(element) {
        	  var $parent = $(element).parents('.form-group');
              $parent.removeClass('mb-2');
              $parent.addClass('mb-4');
              
              $(element).parents('.form-group').find('.is-invalid').removeClass('is-invalid');
          }
      });
});