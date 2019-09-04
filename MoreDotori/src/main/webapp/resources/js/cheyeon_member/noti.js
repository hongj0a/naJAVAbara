var loginId = null;
       
   //가계부 합계 등등 가져오기
   $.fn.getHeaderCount = function(){
	   $.ajax({
		   type: "GET",
		   url : "../../noti/headerCount.do",
		   dataType : "json",
		   data : { M_id: loginId},
		   success : function(data){
			   if(data<99){
				   $('#noti_bell_count > p').text(data);
				   
			   }else{
				   $('#noti_bell_count > p').text("+99");
			   }
		   }
		   
		   /*,
		   error:function(request,status,error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
		   */
	   });
   }

   //가계부 스테이트업데이트
   $.fn.getHeaderUpdate = function(N_seq){
	   $.ajax({
		   type: "POST",
		   url : "../../noti/updateHeader.do",
		   dataType : "text",
		   data : { N_seq: N_seq,
		   			_csrf: $('#csrf_h').val()
		   },
		   success : function(data){
			   if( data == "success"){
					$.fn.getHeaderCount();
			   }else{
				   alert('삭제실패');
			   }			   
		   },
		   error:function(request,status,error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
		   
	   });
   }   
   
   //가계부 리스트 가져오기
   $.fn.getHeaderList = function(){
	   $.ajax({
		   type: "GET",
		   url : "../../noti/headerList.do",
		   dataType : "json",
		   data : { M_id: loginId},
		   success : function(data){
			   var content="";
			   if(data.length==0){
			   }else{
				   $('#noti_menu_scroll').empty();
				   for(var i=0; i<data.length; i++){
					   content += "<li class='notification2 notification header_notice'>";
					   content += "<div class='media'>";
					   content += "<div class='media-body'>";
					   content += "<p><strong class='horhead'>[";
					   content += data[i].C_horsehead;
					   content += "] </strong>";
					   content += data[i].N_subject;
					   //content += "<a href=''>";
					   content += "<span>";
					   content += "<i class='hNotiIcon feather icon-x'>";
					   content += "<span style='display:none'>";
					   content += data[i].N_seq;
					   content += "<span></i>"
					   content += "</span>";
					   //content += "</a>";
					   content += "</p>";
					   content += "<a class='alink' href='/noti/cont.do?N_bseq="+data[i].N_bseq+"&N_seq="+data[i].N_seq+"'>";
					   content += "<p>";
					   content += "- " + data[i].N_content;
					   content += "</p>";
					   content += "</a>";
					   content += "<span>";
					   content += data[i].N_date;
					   content += "</span>";
					   content += "</div>";
					   content += "</div>";
					   content += "</li>";
				   }				   
			   }
			   $('#noti_menu_scroll').append(content);
		   },
		   error:function(request,status,error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
		   
	   });
   }  
   
   ////////////////////////////////////////////////첫실행
   $(document).ready(function() {
		loginId=$("#loginId").val();
		if(loginId!=null){
			$.fn.getHeaderCount();
			setInterval(function() {$.fn.getHeaderCount()}, 5000);
		}
	});
   
   $("#noti_btn").click(function(){
		$.fn.getHeaderList();
   });
   
   $(document).on('click', '.hNotiIcon', function(){
	   var childrenspan = $(this).children();
	   var nseq = childrenspan.eq(0).text();
	   
		$.fn.getHeaderUpdate(nseq);
   });
   
