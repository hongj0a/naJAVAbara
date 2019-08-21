package njb.md.controller;


import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.log4j.Log4j;
import njb.md.domain.Member;
import njb.md.service.MemberService;

@Log4j
@Controller
public class MemberController {
	@Autowired
	private MemberService service;
	
	@PostMapping("/dupl.do")
	@ResponseBody
	public Map<Object, Object> duplIdCheck(@RequestParam("type") String type, @RequestParam("name") String name) {
		int result = -1;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		if(type.equals("id")) {
			result = service.duplCheck(type, name);
		} else if(type.equals("nickname")) {
			result = service.duplCheck(type, name);
		}
		
		map.put("rst", result);
		return map;
	}
}