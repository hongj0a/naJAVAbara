package njb.md.controller;


import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.log4j.Log4j;
import njb.md.domain.Expert;
import njb.md.domain.Member;
import njb.md.domain.Minfo;
import njb.md.security.domain.CustomUser;
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
	public Map<Object, Object> duplCheck(@RequestParam("type") String type, @RequestParam("name") String name) {
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
	
	@PostMapping("/join.do")
	public String join(Member member, Expert expert, Minfo minfo) {
		String birth = "";
		for(String add : minfo.getBirth()) birth += add;
		member.setM_birth(birth);
		
		if(minfo.getChooseImg() != null)
			member.setM_profile(fservice.upload(minfo.getChooseImg()));
		
		if(member.getC_member().equals("MB002")) {
			ArrayList<String> license = new ArrayList<String>();
			ArrayList<String> sns = new ArrayList<String>();

			String address = minfo.getZipCode() + "-" + minfo.getAddress();
			expert.setE_address(address);
			
			expert.setE_career(Integer.parseInt(minfo.getCareer()));
			
			ArrayList<String> tmp = minfo.getLicense();
			ArrayList<String> tmpVal = minfo.getLicenseNum();
			for(int i=0; i<tmp.size(); i++) {
				if(tmp.get(i) != null && !(tmpVal.get(i).equals(""))) 
					license.add(tmp.get(i) + "-" + tmpVal.get(i));
			}
			
			log.info("# license: " + license);
			switch(license.size()) {
				case 3: expert.setE_license3(license.get(2));
				case 2: expert.setE_license2(license.get(1));
				case 1: expert.setE_license1(license.get(0));
			}
			
			tmp = minfo.getSns();
			tmpVal = minfo.getSnsUrl();
			for(int i=0; i<tmp.size(); i++) {
				if(tmp.get(i) != null && !(tmpVal.get(i).equals("")))
					sns.add(tmp.get(i) + "-" + tmpVal.get(i));
			}
			
			log.info("# sns: " + sns);
			switch(sns.size()) {
				case 5: expert.setE_sns5(sns.get(4));
				case 4: expert.setE_sns4(sns.get(3));
				case 3: expert.setE_sns3(sns.get(2));
				case 2: expert.setE_sns2(sns.get(1));
				case 1: expert.setE_sns1(sns.get(0));
			}
		}
		
		log.info("# member: " + member);
		log.info("# expert: " + expert);
		log.info("# minfo: " + minfo);
		
		mservice.joinMember(member, expert);
		
		return "redirect:/";
	}
	
	@PostMapping("/checkPwd.do")
	@ResponseBody
	public Map<Object, Object> pwdCheck(@RequestParam("pwd") String pwd, Principal principal) {
		int result = -1;
		Map<Object, Object> map = new HashMap<Object, Object>();
		PasswordEncoder pwencoder = new BCryptPasswordEncoder();
		
		CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();
//		log.info("user: " + user);
		if(pwencoder.matches(pwd, user.getMember().getM_password()))
			result = 1;
		else
			result = 0;
		
		map.put("rst", result);
		return map;
	}
	
	@PostMapping("/withdrawal.do")
	public String withdrawal(String mid) {
		log.info("# mid: " + mid);
		
		if(mservice.withdrawal(mid) != 0)
			log.info("탈퇴 성공");
		else 
			log.info("탈퇴 실패");
		
		return "redirect:/";
	}
}