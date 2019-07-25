package njb.md.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
   
   @GetMapping("/")
   public String index() {
      return "index";
   }
   
   @GetMapping("/main")
   public String main() {
      return "main/main";
   }

   @GetMapping("/noti")
   public String noti() {
      return "main/notification";
   }

   @GetMapping("/book")
   public String book() {
      return "cheyeon_member/accountBook";
   }

   @GetMapping("/book2")
   public String book2() {
      return "cheyeon_member/accountBook_month";
   }

    @GetMapping("/expert_cal")
    public String expert() {
       return "expert/expert_calendar_list";
    }
   
    @GetMapping("/mem")
    public String mem() {
       return "manager/mem_management";
    }
   
    @GetMapping("/report")
    public String report() {
       return "manager/declaration";
    }
    
    @GetMapping("/asset_cond")
    public String asset_cond() {
       return "member/asset_condition";
    }
    
    @GetMapping("/mypage")
    public String mypage() {
       return "member/my_page";
    }
    
    @GetMapping("/signin")
    public String signin() {
       return "member/sign_in";
    }

    @GetMapping("/signup")
    public String signup() {
       return "member/sign_up";
    }

    @GetMapping("/signuptype")
    public String signuptype() {
       return "member/sign_up_type";
    }

}       
