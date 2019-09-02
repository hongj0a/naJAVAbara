package njb.md.controller;


import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
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
import njb.md.service.MailService;
import njb.md.service.MemberService;

@Log4j
@Controller
public class MemberController {
	@Autowired
	private MemberService mservice;
	@Autowired
	private FileService fservice;
	@Autowired
	private MailService mailservice;
	
	private PasswordEncoder pwencoder = new BCryptPasswordEncoder();
	
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
		getForm(member, expert, minfo);
		if(minfo.getChooseImg() != null)
			member.setM_profile(fservice.upload(minfo.getChooseImg()));
		
		if(mservice.joinMember(member, expert)) {
			log.info("회원가입 성공");
		} else {
			log.info("회원가입 실패");
		}
		
		return "redirect:/";
	}
	
	@PostMapping("/getExpert.do")
	@ResponseBody
	public Map<Object, Object> getExpert(String mid) {
		return mservice.getExpertById(mid);
	}
	
	@PostMapping("/update.do")
	public String updateInfo(Member member, Expert expert, Minfo minfo, String newPwd, Principal principal) {
		CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();
		Member oMember = user.getMember();
		
		getForm(member, expert, minfo);
		if(!minfo.getChooseImg().isEmpty()) {
			member.setM_profile(fservice.upload(minfo.getChooseImg()));
			oMember.setM_profile(member.getM_profile());
		} else {
			member.setM_profile(user.getMember().getM_profile());
		}
		
		if(!newPwd.isEmpty()) {
			member.setM_password(pwencoder.encode(newPwd));
			oMember.setM_password(member.getM_password());
		}
		if(mservice.updateMember(member, expert)) {
			log.info("정보수정 성공");
			
			oMember.setM_nickname(member.getM_nickname());
			oMember.setM_phone(member.getM_phone());
			oMember.setM_gender(member.getM_gender());
			oMember.setM_birth(member.getM_birth());
			
			CustomUser changedUser= new CustomUser(oMember);
			Authentication authentication = new UsernamePasswordAuthenticationToken(changedUser, changedUser.getPassword(), changedUser.getAuthorities());
			SecurityContextHolder.getContext().setAuthentication(authentication);
			
			log.info("oMember: " + oMember);
		} else {
			log.info("정보수정 실패");
		}
		
		return "redirect:/mypage";
	}
	
	
	@PostMapping("/checkPwd.do")
	@ResponseBody
	public Map<String, Object> pwdCheck(@RequestParam("pwd") String pwd, Principal principal) {
		int result = -1;
		Map<String, Object> map = new HashMap<String, Object>();
		
		CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();
//		log.info("user: " + user);
		if(pwencoder.matches(pwd, user.getMember().getM_password()))
			result = 1;
		else
			result = 0;
//		log.info("result: " + result);
		map.put("rst", result);
		return map;
	}
	
	@PostMapping("/withdrawal.do")
	public String withdrawal(HttpServletRequest request, HttpServletResponse response, String mid) {
		log.info("# mid: " + mid);
		
		if(mservice.withdrawal(mid) != 0)
			log.info("탈퇴 성공");
		else 
			log.info("탈퇴 실패");
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		
		return "redirect:/";
	}
	
	@PostMapping("/findId.do")
	@ResponseBody
	public Map<Object, Object> findid(String name, String phone, String birth) {
		int result = -1;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		String id = mservice.findId(name, phone, birth);
		if(id != null) {
			map.put("id", id);
			result = 1;
		} else {
			result = 0;
		}
		map.put("rst", result);
		
		return map;
	}
	
	@PostMapping("/findPwd.do")
	@ResponseBody
	public Map<Object, Object> findPwd(String name, String id) {
		int result = -1;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		if(mailservice.sendMail(name, id)) {
			result = 1;
		} else {
			result = 0;
		}
		
		map.put("rst", result);
		
		return map;
	}
	
	@PostMapping("/normal/setMonth.do")
	@ResponseBody
	public Map<Object, Object> setMonth(String id, long month){
		int result = -1;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		if(mservice.setMonth(id, month)) {
			result = 1;
		} else {
			result = 0;
		}
		
		map.put("rst", result);

		return map;
	}
	
	public void getForm(Member member, Expert expert, Minfo minfo) {
		String birth = "";
		for(String add : minfo.getBirth()) birth += add;
		member.setM_birth(birth);
		
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
	}
}