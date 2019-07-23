	    $("#select-month").monthPicker();

	    var ttday = new Date();
	    var ttmonth = ttday.getMonth()+1;
	    if(ttmonth <= 9){
	    	ttmonth = '0'+ttmonth;
	    }
	    
       //자산분류 미선택시
       $(".form_select1 .inout_form").click(function(){
    	   if($(".form_select0 .inout_form option:selected").val()==''){
    		alert('대분류를 선택해주세요');
     	    $(".form_select1 .inout_form option:eq(0)").prop("selected", true);   		
    		$(".form_select0 .inout_form").focus();
    	   }
       });
       
       $(".form_select2 .inout_form").click(function(){
    	   if($(".form_select0 .inout_form option:selected").val()==''){
    		   alert('대분류를 선택해주세요');
       	       $(".form_select2 .inout_form option:eq(0)").prop("selected", true); 
    		   $(".form_select0 .inout_form").focus();
    		   $(".form_select2 .inout_form .in_opt").css("display", "none");
    		   $(".form_select2 .inout_form .out_opt").css("display", "none");
    		   
    	   }else if($(".form_select0 .inout_form option:selected").val()=='수입'){
    		   $(".form_select2 .inout_form .in_opt").css("display", "inline-block");
    		   $(".form_select2 .inout_form .out_opt").css("display", "none");
    		   
    	   }else if($(".form_select0 .inout_form option:selected").val()=='지출'){
    		   $(".form_select2 .inout_form .in_opt").css("display", "none");
    		   $(".form_select2 .inout_form .out_opt").css("display", "inline-block");
    	   }
       });	    
	    
       /*폼작성*/
       //[1] 수입및지출 내용 clear
       $.fn.clearInsertInOut = function(){
    	   console.log('지출 폼 내용 삭제');
    	   $('.form_money .inout_form').val('');
    	   $('.form_cont .inout_form').val('');
    	   $(".form_select0 .inout_form option:eq(0)").prop("selected", true);
    	   $(".form_select1 .inout_form option:eq(0)").prop("selected", true);
    	   $(".form_select2 .inout_form option:eq(0)").prop("selected", true);
       };
       
       //[2] 수입및지출 내용 저장
       $.fn.saveInsertInOut = function(){
    	   console.log('지출 폼 내용 저장');
    	   
    	   if( $(".form_select0 .inout_form option:selected").val()==''){
    		   alert('대분류를 선택해주세요');
    	   }else if( $(".form_select1 .inout_form option:selected").val()==''){
    		   alert('자산종류를 선택해주세요');
    	   }else if( $(".form_select2 .inout_form option:selected").val()==''){
    		   alert('내역분류를 선택해주세요');
    	   }else if($('.form_money .inout_form').val()==''){
    		   alert('액수를 입력해주세요');
    	   }else if($('.form_cont .inout_form').val()==''){
    		   alert('내용을 입력해주세요');
    	   }else{
    		   //db저장로직
    		   alert('html만 추가된거임 DB추가로직짜야함');
    		   //입력내용 삭제
    		   $.fn.clearInsertInOut();
    	       //모달 클릭이벤트
    		   $(".close").trigger("click");
    	   }
       };
       
       //[1] 이체 내용 지우기
       $.fn.clearInsertTrs = function(){
    	   console.log('이체 폼 내용 삭제');
    	   $('.form_money .trs_form').val('');
    	   $('.form_cont .trs_form').val('');
    	   $(".form_select0 .trs_form option:eq(0)").prop("selected", true);
    	   $(".form_select1 .trs_form option:eq(0)").prop("selected", true);
    	   $(".form_select2 .trs_form option:eq(0)").prop("selected", true);
       }; 
       
       //[2] 이체 내용 저장하기
       $.fn.saveInsertTrs = function(){
    	   console.log('수입 폼 내용 저장');
    	   
    	   if( $(".form_select1 .trs_form option:selected").val()==''){
    		   alert('출금 자산종류를 선택해주세요');
    	   }else if( $(".form_select1 .trs_form option:selected").val()==''){
    		   alert('출금 자산종류를 선택해주세요');
    	   }else if( $(".form_select0 .trs_form option:selected").val()==''){
    		   alert('입금 자산종류를 선택해주세요');
    	   }else if($('.form_money .trs_form').val()==''){
    		   alert('액수를 입력해주세요');
    	   }else if($('.form_cont .trs_form').val()==''){
    		   alert('내용을 입력해주세요');
    	   }else{
    		   //db저장로직
    		   alert('html만 추가된거임 DB추가로직짜야함');
    		   //입력내용 삭제
    		   $.fn.clearInsertTrs();
    		   //모달 클릭이벤트
    		   $(".close").trigger("click");
    	   }
       };       
       
       //숫자입력시 컴마넣기
       $.fn.addCommas = function(x){
    	   return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
       };

       $.fn.removeCommas = function(x){
	   	    if(!x || x.length == 0) return "";
		    else return x.split(",").join("");
       };       
       
       //입력이벤트(액수입력~숫자만,컴마)
		$("input:text[numberOnly]").on("focus", function() {
		    var x = $(this).val();
		    x = $.fn.removeCommas(x);
		    $(this).val(x);
		}).on("focusout", function() {
		    var x = $(this).val();
		    if(x && x.length > 0) {
		        if(!$.isNumeric(x)) {
		            x = x.replace(/[^0-9]/g,"");
		        }
		        x = $.fn.addCommas(x);
		        $(this).val(x);
		    }
		}).on("keyup", function() {
		    $(this).val($(this).val().replace(/[^0-9]/g,""));
		});
		
	    //입력이벤트(날짜입력~숫자만)
		$(".form_select_date_val").on("keyup", function() {
		    $(this).val($(this).val().replace(/[^0-9]/g,""));
		});      
       
       /*날짜버튼 이벤트*/
       //1) 수정버튼
       $(".badge_update_date").click(function(){
    	 $(".form_select_date_val").attr("readonly", false);
    	 $(".form_select_date_val").css({"background-color": "white", "border": "1px solid gray"});
    	 
    	 $(".badge_save_date").css("display", "inline-block");
    	 $(".badge_cancle_date").css("display", "inline-block");
    	 
    	 $(".badge_update_date").css("display", "none");
       });
       
       //2) 저장버튼
       //db에서 이전 년도정보 넣어주셈 *******************
       //var preyyyy= $(".form_select_year_val").val();
  	   var preyyyy = 0;
  	   var premmmm = 0;
  	   var predddd = 0;      
       
       $(".badge_save_date").click(function(){
      	 var yyyy = $(".form_select_year_val").val();
      	 var mmmm = $(".form_select_month_val").val();
      	 var dddd = $(".form_select_day_val").val();
      	 
    	 if(yyyy==""|mmmm==""|dddd==""){
    		alert('날짜를 입력해주세요');
    	 }else if(mmmm<=0|mmmm>=13|dddd<=0|dddd>=32){
    		alert('날짜를 입력해주세요');
    	 }else{
        	 $(".form_select_date_val").attr("readonly", true);
        	 $(".form_select_date_val").css({"background-color": "#ffffff00", "border": "1px solid #f4f7fa"});
        	 
        	 $(".badge_save_date").css("display", "none");
        	 $(".badge_cancle_date").css("display", "none");
        	 
        	 $(".badge_update_date").css("display", "inline-block");
        	 
        	 /*
        	 var yymmdd = new Date(yyyy+"-"+mmmm+"-"+dddd);
        	 calendar.set(yymmdd);
        	 */
        	 
             sday = yyyy+'년 '+mmmm+'월 '+dddd+'일';
   	  	  	 $(".title_select_date").text(sday);
   	  	  	 
   	  	  	 preyyyy = $(".form_select_year_val").val();
   	  	  	 premmmm = $(".form_select_month_val").val();
   	  	  	 predddd = $(".form_select_day_val").val();   	  	  	 
    	 }
       });
       
       //3) 취소버튼
       $(".badge_cancle_date").click(function(){
      	 $(".form_select_year_val").val(preyyyy);
      	 $(".form_select_month_val").val(premmmm);
      	 $(".form_select_day_val").val(predddd);    	   
    	   
      	 $(".form_select_date_val").attr("readonly", true);
      	 $(".form_select_date_val").css({"background-color": "#ffffff00", "border": "1px solid #f4f7fa"});
	
	   	 $(".badge_save_date").css("display", "none");
		 $(".badge_cancle_date").css("display", "none");      	
      	
    	 $(".badge_update_date").css("display", "inline-block");  		 
       });
       
	   /* Form 저장 및 내용 지우기 이벤트  */
       //1. 수입지출 클릭이벤트(내용지우기클릭)
       $(".clear_insert_inout").click(function(){
    	   $.fn.clearInsertInOut();
       });
       
       //1. 수입지출 클릭이벤트(저장하기클릭)
       $(".save_insert_inout").click(function(){
    	   $.fn.saveInsertInOut();
       });

       //2. 이체 클릭이벤트(내용지우기클릭)
       $(".clear_insert_trs").click(function(){
    	   $.fn.clearInsertTrs();
       });
       
       //2. 이체 클릭이벤트(저장하기클릭)
       $(".save_insert_trs").click(function(){
    	   $.fn.saveInsertTrs();
       });
       
       	//제목
	    $("#select-month").text(ttday.getFullYear()+'년 '+ ttmonth + '월');
	   