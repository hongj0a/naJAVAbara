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
}
