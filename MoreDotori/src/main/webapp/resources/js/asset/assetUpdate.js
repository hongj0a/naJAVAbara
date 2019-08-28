   //tr클릭이벤트
   $(document).on('click', '.updatetd a', function(){
      var tr = $(this).parent().parent();
      var td = tr.children();
      
      var kind = td.eq(2).text();
      
         $('#a_seq').val(td.eq(0).text());
         $('#m_id').val(td.eq(1).text());
         $('#c_asset').val(td.eq(2).text());
         $('#a_nickname').val(td.eq(3).text());
         $('#a_money').val(td.eq(4).text());
         $('#a_memo').val(td.eq(5).text());    
         
         //select box 가져오기
         //option갯수 가져오는 메소드 size()가 있는데 jquery버전이 높다면 length를 사용해야함
         for(var i=0; i<$("#c_asset option").length; i++){
            if($("#c_asset option:eq("+ i +")").text()==td.eq(2).text()){
               $("#c_asset option:eq("+ i +")").prop("selected", true);
            }
         }
         
   });
