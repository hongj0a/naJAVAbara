package njb.md.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;
import njb.md.domain.Expert;
import njb.md.domain.Mauth;
import njb.md.domain.Member;
import njb.md.mapper.MemberMapper;

@Log4j
@Service
public class MemberServiceImpl implements MemberService {
//	@Autowired
//	private PasswordEncoder pwencoder;
	
	@Autowired
	private MemberMapper mapper;
	
	public boolean joinMember(Member member, Expert expert) {
//		String encoded = pwencoder.encode(member.getM_password());
//		member.setM_password(encoded);
		int ie_result = -1;
		int im_result = mapper.insertMember(member);
		
		Mauth mauth = new Mauth();
		mauth.setM_id(member.getM_id());
		
		switch(member.getC_member()) {
			case "MB000":
				mauth.setMa_auth("ROLE_ADMIN"); break;
			case "MB001":
				mauth.setMa_auth("ROLE_NORMAL"); break;
			case "MB002":
				mauth.setMa_auth("ROLE_EXPERT");
				ie_result = mapper.insertExpert(expert);
				break;
		}
		
		int am_result = mapper.authMember(mauth);
		
		log.info("member: " + member);
		log.info("mauth: " + mauth);
		log.info("expert: " + expert);
		
		if(im_result!=0 && am_result!=0 && ie_result!=0)
			return true;
		else
			return false;
	}
	
	public int duplCheck(String type, String name) {
		int result = -1;
		
		if(type.equals("id")) {
			if(mapper.duplIdCheck(name) != null) result = 1;
			else result = 0;
		}else if(type.equals("nickname")) {
			if(mapper.duplNickCheck(name) != null) result = 1;
			else result = 0;
		}
		
		return result;
	}
}
