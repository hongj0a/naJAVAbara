package njb.md.controller;


import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j;
import njb.md.domain.Member;
import njb.md.service.FileService;
import njb.md.service.MemberService;

@Log4j
@Controller
public class MemberController {
	@Autowired
	private MemberService mservice;
	@Autowired
	private FileService fservice;
	
	@PostMapping("/dupl.do")
	@ResponseBody
	public Map<Object, Object> duplIdCheck(@RequestParam("type") String type, @RequestParam("name") String name) {
		int result = -1;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		if(type.equals("id")) {
			result = mservice.duplCheck(type, name);
		} else if(type.equals("nickname")) {
			result = mservice.duplCheck(type, name);
		}
		
		map.put("rst", result);
		return map;
	}
	
	public String uploadFile(MultipartFile file) {
		log.info("file: " + file);
		log.info("file.getOriginalFilename(): " + file.getOriginalFilename());
		log.info("file.isEmpty(): " + file.isEmpty());

		boolean result = fservice.upload(file);

		log.info("프로필 업로드 성공(1) or 실패(0): " + result);
		
		return "redirect:/";
	}
	
	@PostMapping("/insert.do")
	public String hello(@RequestParam("choose-image") MultipartFile file) {
		log.info("file: " + file);
		log.info("file.getOriginalFilename(): " + file.getOriginalFilename());
		log.info("file.isEmpty(): " + file.isEmpty());
		
		return uploadFile(file);
	}
}