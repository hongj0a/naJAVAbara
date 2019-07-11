package njb.md.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	@GetMapping("/eList")
	public String eList() {
		return "exepertList/exepertList";
	}
	@GetMapping("/eListIn")
	public String eListIn() {
		return "exepertList/exepertListIn";
	}
}
