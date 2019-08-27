   //tr클릭이벤트
   $(document).on('click', '.updatetd a', function(){
      var tr = $(this).parent().parent();
      var td = tr.children();
      
         $('#a_seq').val(td.eq(0).text());
         $('#m_id').val(td.eq(1).text());
         $('#c_asset').val(td.eq(2).text());
         $('#a_nickname').val(td.eq(3).text());
         $('#a_money').val(td.eq(4).text());
         $('#a_memo').val(td.eq(5).text());    

   });
