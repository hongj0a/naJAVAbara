		/*제목 애니메이션 효과*/      
       $.fn.animeTitle = function(){
           var anim = $('.title_select_date').attr('data-animate');
           $('.title_select_date').addClass('animated');
           $('.title_select_date').addClass(anim);
           setTimeout(function() {
               $('.title_select_date').removeClass(anim);
           }, 1000); 
       };

		/*달력*/
	   var calendar = jsCalendar.new("#my-calendar");
       
       $.fn.settingToday = function () {
           var tday = new Date();
           var tdd = tday.getDate();
           var tmm = tday.getMonth()+1; //January is 0!
           var tyyyy = tday.getFullYear();

           if(tdd<10) { tdd='0'+tdd } 
           if(tmm<10) { tmm='0'+tmm }
    		
           tday = tyyyy+'년 '+tmm+'월 '+tdd+'일';
           
    		$(".title_select_date").text(tday);
    		$(".form_select_date").text(tday);
    		$(".form_select_date_val").val(tyyyy+''+tmm+''+tdd);
    		$(".back_today").text('today : '+tday);
    		
    		$.fn.animeTitle();
       };
       
       //메소드실행
       $.fn.settingToday();

       //클릭이벤트(달력클릭)
       calendar.onDateClick(function(event, date){
          console.log(jsCalendar.tools.dateToString(date, 'YYYY-MM-DD', 'en'));
          year = jsCalendar.tools.dateToString(date, 'YYYY', 'en');
          month = jsCalendar.tools.dateToString(date, 'MM', 'en');
          day = jsCalendar.tools.dateToString(date, 'DD', 'en');
          
          calendar.set(date);

          sday = year+'년 '+month+'월 '+day+'일';
          ssday = year+''+month+''+day;
	  	  $(".title_select_date").text(sday);
		  $(".form_select_date").text(sday);
		  $(".form_select_date_val").val(ssday);
		  
		  $.fn.animeTitle();
       });
       
       /*폼작성*/
       //[1] 지출폼 내용 clear
       $.fn.clearInsertOut = function(){
    	   console.log('지출 폼 내용 삭제');
    	   $('.form_money .out_form').val('');
    	   $('.form_cont .out_form').val('');
    	   $(".form_select1 .out_form option:eq(0)").prop("selected", true);
    	   $(".form_select2 .out_form option:eq(0)").prop("selected", true);
       };
       
       //[2] 수입폼 내용 clear
       $.fn.clearInsertIn = function(){
    	   console.log('수입 폼 내용 삭제');
    	   $('.form_money .in_form').val('');
    	   $('.form_cont .in_form').val('');
    	   $(".form_select1 .in_form option:eq(0)").prop("selected", true);
    	   $(".form_select2 .in_form option:eq(0)").prop("selected", true);
       };

       //[3] 이체폼 내용 clear
       $.fn.clearInsertTrs = function(){
    	   console.log('이체 폼 내용 삭제');
    	   $('.form_money .trs_form').val('');
    	   $('.form_cont .trs_form').val('');
    	   $(".form_select1 .trs_form option:eq(0)").prop("selected", true);
    	   $(".form_select2 .trs_form option:eq(0)").prop("selected", true);
       };       

       //[1] 지출폼 내용 저장 및 html 추가
       $.fn.saveInsertOut = function(){
    	   console.log('지출 폼 내용 저장');
    	   
    	   if( $(".form_select1 .out_form option:selected").val()==''){
    		   alert('자산종류를 선택해주세요');
    	   }else if( $(".form_select2 .out_form option:selected").val()==''){
    		   alert('지출내역분류를 선택해주세요');
    	   }else if($('.form_money .out_form').val()==''){
    		   alert('지출액수를 입력해주세요');
    	   }else if($('.form_cont .out_form').val()==''){
    		   alert('내용을 입력해주세요');
    	   }else{
    		   //db저장로직
    		   alert('html만 추가된거임 DB추가로직짜야함');
/*    		   
    		   var tdStyle = '<td>';
    		   if($(".form_categori").val()=='지출'){
    			   tdStyle= '<td class="form_money_out">';
    		   }else if($(".form_categori").val()=='수입'){
    			   tdStyle= '<td class="form_money_in">';
    		   }

    		   //html 추가로직
    		   var selDate = $(".form_select_date_val").val();
    		   console.log(selDate);
    		   $(".account_table tbody:last").append(
	    			'<tr>'+
    				'<td>'+ $(".form_categori").val() +'</td>'+
    				'<td>'+ $(".form_select1 .out_form option:selected").val() +'</td>'+
    				'<td>'+ $(".form_select2 .out_form option:selected").val() +'</td>'+
    				'<td>'+ $('.form_cont .out_form').val() +'</td>'+
    				tdStyle + $('.form_money .out_form').val() +'</td>'+
    				'<td class="delete_row" onclick="$.fn.delRow(this)">'+ '삭제' +'</td>'+
	    			'</tr>'    				   
    		   );
*/
    		   //입력내용 삭제
    		   $.fn.clearInsertOut();
    	   }

       };

       //[2] 수입폼 내용 저장
       $.fn.saveInsertIn = function(){
    	   console.log('수입 폼 내용 저장');
    	   
    	   if( $(".form_select1 .in_form option:selected").val()==''){
    		   alert('자산종류를 선택해주세요');
    	   }else if( $(".form_select2 .in_form option:selected").val()==''){
    		   alert('수입내역분류를 선택해주세요');
    	   }else if($('.form_money .in_form').val()==''){
    		   alert('수입액수를 입력해주세요');
    	   }else if($('.form_cont .in_form').val()==''){
    		   alert('내용을 입력해주세요');
    	   }else{
    		   //db저장로직
    		   alert('html만 추가된거임 DB추가로직짜야함');
    		   //입력내용 삭제
    		   $.fn.clearInsertIn();
    	   }
       };

       //[3] 이체폼 내용 저장
       $.fn.saveInsertTrs = function(){
    	   console.log('수입 폼 내용 저장');
    	   
    	   if( $(".form_select1 .trs_form option:selected").val()==''){
    		   alert('출금 자산종류를 선택해주세요');
    	   }else if( $(".form_select2 .trs_form option:selected").val()==''){
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
    	   }
       };
       
/*
       //행삭제
       $.fn.delRow = function(obj){
    	   alert('삭제로직짜야함 html에서만 삭제된거임');
    	   $(obj).parent().fadeTo(1000, 0.01, function(){ 
    		    $(this).slideUp(150, function() {
    		        $(this).remove(); 
    		    }); 
    		});
       };
*/
       
       //숫자입력시 컴마넣기
       $.fn.addCommas = function(x){
    	   return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
       };

       $.fn.removeCommas = function(x){
	   	    if(!x || x.length == 0) return "";
		    else return x.split(",").join("");
       };
              
       //입력이벤트(액수입력~숫자만,콤마추가)
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

	   /* Form 저장 및 내용 지우기 이벤트  */
       //1. 지출 클릭이벤트(내용지우기클릭)
       $(".clear_insert_out").click(function(){
    	   $.fn.clearInsertOut();
       });
       
       //1. 지출 클릭이벤트(저장하기클릭)
       $(".save_insert_out").click(function(){
    	   $.fn.saveInsertOut();
       });
       
       //2. 수입 클릭이벤트(내용지우기클릭)
       $(".clear_insert_in").click(function(){
    	   $.fn.clearInsertIn();
       });
       
       //2. 수입 클릭이벤트(저장하기클릭)
       $(".save_insert_in").click(function(){
    	   $.fn.saveInsertIn();
       });       

       //3. 이체 클릭이벤트(내용지우기클릭)
       $(".clear_insert_trs").click(function(){
    	   $.fn.clearInsertTrs();
       });
       
       //3. 이체 클릭이벤트(저장하기클릭)
       $(".save_insert_trs").click(function(){
    	   $.fn.saveInsertTrs();
       });
       
       //차트 클릭이벤트
       $(".chart_menu .row:first-child .form-group div:last-child label").click(function(){
    	   $(".highcharts-series-0").trigger("click");
       });
       
       $(".chart_menu .row:last-child .form-group div:last-child label").click(function(){
    	   $(".highcharts-series-1").trigger("click");
       });
       
       
       /*한달예산버튼 이벤트*/
       //1) 수정버튼
       $(".badge_update").click(function(){
    	 $("#month_money")  
       });
       
       //2) 저장버튼
       //3) 취소버튼
       
       //input엔터키 못먹게하기
       $('input[type="text"]').keydown(function() {
    	    if (event.keyCode === 13) {
    	        event.preventDefault();
    	    }
    	});
       
