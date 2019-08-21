package njb.md.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;
import njb.md.domain.Member;
import njb.md.mapper.MemberMapper;

@Log4j
@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberMapper mapper;
	
	public void joinMember(Member member) {
		mapper.insertMember(member);
		mapper.authMember(member);
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
