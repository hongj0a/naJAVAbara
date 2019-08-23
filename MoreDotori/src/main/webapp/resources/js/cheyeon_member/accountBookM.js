/**
 * monthPicker 0.1
 * http://stove99.tistory.com
 * 2011.09.19
 */
String.prototype.string = function(len) { var s = '', i = 0; while (i++ < len) { s += this; } return s; };
String.prototype.zf = function(len) { return "0".string(len - this.length) + this; };
Number.prototype.zf = function(len) { return this.toString().zf(len); };
		
		(function($){
			$.fn.monthPicker = function(opt){
				var input = null;
				var curYear = null;
				var pop = $("<div><div class='year'><span><a class='changeYear' data-amount='-1'>◀</a></span><strong id='curYear'></strong><span><a class='changeYear' data-amount='1'>▶</a></span></div><ul id='monthList'></ul></div>").addClass("monthPicker");
				var monthList = pop.find("#monthList");
		
				for( var idx=1; idx<=12; idx++ ) monthList.append($("<li><a></a></li>").data("month", idx).find("a").text(idx+"월").parent());
		
				pop.css({
					position : "absolute",
					top : this.offset().top+this.outerHeight()+2,
					left : this.offset().left,
					background : "#fff"
				});
		
				$("body").append(pop);
		
		
				this.click(function(){
					input = $(this);
					curYear = $(this).text().split("년").length==2 ? $(this).text().split("년")[0] : new Date().getFullYear();
					$("#curYear").text(curYear+"년");
		
					pop.css({
						top : $(this).offset().top+$(this).outerHeight()+2,
						left : $(this).offset().left
					});
					pop.show();
				});
		
				pop.mouseleave(function(){
					pop.hide();
				});
		
				pop.find(".changeYear").click(function(){
					curYear = parseInt(curYear,10) + parseInt($(this).data("amount"), 10);
					$("#curYear").text(curYear+"년");
				});
		
				pop.find("#monthList li").click(function(){
					$("#select-month").text(curYear + "년 " + $(this).data("month").zf(2) + "월");
					$.fn.getInOutTrs(curYear,$(this).data("month").zf(2));
					pop.hide();
				});
			};
		})(jQuery);

   //숫자컴마메소드
   $.fn.comma = function(num){
	    var len, point, str; 
	       
	    num = num + ""; 
	    point = num.length % 3 ;
	    len = num.length; 
	   
	    str = num.substring(0, point); 
	    while (point < len) { 
	        if (str != "") str += ","; 
	        str += num.substring(point, point + 3); 
	        point += 3; 
	    } 
	     
	    return str;
   };
		
	//리스트가져오기
	$.fn.getInOutTrs = function(year, month){
 	   $.ajax({
		   type: "GET",
		   url : "book2/iotList.do",
		   dataType : "json",
		   data : { M_id: "inhee@naver.com",
			   		yyyy: year,
			   		mmmm: month
		   },
		   success : function(data){
			   var content = "";
			   $('.account_table > tbody').empty();
			   if(data.length > 0){
				   for(i=0; i<data.length; i++){
					   if(data[i].C_inout == "이체"){
						   content += "<tr>";
						   content += "<td style='display:none' class=''>"+ data[i].IOT_seq + "</td>";
						   content += "<td class=''>"+ data[i].IOT_date +"</td>";
						   content += "<td class=''>"+ data[i].C_inout + "</td>";
						   content += "<td colspan='2' class=''><span class=''>"+ data[i].IOT_assetgori + "</span> ===> <span class=''>";
						   content += data[i].IOT_asset +"</span></td>";
						   content += "<td class=''>"+ data[i].IOT_memo +"</td>";
						   content += "<td class=''>"+ $.fn.comma(data[i].IOT_money) +"</td>";
						   content += "<td class='row_setting'>";
						   content += "<button type='button' class='btn btn-primary' data-toggle='modal' data-target='#transferModal'>수정</button>";
						   content += "/<span onclick='' class='delete_trs_row'>"+ "삭제" +"</span>";
						   content += "</td>";
						   content += "</tr>";		   
					   }else{
						   content += "<tr>";
						   content += "<td style='display:none' class=''>"+ data[i].IOT_seq + "</td>";
						   content += "<td class=''>"+ data[i].IOT_date +"</td>";
						   content += "<td class=''>"+ data[i].C_inout +"</td>";
						   content += "<td class=''>"+ data[i].IOT_asset +"</td>";
						   content += "<td class=''>"+ data[i].IOT_assetgori +"</td>";
						   content += "<td class=''>"+ data[i].IOT_memo +"</td>";
						   
						   if(data[i].C_inout == "수입"){
							   content += "<td class='form_money_in'>"+ $.fn.comma(data[i].IOT_money) +"</td>";
						   }else{
							   content += "<td class='form_money_out'>"+ $.fn.comma(data[i].IOT_money) +"</td>";
						   }
						   
						   content += "<td class='row_setting'>";
						   content += "<button type='button' class='btn btn-primary' data-toggle='modal' data-target='#inoutModal'>수정</button>"
						   content += "/<span class='delete_io_row'>"+ "삭제" +"</span>";
						   content += "</td>";
						   content += "</tr>";		   
					   }
				   }
				   $('.account_table > tbody:last').append(content);
			   }else{
				   content += "<tr>";
				   content += "<td colspan='7'> 해당 일에 [수입/지출/이체] 내역이 없습니다. </td>"
				   content += "</tr>";	
				   $('.account_table > tbody:last').append(content);			   
			 }
		   },
		   error:function(request,status,error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
	   });
	}
		
//////////////////////////////////////////////////////////////////////////////////////////////////////////
		
	$("#select-month").monthPicker();
	
    var ttday = new Date();
    var ttmonth = ttday.getMonth()+1;
    if(ttmonth <= 9){
    	ttmonth = '0'+ttmonth;
    }
    
   	//제목
    $("#select-month").text(ttday.getFullYear()+'년 '+ ttmonth + '월');
    $.fn.getInOutTrs(ttday.getFullYear(),ttmonth);
    
 //////////////////////////////////////////////////////////////////////////////////////////////////////////
    
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
		   
	   }else if($(".form_select0 .inout_form option:selected").val()=='IO001'){
		   $(".form_select2 .inout_form .in_opt").css("display", "inline-block");
		   $(".form_select2 .inout_form .out_opt").css("display", "none");
		   
	   }else if($(".form_select0 .inout_form option:selected").val()=='IO002'){
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
	   