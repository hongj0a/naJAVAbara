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
	
	// BOARD_nari
	@GetMapping("/board_notice")
	public String board_notice() {
		return "board/board_notice";
	}
	@GetMapping("/board_free")
	public String board_free() {
		return "board/board_free";
	}
	@GetMapping("/board_pr")
	public String board_pr() {
		return "board/board_pr";
	}
	@GetMapping("/board_write")
	public String board_write() {
		return "board/board_write";
	}
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
	
	
}
