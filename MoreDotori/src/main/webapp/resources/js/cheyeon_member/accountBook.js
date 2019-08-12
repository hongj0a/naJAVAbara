		/*제목 애니메이션 효과*/      
       $.fn.animeTitle = function(){
           var anim = $('.title_select_date').attr('data-animate');
           $('.title_select_date').addClass('animated');
           $('.title_select_date').addClass(anim);
           setTimeout(function() {
               $('.title_select_date').removeClass(anim);
           }, 1000); 
       };

       //가계부 사용 목록 가져오기 (일별)
       $.fn.getInOutTrs = function(){
    	   $.ajax({
    		   type: "GET",
			   url : "book/iotList.do",
			   dataType : "json",
			   data : { M_id: "inhee@naver.com",
				   		yyyy: $(".form_select_year_val.out_form").val(),
				   		mmmm: $(".form_select_month_val.out_form").val(),
				   		dddd: $(".form_select_day_val.out_form").val()},
			   success : function(data){
				   var content = "";
				   if(data.length > 0){
					   for(i=0; i<data.length; i++){
						   if(data[i].C_inout){
							   content += "<tr>";
							   content += "<td style='display:none'>"+ data[i].IOT_seq + "</td>";
							   content += "<td>"+ data[i].C_inout +"</td>";
							   content += "<td colspan='2'>"+ data[i].IOT_asset + " ===> ";
							   content += data[i].IOT_assetgori +"</td>";
							   content += "<td>"+ data[i].IOT_memo +"</td>";
							   content += "<td>"+ data[i].IOT_money +"</td>";
							   content += "<td>";
							   content += "<span onclick=''>"+ "수정" +"</span>";
							   content += "<span>/</span>";
							   content += "<span onclick=''>"+ "삭제" +"</span>";
							   content += "</td>";
							   content += "</tr>";						   
						   }else{
							   content += "<tr>";
							   content += "<td style='display:none'>"+ data[i].IOT_seq + "</td>";
							   content += "<td>"+ data[i].C_inout +"</td>";
							   content += "<td>"+ data[i].IOT_asset +"</td>";
							   content += "<td>"+ data[i].IOT_assetgori +"</td>";
							   content += "<td>"+ data[i].IOT_memo +"</td>";
							   content += "<td>"+ data[i].IOT_money +"</td>";
							   content += "<td>";
							   content += "<span onclick=''>"+ "수정" +"</span>";
							   content += "<span>/</span>";
							   content += "<span onclick=''>"+ "삭제" +"</span>";
							   content += "</td>";
							   content += "</tr>";
						   }
						    $('.account_table > tbody:last').append(content);	
					   }		   
				   }else{
					   content += "<tr>";
					   content += "<td colspan='6'> 해당 일에 [수입/지출/이체] 내역이 없습니다. </td>"
					   content += "</tr>";
					   $('.account_table > tbody:last').append(content);	
				   }
			   },
			   error:function(request,status,error){
		          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       }
			   
    	   });
       }



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
    		$(".form_select_year_val").val(tyyyy);
    		$(".form_select_month_val").val(tmm);
    		$(".form_select_day_val").val(tdd);
    		$(".back_today").text('today : '+tday);
    		
    		$.fn.getInOutTrs();
    		$.fn.animeTitle();
       };
       
       
       //메소드실행
       $.fn.settingToday();

       
       //클릭이벤트(달력클릭)
  	   var preyyyy = $(".form_select_year_val").val();
  	   var premmmm = $(".form_select_month_val").val();
  	   var predddd = $(".form_select_day_val").val();
  	   
       calendar.onDateClick(function(event, date){
          console.log(jsCalendar.tools.dateToString(date, 'YYYY-MM-DD', 'en'));
          preyyyy = jsCalendar.tools.dateToString(date, 'YYYY', 'en');
          premmmm = jsCalendar.tools.dateToString(date, 'MM', 'en');
          predddd = jsCalendar.tools.dateToString(date, 'DD', 'en');
          
          calendar.set(date);

          sday = preyyyy+'년 '+premmmm+'월 '+predddd+'일';
	  	  $(".title_select_date").text(sday);
	  	  
	  	  $(".form_select_year_val").val(preyyyy);
	      $(".form_select_month_val").val(premmmm);
		  $(".form_select_day_val").val(predddd);	  	  
		  
		  $.fn.getInOutTrs();
		  $.fn.animeTitle();
       });
       
       
       /*폼작성*/
       //[1] 지출폼 내용 clear
       $.fn.clearInsertOut = function(){
    	   console.log('지출 폼 내용 삭제');
    	   $('.form_money .out_form').val('');
    	   $('.form_cont .out_form').val('');
    	   $(".form_select0 .out_form option:eq(0)").prop("selected", true);
    	   $(".form_select1 .out_form option:eq(0)").prop("selected", true);
    	   $(".form_select2 .out_form option:eq(0)").prop("selected", true);
       };
       
       //[2] 이체폼 내용 clear
       $.fn.clearInsertTrs = function(){
    	   console.log('이체 폼 내용 삭제');
    	   $('.form_money .trs_form').val('');
    	   $('.form_cont .trs_form').val('');
    	   $(".form_select0 .trs_form option:eq(0)").prop("selected", true);
    	   $(".form_select1 .trs_form option:eq(0)").prop("selected", true);
    	   $(".form_select2 .trs_form option:eq(0)").prop("selected", true);
       };
       
       //[1] 수입/지출폼 내용 저장 및 html 추가
       $.fn.saveInsertOut = function(){
    	   console.log('지출 폼 내용 저장');
    	   
    	   if( $(".form_select0 .out_form option:selected").val()==''){
    		   alert('대분류를 선택해주세요');
    	   }else if( $(".form_select1 .out_form option:selected").val()==''){
    		   alert('자산종류를 선택해주세요');
    	   }else if( $(".form_select2 .out_form option:selected").val()==''){
    		   alert('내역분류를 선택해주세요');
    	   }else if($('.form_money .out_form').val()==''){
    		   alert('액수를 입력해주세요');
    	   }else if($('.form_cont .out_form').val()==''){
    		   alert('내용을 입력해주세요');
    	   }else{
    		   //db저장로직
    		   //serialize는 form의 값들을 querystring 형태로 만들어주는 겁니다..
    		   //즉 name1=123&name2=456 이런 형식의 문자열로 만들어주는거죠..
    		   $.ajax({
    			   type: "POST",
    			   url : "book/insertIO.do",
    			   data : $("#inoutInsertForm").serialize(),
    			   success : function(data){
    				   if( data == "success"){
    					   $.fn.getInOutTrs();
    				   }else{
    					   alert('입력실패');
    				   }
    			   },
    			   error:function(request,status,error){
    		          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    		       }
    		   });
    		   
    		   //입력내용 삭제
    		   $.fn.clearInsertOut();
    	   }

       };
       
       //[2] 이체폼 내용 저장
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
    		   $.ajax({
    			   type: "POST",
    			   url : "book/insertTrs.do",
    			   data : $("#trsInsertForm").serialize(),
    			   success : function(data){
    				   if( data == "success"){
    					   $.fn.getInOutTrs();
    				   }else{
    					   alert('입력실패');
    				   }
    			   },
    			   error:function(request,status,error){
    		          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    		       }
    		   });
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
       
       //버튼이벤트
       $(".back_today").click(function(){
    	   $.fn.settingToday();
    	   
    	   var two2day = new Date();
    	   calendar.set(two2day);
       });
              
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

	   /* Form 저장 및 내용 지우기 이벤트  */
       //1. 지출 클릭이벤트(내용지우기클릭)
       $(".clear_insert_out").click(function(){
    	   $.fn.clearInsertOut();
       });
       
       //1. 지출 클릭이벤트(저장하기클릭)
       $(".save_insert_out").click(function(){
    	   $.fn.saveInsertOut();
       });
       
       //2. 이체 클릭이벤트(내용지우기클릭)
       $(".clear_insert_trs").click(function(){
    	   $.fn.clearInsertTrs();
       });
       
       //2. 이체 클릭이벤트(저장하기클릭)
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
       var mmoney = $("#month_money").val();
       //1) 수정버튼
       $(".badge_update").click(function(){
    	 $("#month_money").attr("readonly", false);
    	 $("#month_money").css({"background-color": "white", "border": "1px solid gray"});
    	 
    	 $(".badge_save").css("display", "inline-block");
    	 $(".badge_cancle").css("display", "inline-block");
    	 
    	 $(".badge_update").css("display", "none");
       });
       
       //2) 저장버튼
       $(".badge_save").click(function(){
    	 $("#month_money").attr("readonly", true);
    	 $("#month_money").css({"background-color": "#ffffff00", "border": "1px solid #f4f7fa"});
    	 
    	 $(".badge_save").css("display", "none");
    	 $(".badge_cancle").css("display", "none");
    	 
    	 $(".badge_update").css("display", "inline-block");   
    	 
    	 mmoney = $("#month_money").val();
    	 alert('저장로직짜셈');
       });
       
       //3) 취소버튼
       $(".badge_cancle").click(function(){
    	 $("#month_money").val(mmoney);
      	 $("#month_money").attr("readonly", true);
      	 $("#month_money").css({"background-color": "#ffffff00", "border": "1px solid #f4f7fa"});
	
	   	 $(".badge_save").css("display", "none");
		 $(".badge_cancle").css("display", "none");      	
      	
    	 $(".badge_update").css("display", "inline-block");  		 
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
       
       //2) 저장버튼(지,수)
       $(".badge_save_date_out_form").click(function(){
		 console.log('지출수입 날짜 저장버튼 클릭 이벤트'); 
		  
      	 var yyyy = $(".form_select_year_val.out_form").val();
      	 var mmmm = $(".form_select_month_val.out_form").val();
      	 var dddd = $(".form_select_day_val.out_form").val();
      	 
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
        	 
        	 var yymmdd = new Date(yyyy+"-"+mmmm+"-"+dddd);
        	 calendar.set(yymmdd);
        	 
             sday = yyyy+'년 '+mmmm+'월 '+dddd+'일';
   	  	  	 $(".title_select_date").text(sday);
   	  	  	 
   	  	  	 preyyyy = $(".form_select_year_val.out_form").val();
   	  	  	 premmmm = $(".form_select_month_val.out_form").val();
   	  	  	 predddd = $(".form_select_day_val.out_form").val();
   	  	  	 
   	  	  	 $(".form_select_year_val.trs_form").val(preyyyy);
   	  	  	 $(".form_select_month_val.trs_form").val(premmmm);
   	  	  	 $(".form_select_day_val.trs_form").val(predddd);
    	 }    		  
       });
       
       //2) 저장버튼(이체)
       $(".badge_save_date_trs_form").click(function(){
		 console.log('이체 날짜 저장버튼 클릭 이벤트'); 
		  
      	 var yyyy = $(".form_select_year_val.trs_form").val();
      	 var mmmm = $(".form_select_month_val.trs_form").val();
      	 var dddd = $(".form_select_day_val.trs_form").val();
      	 
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
        	 
        	 var yymmdd = new Date(yyyy+"-"+mmmm+"-"+dddd);
        	 calendar.set(yymmdd);
        	 
             sday = yyyy+'년 '+mmmm+'월 '+dddd+'일';
   	  	  	 $(".title_select_date").text(sday);
   	  	  	 
   	  	  	 preyyyy = $(".form_select_year_val.trs_form").val();
   	  	  	 premmmm = $(".form_select_month_val.trs_form").val();
   	  	  	 predddd = $(".form_select_day_val.trs_form").val();
   	  	  	 
   	  	  	 $(".form_select_year_val.out_form").val(preyyyy);
   	  	  	 $(".form_select_month_val.out_form").val(premmmm);
   	  	  	 $(".form_select_day_val.out_form").val(predddd);
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
       
       
       //자산분류 미선택시
       $(".form_select1 .out_form").click(function(){
    	   if($(".form_select0 .out_form option:selected").val()==''){
    		alert('대분류를 선택해주세요');
     	    $(".form_select1 .out_form option:eq(0)").prop("selected", true);   		
    		$(".form_select0 .out_form").focus();
    	   }
       });
       
       $(".form_select2 .out_form").click(function(){
    	   if($(".form_select0 .out_form option:selected").val()==''){
    		   alert('대분류를 선택해주세요');
       	       $(".form_select2 .out_form option:eq(0)").prop("selected", true); 
    		   $(".form_select0 .out_form").focus();
    		   $(".form_select2 .out_form .in_opt").css("display", "none");
    		   $(".form_select2 .out_form .out_opt").css("display", "none");
    	   
    	   //IO001 : 수입, IO002 : 지출   
    	   }else if($(".form_select0 .out_form option:selected").val()=='IO001'){
    		   $(".form_select2 .out_form .in_opt").css("display", "inline-block");
    		   $(".form_select2 .out_form .out_opt").css("display", "none");
    		   
    	   }else if($(".form_select0 .out_form option:selected").val()=='IO002'){
    		   $(".form_select2 .out_form .in_opt").css("display", "none");
    		   $(".form_select2 .out_form .out_opt").css("display", "inline-block");
    	   }
       });
              
       
       //input엔터키 못먹게하기
       $('input[type="text"]').keydown(function() {
    	    if (event.keyCode === 13) {
    	        event.preventDefault();
    	    }
    	});
       
