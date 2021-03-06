var loginId = null;

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
					$('#serachingtxt').val('');
					pop.hide();
				});
			};
		})(jQuery);

   //숫자컴마메소드
   $.fn.comma = function(str){
	    str = String(str);
	    var minus = str.substring(0, 1);
	 
	    str = str.replace(/[^\d]+/g, '');
	    str = str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');

	     //음수일 경우
	    if(minus == "-") str = "-"+str;
	 
	    return str;
   };
   
   //자산 리스트 가져오기
   $.fn.getAssetList = function(){
	   $.ajax({
		   type: "GET",
		   url : "book/assetList.do",
		   dataType : "json",
		   data : { M_id: loginId },
		   success : function(data){
			if(data.length > 0){
    			for(var i=0; i<data.length; i++){
    				var option = "<option value='"+ data[i].A_seq +"'>"
    				option += data[i].A_nickname;
    				option += "</option>";
    				
    				$('.assetList').append(option);
    			}
			}else{
				var option = "<option value=''>"
				option += "등록하신 자산정보가 없습니다."
				option += "</option>";
				$('.assetList').append(option);
			}
	   },
	   error:function(request,status,error){
          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
	   });
   }   
   
	//리스트 수 가져오기
   var pageBlock = 1;
   var datasu = 0;
   $.fn.getInOutTrsCount = function(year, month){
 	   $.ajax({
		   type: "GET",
		   url : "book2/returnListCount.do",
		   dataType : "json",
		   data : { M_id: loginId,
			   		yyyy: year, 
			   		mmmm: month
		   },
		   success : function(data){
			   datasu = data;
			   
			   var view = 15;						//한 페이지당 보일 row 수
			   var pageBlockSu = 5;					//쪽블럭에 나올 쪽수
			   var pageSu = Math.ceil(data/view);	//전체 쪽수

			   var content ="";
			   $('.pageNum').empty();
			   
			   //마지막 페이지블록
			   pageBlock = Math.ceil(pageSu/pageBlockSu);
			   
			   content += "<span style='display:none;cursor:pointer' class='page_prev'> <i class='feather icon-chevron-left'></i> </span>";
			   
			   var block = 1;
			   for(var i=1; i<=pageSu; i++){
				   content += "<span style='display:none' class='pNum pBlock"+block+"'>"+i+"</span>";
				   if(i%pageBlockSu==0) block++;
			   }

			   if(pageBlock>1){
				   content += "<span style='display:none;cursor:pointer' class='page_next'> <i class='feather icon-chevron-right'></i> </span>";
			   }
			   
			   $('.pageNum').append(content);
			   
		   },
		   error:function(request,status,error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
	   });	   
   }
   
   //쪽번호 블록나누기
   $.fn.paging = function(selp){
	   $('.dataCount').text("");
	   
	   if(datasu!=0){
		   $('.dataCount').text("총 "+ datasu +"개의 내역이 검색되었습니다.");
		   
		   var pNumList = $('.pageNum').children();
		   var spanCount = $('.pNum').length;
		   var realClass = null;
		   
		   //해당페이지에 색보이게하기
		   for(var j=0; j<=spanCount; j++){
			   if((pNumList.eq(j).text())==selp){
				   pNumList.eq(j).css("color", "#F29D35");
				   var selpClass = pNumList.eq(j).attr("class");
				   var selpClassArr = selpClass.split(' ');
				   realClass = selpClassArr[1];
			   }
		   }
		   
		   for(var j=0; j<=spanCount; j++){
			   //해당페이지의 페이지블록만 보이게하기
			   if(pNumList.eq(j).hasClass(realClass)){
				   pNumList.eq(j).addClass("act");
			   }
			   
			   //현블록이 첫블록이면 prev화살표가 보이지 않게하기
			   var pBlockName = realClass.split('pBlock');
			   var pBlockNum = pBlockName[1];
			   pBlockNum *= 1;
			   if(pBlockNum>=pageBlock){
				   $('.page_next').css("display", "none");
			   }else{
				   $('.page_next').css("display", "inline-block");
			   } 
			   if(pBlockNum<=1){
				   $('.page_prev').css("display", "none");
			   }else{
				   $('.page_prev').css("display", "inline-block");
			   }		   
		   }		   
	   }
   }

   $(document).on('click', '.page_next', function(){
	   var pBlock = $('.act').attr("class");
	   var pBlockArr = pBlock.split(' ');
	   var pBlockClass = pBlockArr[1];
	   
	   var pBlockName = pBlockClass.split('pBlock');
	   var pBlockNum = pBlockName[1];

	   console.log(pBlockNum);
	   
	   $('.'+pBlockClass).removeClass("act");
	   
	   pBlockNum *= 1;	//숫자로형변환
	   pBlockNum += 1;
	   $('.pBlock'+pBlockNum).addClass("act");
	   
	   //현 블록이 마지막 블록이면 next버튼이 보이지 않게 하라
	   if(pBlockNum>=pageBlock){
		   $('.page_next').css("display", "none");
	   }else{
		   $('.page_next').css("display", "inline-block");
	   } 
	   if(pBlockNum<=1){
		   $('.page_prev').css("display", "none");
	   }else{
		   $('.page_prev').css("display", "inline-block");
	   }
   });
 
   $(document).on('click', '.page_prev', function(){
	   var pBlock = $('.act').attr("class");
	   var pBlockArr = pBlock.split(' ');
	   var pBlockClass = pBlockArr[1];
	   
	   var pBlockName = pBlockClass.split('pBlock');
	   var pBlockNum = pBlockName[1];

	   console.log(pBlockNum);
	   
	   $('.'+pBlockClass).removeClass("act");
	   
	   pBlockNum *= 1;	//숫자로형변환
	   pBlockNum -= 1;
	   $('.pBlock'+pBlockNum).addClass("act");
	   
	   //현 블록이 마지막 블록이면 next버튼이 보이지 않게 하라
	   if(pBlockNum>=pageBlock){
		   $('.page_next').css("display", "none");
	   }else{
		   $('.page_next').css("display", "inline-block");
	   } 
	   if(pBlockNum<=1){
		   $('.page_prev').css("display", "none");
	   }else{
		   $('.page_prev').css("display", "inline-block");
	   }
   });   
   
	//리스트가져오기
	$.fn.getInOutTrs = function(year, month, selp){
		if(selp == null || selp == 0){
			selp = 1;
		}
		
		$.fn.getInOutTrsCount(year, month, selp);
		
 	   $.ajax({
		   type: "GET",
		   url : "book2/iotMList.do",
		   dataType : "json",
		   data : { M_id: loginId,
			   		yyyy: year,
			   		mmmm: month,
			   		selp: selp
		   },
		   success : function(data){
			   var content = "";
			   $('.account_table > tbody').empty();
			   if(data.length > 0){
				   for(i=0; i<data.length; i++){
					   if(data[i].C_inout == "이체"){
						   content += "<tr class='trstr' data-toggle='modal' data-target='#transferModal'>";
						   content += "<td style='display:none' class=''>"+ data[i].IOT_seq + "</td>";
						   content += "<td class=''>"+ data[i].IOT_date +"</td>";
						   content += "<td class=''>"+ data[i].C_inout + "</td>";
						   content += "<td colspan='2' class=''><span class='account_tab_td3_sp1'>"+ data[i].IOT_assetgori + "</span> ===> <span class='account_tab_td3_sp2'>";
						   content += data[i].IOT_asset +"</span></td>";
						   content += "<td class=''>"+ data[i].IOT_memo +"</td>";
						   content += "<td class=''>"+ $.fn.comma(data[i].IOT_money) +"</td>";
						   content += "</tr>";		   
					   }else{
						   if(data[i].C_inout == "수입"){
							   content += "<tr class='intr' data-toggle='modal' data-target='#inoutModal'>";
						   }else{
							   content += "<tr class='outtr' data-toggle='modal' data-target='#inoutModal'>";
						   }						   
						   
						   content += "<td style='display:none' class=''>"+ data[i].IOT_seq + "</td>";
						   content += "<td class=''>"+ data[i].IOT_date +"</td>";
						   
						   if(data[i].C_inout == "수입"){
							   content += "<td class='form_money_in'>"+ data[i].C_inout +"</td>";
						   }else{
							   content += "<td class='form_money_out'>"+ data[i].C_inout +"</td>";
						   }						   
						   
						   content += "<td class=''>"+ data[i].IOT_asset +"</td>";
						   content += "<td class=''>"+ data[i].IOT_assetgori +"</td>";
						   content += "<td class=''>"+ data[i].IOT_memo +"</td>";
						   
						   if(data[i].C_inout == "수입"){
							   content += "<td class='form_money_in'>"+ $.fn.comma(data[i].IOT_money) +"</td>";
						   }else{
							   content += "<td class='form_money_out'>"+ $.fn.comma(data[i].IOT_money) +"</td>";
						   }
						   content += "</tr>";		   
					   }
				   }
				   $('.account_table > tbody:last').append(content);
			   }else{
				   content += "<tr>";
				   content += "<td colspan='7'>"
				   content += "<div class='noData_txt'> 해당 월에 수입, 지출, 이체 내역이 없습니다 </div>"
				   content += "<img src='"+contextPath+"/images/najavabara/나자바바라4.png' alt='해당 일에 입력한 데이터가 없습니다.' width='40%'>";
				   content += "</td>";
				   content += "</tr>";	
				   $('.account_table > tbody:last').append(content);			   
			 }
			   
			  $.fn.paging(selp);
		   },
		   error:function(request,status,error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
	   });
	}
	
	
	//쪽번호 클릭이벤트
	$(document).on('click', '.pNum', function(){
		var selDate = $("#select-month").text();
		selDate = selDate.split(' ');
		
		var selYear = selDate[0].split('년');
		selYear = $.trim(selYear[0]);
		
		var selMonth = selDate[1].split('월');
		selMonth = $.trim(selMonth[0]);
		
		$.fn.getInOutTrs(selYear,selMonth,$(this).text());		
	});
		
//////////////////////////////////////////////////////////////////////////////////////////////////////////
	//메소드첫실행***********************************************************************************************

    //로그인아이디 가져오기
    loginId=$("#loginId").val();
    
    
	$("#select-month").monthPicker();
	
    var ttday = new Date();
    var ttmonth = ttday.getMonth()+1;
    if(ttmonth <= 9){
    	ttmonth = '0'+ttmonth;
    }
    
   	//제목
    $("#select-month").text(ttday.getFullYear()+'년 '+ ttmonth + '월');
    $.fn.getInOutTrs(ttday.getFullYear(),ttmonth);
    
    //자산목록 가져오기
    $.fn.getAssetList();
    
    
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
	   $('.io_seq.out_form').val('0');
	   $('.form_money .inout_form').val('');
	   $('.form_cont .inout_form').val('');
	   $(".form_select0 .inout_form option:eq(0)").prop("selected", true);
	   $(".form_select1 .inout_form option:eq(0)").prop("selected", true);
	   $(".form_select2 .inout_form option:eq(0)").prop("selected", true);
	   $('.badge_cancle_date').trigger("click");
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
	   }else if($(".form_select0 .inout_form option:selected").val()=='IO001'&&$(".form_select2 .inout_form option:selected").hasClass('out_opt')){
		   alert('대분류(수입/지출)에 맞지않은 분류입니다. 다시 선택해주세요.');
	   }else if($(".form_select0 .inout_form option:selected").val()=='IO002'&&$(".form_select2 .inout_form option:selected").hasClass('in_opt')){
		   alert('대분류(수입/지출)에 맞지않은 분류입니다. 다시 선택해주세요.');
	   }else{
		   //db저장로직
		   $.ajax({
			   type: "POST",
			   url : "book/insertIO.do",
			   data : $("#inoutInsertForm").serialize(),
			   success : function(data){
				   if( data == "success"){
					   	var selYear = $('.form_select_year_val.inout_form').val();
					   	var selMonth = $('.form_select_month_val.inout_form').val();
					   
						$("#select-month").text($.trim(selYear) + "년 " + $.trim(selMonth) + "월");
						$.fn.getInOutTrs($.trim(selYear),$.trim(selMonth));

					   //입력내용 삭제
					   $.fn.clearInsertInOut();
				       //모달 클릭이벤트
					   $(".close").trigger("click");
				   }else{
					   alert('입력실패');
				   }
			   },
			   error:function(request,status,error){
		          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       }
		   });		   
	   }
   };
   
   //[1] 이체 내용 지우기
   $.fn.clearInsertTrs = function(){
	   console.log('이체 폼 내용 삭제');
	   $('.trs_seq.trs_form').val('0');
	   $('.form_money .trs_form').val('');
	   $('.form_cont .trs_form').val('');
	   $(".form_select0 .trs_form option:eq(0)").prop("selected", true);
	   $(".form_select1 .trs_form option:eq(0)").prop("selected", true);
	   $(".form_select2 .trs_form option:eq(0)").prop("selected", true);
	   $('.badge_cancle_date').trigger("click");
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
		   $.ajax({
			   type: "POST",
			   url : "book/insertTrs.do",
			   data : $("#trsInsertForm").serialize(),
			   success : function(data){
				   if( data == "success"){
					   	var selYear = $('.form_select_year_val.trs_form').val();
					   	var selMonth = $('.form_select_month_val.trs_form').val();
					   
						$("#select-month").text($.trim(selYear) + "년 " + $.trim(selMonth) + "월");
						$.fn.getInOutTrs($.trim(selYear),$.trim(selMonth));
					   
					   //입력내용 삭제
					   $.fn.clearInsertTrs();
					   //모달 클릭이벤트
					   $(".close").trigger("click");
				   }else{
					   alert('입력실패');
				   }
			   },
			   error:function(request,status,error){
		          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       }
		   });		   
	   }
   };       
   
   $(".close").click(function(){
	   $('.badge_cancle_date').trigger("click");
   });
   
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
	
	//한자리 입력 시 앞에 0 붙이기
	$.fn.leadingZeros = function(date, num){
		 var zero = '';
		 date = date.toString();
		
		 if (date.length < num) {
		  for (i = 0; i < num - date.length; i++)
		   zero += '0';
		 }
		 return zero + date;			
	}	
	
    //입력이벤트(날짜입력~숫자만)
	$(".form_select_date_val").on("keyup", function() {
	    $(this).val($(this).val().replace(/[^0-9]/g,""));
	});      
   
	//입력이벤트(두자리만)
	$(".form_select_date_val2").on("keyup", function() {
	    if($(this).val()>0 && $(this).val()<10){
		    $(this).val($.fn.leadingZeros($(this).val(),2));
	    }
	    
	    if($(this).val().length==3){
	    	$(this).val($(this).val().substr(1,2));
	    }
	});	
	
   /*날짜버튼 이벤트*/
   var preyyyy = 0;
   var premmmm = 0;
   var predddd = 0;   	
	
   //1) 수정버튼
   $(".badge_update_date").click(function(){
	 $(".form_select_date_val").attr("readonly", false);
	 $(".form_select_date_val").css({"background-color": "white", "border": "1px solid gray"});
	 
	 $(".badge_save_date").css("display", "inline-block");
	 $(".badge_cancle_date").css("display", "inline-block");
	 
	 $(".badge_update_date").css("display", "none");
	 
	 preyyyy = $('.form_select_date_val.form_select_year_val').val();
	 premmmm = $('.form_select_date_val.form_select_month_val').val();
	 predddd = $('.form_select_date_val.form_select_day_val').val();
   });
   
   //2) 저장버튼
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
   
   //1. 수입지출 클릭이벤트 (삭제하기클릭)
   $(".del_insert_inout").click(function(){
		$(".badge_update_date").trigger("click");
		$(".badge_cancle_date").trigger("click");
		
	   var seq = $(".io_seq.out_form").val();
	   var yyyy = $.trim($(".form_select_year_val.inout_form").val());
	   var mmmm = $.trim($(".form_select_month_val.inout_form").val());
	   
	   $.ajax({
		   type: "POST",
		   url : "book/deleteIO.do",
		   data : {
			   seq: seq,
		   		_csrf: $('#csrf').val()
		   },
		   success : function(data){
			   if( data == "success"){
					$("#select-month").text(yyyy + "년 " + mmmm + "월");
					$.fn.getInOutTrs(yyyy,mmmm);
				   $(".close").trigger("click");
			   }else{
				   alert('삭제실패');
			   }
		   },
		   error:function(request,status,error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
	   });	   
   });

   //2. 이체 클릭이벤트(내용지우기클릭)
   $(".clear_insert_trs").click(function(){
	   $.fn.clearInsertTrs();
   });
   
   //2. 이체 클릭이벤트(저장하기클릭)
   $(".save_insert_trs").click(function(){
	   $.fn.saveInsertTrs();
   });
   
   //2. 이체 클릭이벤트 (삭제하기클릭)
   $(".del_insert_trs").click(function(){
		$(".badge_update_date").trigger("click");
	    $(".badge_cancle_date").trigger("click");
	   var seq = $(".trs_seq.trs_form").val();
	   var yyyy = $.trim($(".form_select_year_val.trs_form").val());
	   var mmmm = $.trim($(".form_select_month_val.trs_form").val());
	   
	   $.ajax({
		   type: "POST",
		   url : "book/deleteTrs.do",
		   data : {
			   seq: seq,
		   		_csrf: $('#csrf').val()
		   },
		   success : function(data){
			   if( data == "success"){
					$("#select-month").text(yyyy + "년 " + mmmm + "월");
					$.fn.getInOutTrs(yyyy,mmmm);
					
				   $(".close").trigger("click");
			   }else{
				   alert('삭제실패');
			   }
		   },
		   error:function(request,status,error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
	   }); 	   
   });

	//검색 리스트 수 가져오기
   var spageBlock = 1;
   var sdatasu = 0;
   $.fn.getSearchCount = function(searchingtxt, selp){
 	   $.ajax({
		   type: "GET",
		   url : "book2/returnSlistCount.do",
		   dataType : "json",
		   data : { M_id: loginId,
			   		searchStr: searchingtxt
		   },
		   success : function(data){
			   sdatasu = data;
			   
			   var view = 15;						//한 페이지당 보일 row 수
			   var pageBlockSu = 5;					//쪽블럭에 나올 쪽수
			   var pageSu = Math.ceil(data/view);	//전체 쪽수

			   var content ="";
			   $('.pageNum').empty();
			   
			   //마지막 페이지블록
			   spageBlock = Math.ceil(pageSu/pageBlockSu);
			   
			   content += "<span style='display:none;cursor:pointer' class='page_prevs'> <i class='feather icon-chevron-left'></i> </span>";
			   
			   var block = 1;
			   for(var i=1; i<=pageSu; i++){
				   content += "<span style='display:none' class='psNum psBlock"+block+"'>"+i+"</span>";
				   if(i%pageBlockSu==0) block++;
			   }

			   if(spageBlock>1){
				   content += "<span style='display:none;cursor:pointer' class='page_nexts'> <i class='feather icon-chevron-right'></i> </span>";
			   }
			   
			   $('.pageNum').append(content);
			   $.fn.spaging(selp);
		   },
		   error:function(request,status,error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
	   });	   
   }   
   
   //검색결과쪽번호 블록나누기
   $.fn.spaging = function(selp){
	   $('.dataCount').text("");
	   
	   if(sdatasu!=0){
		   $('.dataCount').text("총 "+ sdatasu +"개의 내역이 검색되었습니다.");
		   
		   var pNumList = $('.pageNum').children();
		   var spanCount = $('.psNum').length;
		   var realClass = null;
		   
		   //해당페이지에 색보이게하기
		   for(var j=0; j<=spanCount; j++){
			   if(pNumList.eq(j).text()==selp){
				   pNumList.eq(j).css("color", "#F29D35");
				   var selpClass = pNumList.eq(j).attr("class");
				   var selpClassArr = selpClass.split(' ');
				   realClass = selpClassArr[1];
			   }
		   }
		   
		   for(var j=0; j<=spanCount; j++){
			   //해당페이지의 페이지블록만 보이게하기
			   if(pNumList.eq(j).hasClass(realClass)){
				   pNumList.eq(j).addClass("act");
			   }
			   
			   //현블록이 첫블록이면 prev화살표가 보이지 않게하기
			   var pBlockName = realClass.split('psBlock');
			   var pBlockNum = pBlockName[1];
			   pBlockNum *= 1;
			   if(pBlockNum>=spageBlock){
				   $('.page_nexts').css("display", "none");
			   }else{
				   $('.page_nexts').css("display", "inline-block");
			   } 
			   if(pBlockNum<=1){
				   $('.page_prevs').css("display", "none");
			   }else{
				   $('.page_prevs').css("display", "inline-block");
			   }		   
		   }		   
	   }
   }

   $(document).on('click', '.page_nexts', function(){
	   var pBlock = $('.act').attr("class");
	   var pBlockArr = pBlock.split(' ');
	   var pBlockClass = pBlockArr[1];
	   
	   var pBlockName = pBlockClass.split('psBlock');
	   var pBlockNum = pBlockName[1];

	   $('.'+pBlockClass).removeClass("act");
	   
	   pBlockNum *= 1;	//숫자로형변환
	   pBlockNum += 1;
	   $('.psBlock'+pBlockNum).addClass("act");
	   
	   //현 블록이 마지막 블록이면 next버튼이 보이지 않게 하라
	   if(pBlockNum>=spageBlock){
		   $('.page_nexts').css("display", "none");
	   }else{
		   $('.page_nexts').css("display", "inline-block");
	   } 
	   if(pBlockNum<=1){
		   $('.page_prevs').css("display", "none");
	   }else{
		   $('.page_prevs').css("display", "inline-block");
	   }
   });
 
   $(document).on('click', '.page_prevs', function(){
	   var pBlock = $('.act').attr("class");
	   var pBlockArr = pBlock.split(' ');
	   var pBlockClass = pBlockArr[1];
	   
	   var pBlockName = pBlockClass.split('psBlock');
	   var pBlockNum = pBlockName[1];

	   console.log(pBlockNum);
	   
	   $('.'+pBlockClass).removeClass("act");
	   
	   pBlockNum *= 1;	//숫자로형변환
	   pBlockNum -= 1;
	   $('.psBlock'+pBlockNum).addClass("act");
	   
	   //현 블록이 마지막 블록이면 next버튼이 보이지 않게 하라
	   if(pBlockNum>=spageBlock){
		   $('.page_nexts').css("display", "none");
	   }else{
		   $('.page_nexts').css("display", "inline-block");
	   } 
	   if(pBlockNum<=1){
		   $('.page_prevs').css("display", "none");
	   }else{
		   $('.page_prevs').css("display", "inline-block");
	   }
   });   
      

   //검색메소드
   var searchingtxt = null;
   $.fn.searchingM = function(selp){
		if(selp == null || selp == 0){
			selp = 1;
		}	   
	
	   $.fn.getSearchCount(searchingtxt, selp);
 	   $.ajax({
		   type: "GET",
		   url : "book2/iotSearchList.do",
		   dataType : "json",
		   data : { M_id: loginId,
			   	    searchStr: searchingtxt,
			   	    selp: selp
		   },
		   success : function(data){
			   var content = "";
			   $('.account_table > tbody').empty();
			   if(data.length > 0){
				   for(i=0; i<data.length; i++){
					   if(data[i].C_inout == "이체"){
						   content += "<tr class='trstr' data-toggle='modal' data-target='#transferModal'>";
						   content += "<td style='display:none' class=''>"+ data[i].IOT_seq + "</td>";
						   content += "<td class=''>"+ data[i].IOT_date +"</td>";
						   content += "<td class=''>"+ data[i].C_inout + "</td>";
						   content += "<td colspan='2' class=''><span class='account_tab_td3_sp1'>"+ data[i].IOT_assetgori + "</span> ===> <span class='account_tab_td3_sp2'>";
						   content += data[i].IOT_asset +"</span></td>";
						   content += "<td class=''>"+ data[i].IOT_memo +"</td>";
						   content += "<td class=''>"+ $.fn.comma(data[i].IOT_money) +"</td>";
						   content += "</tr>";		   
					   }else{
						   if(data[i].C_inout == "수입"){
							   content += "<tr class='intr' data-toggle='modal' data-target='#inoutModal'>";
						   }else{
							   content += "<tr class='outtr' data-toggle='modal' data-target='#inoutModal'>";
						   }						   
						   
						   content += "<td style='display:none' class=''>"+ data[i].IOT_seq + "</td>";
						   content += "<td class=''>"+ data[i].IOT_date +"</td>";
						   
						   if(data[i].C_inout == "수입"){
							   content += "<td class='form_money_in'>"+ data[i].C_inout +"</td>";
						   }else{
							   content += "<td class='form_money_out'>"+ data[i].C_inout +"</td>";
						   }						   
						   
						   content += "<td class=''>"+ data[i].IOT_asset +"</td>";
						   content += "<td class=''>"+ data[i].IOT_assetgori +"</td>";
						   content += "<td class=''>"+ data[i].IOT_memo +"</td>";
						   
						   if(data[i].C_inout == "수입"){
							   content += "<td class='form_money_in'>"+ $.fn.comma(data[i].IOT_money) +"</td>";
						   }else{
							   content += "<td class='form_money_out'>"+ $.fn.comma(data[i].IOT_money) +"</td>";
						   }
						   content += "</tr>";		   
					   }
				   }
				   $('.account_table > tbody:last').append(content);
			   }else{
				   content += "<tr>";
				   content += "<td colspan='7'>"
				   content += "<div class='noData_txt'> 검색된 정보가 없습니다 </div>"
				   content += "<img src='"+contextPath+"/images/najavabara/나자바바라4.png' alt='검색 데이터가 없습니다.' width='40%'>";
				   content += "</td>";
				   content += "</tr>";	
				   $('.account_table > tbody:last').append(content);			   
			 }
			   $("#select-month").text("검색결과");
		   },
		   error:function(request,status,error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
	   });		
   }
   
   //검색클릭이벤트
   $("#searching").click(function(){
	   searchingtxt = $.trim($('#serachingtxt').val());
	   $.fn.searchingM();
   });
   
	//쪽번호 클릭이벤트
	$(document).on('click', '.psNum', function(){
		$.fn.searchingM($(this).text());
	});   
   
   //tr클릭이벤트
   $(document).on('click', '#account_table_body tr', function(){
	   var tr = $(this);
	   var td = tr.children();	
	   
	   var inout = td.eq(2).text();
	   var getDate = td.eq(1).text().split('.');
	   
	   //이체
	   if(inout == "이체"){
		   $('.trs_seq.trs_form').val(td.eq(0).text());
		   
		   $('.form_select_date_val.form_select_year_val.trs_form').val(getDate[0]);
		   $('.form_select_date_val.form_select_month_val.trs_form').val(getDate[1]);
		   $('.form_select_date_val.form_select_day_val.trs_form').val(getDate[2]);

		   $('.form_cont .trs_form').val(td.eq(4).text());
		   $('.form_money .trs_form').val(td.eq(5).text());
		   
    	   for(var i=0; i<$(".form_select1 .trs_form option").length; i++){
    		   if($(".form_select1 .trs_form option:eq("+ i +")").text()==td.eq(3).children('.account_tab_td3_sp1').html()){
    			   $(".form_select1 .trs_form option:eq("+ i +")").prop("selected", true);
    		   }
    	   }        	   
    	   
    	   for(var i=0; i<$(".form_select2 .trs_form option").length; i++){
    		   if($(".form_select2 .trs_form option:eq("+ i +")").text()==td.eq(3).children('.account_tab_td3_sp2').html()){
    			   $(".form_select2 .trs_form option:eq("+ i +")").prop("selected", true);
    		   }
    	   }    
	   
	   
	   }else{
		   $('.io_seq.out_form').val(td.eq(0).text());
		   
		   $('.form_select_date_val.form_select_year_val.inout_form').val(getDate[0]);
		   $('.form_select_date_val.form_select_month_val.inout_form').val(getDate[1]);
		   $('.form_select_date_val.form_select_day_val.inout_form').val(getDate[2]);
		   
		   $('.form_cont .inout_form').val(td.eq(5).text());
		   $('.form_money .inout_form').val(td.eq(6).text());	
		   
    	   //select box 가져오기
    	   //option갯수 가져오는 메소드 size()가 있는데 jquery버전이 높다면 length를 사용해야함
    	   for(var i=0; i<$(".form_select0 .inout_form option").length; i++){
    		   if($(".form_select0 .inout_form option:eq("+ i +")").text()==td.eq(2).text()){
    			   $(".form_select0 .inout_form option:eq("+ i +")").prop("selected", true);
    		   }
    	   }
 
    	   for(var i=0; i<$(".form_select1 .inout_form option").length; i++){
    		   if($(".form_select1 .inout_form option:eq("+ i +")").text()==td.eq(3).text()){
    			   $(".form_select1 .inout_form option:eq("+ i +")").prop("selected", true);
    		   }
    	   }    	   
    	   
    	   for(var i=0; i<$(".form_select2 .inout_form option").length; i++){
    		   if($(".form_select2 .inout_form option:eq("+ i +")").text()==td.eq(4).text()){
    			   $(".form_select2 .inout_form option:eq("+ i +")").prop("selected", true);
    		   }
    	   }		   
	   }
   });
	   