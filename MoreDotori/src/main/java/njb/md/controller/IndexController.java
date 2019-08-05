package njb.md.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
   
   //메인
   @GetMapping("/")
   public String index() {
	 return "main/main";
   }
   
   //알림
   @GetMapping("/noti")
   public String noti() {
      return "main/notification";
   }
   
   //가계부
   @GetMapping("/book")
   public String book() {
      return "cheyeon_member/accountBook";
   }

   //가계부(월)
   @GetMapping("/book2")
   public String book2() {
      return "cheyeon_member/accountBook_month";
   }

    //전문가 예약리스트
    @GetMapping("/expert_cal")
    public String expert() {
       return "expert/expert_calendar_list";
    }
   
    //전문가 예약리스트
    @GetMapping("/mem")
    public String mem() {
       return "manager/mem_management";
    }
   
    //신고
    @GetMapping("/report")
    public String report() {
       return "manager/declaration";
    }
    
    //자산그래프
    @GetMapping("/asset_cond")
    public String asset_cond() {
       return "member/asset_condition";
    }
    
    //내페이지
    @GetMapping("/mypage")
    public String mypage() {
       return "member/my_page";
    }
    
    //로긴
    @GetMapping("/signin")
    public String signin() {
       return "member/sign_in";
    }
    
    //횐가입
    @GetMapping("/signup")
    public String signup() {
       return "member/sign_up";
    }

    //횐가입 종류설정
    @GetMapping("/signuptype")
    public String signuptype() {
       return "member/sign_up_type";
    }

    //계정찾기
    @GetMapping("/find_account")
    public String find_account() {
       return "member/find_account";
    }    
    
    //공지사항
    @GetMapping("/board_notice")
    public String board_notice() {
       return "board/board_notice";
    }
    
    //자게
    @GetMapping("/board_free")
    public String board_free() {
       return "board/board_free";
    }
    
    //pr게시판
    @GetMapping("/board_pr")
    public String board_pr() {
       return "board/board_pr";
    }
    
    //작성하기
    @GetMapping("/board_write")
    public String board_write() {
       return "board/board_write";
    }
    
    //게시글내용
    @GetMapping("/board_content")
    public String board_content(){
       return "board/board_content";
    }
    
    
    // CUSTOMER SERVICE_nari
    @GetMapping("/faq")
    public String faq() {
       return "cs/faq";
    }
    @GetMapping("/qna")
    public String qna() {
       return "cs/qna";
    }
    @GetMapping("/qna_write")
    public String qna_write() {
       return "cs/qna_write";
    }
    
    //혜원
    @GetMapping("/eList")
    public String eList() {
       return "exepertList/exepertList";
    }
    @GetMapping("/eListIn")
    public String eListIn() {
       return "exepertList/exepertListIn";
    }
    @GetMapping("/aList")
    public String aList() {
       return "assetManagement/assetList";
    }
}       
