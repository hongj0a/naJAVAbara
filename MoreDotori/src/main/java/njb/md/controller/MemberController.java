package njb.md.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import njb.md.domain.Member;
import njb.md.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService service;
	
	@RequestMapping("/check")
	public ModelAndView selectAll() {
		List<Member> list = service.selectAll();
		ModelAndView mv = new ModelAndView("test", "list", list);
		
		return mv;
	}
}