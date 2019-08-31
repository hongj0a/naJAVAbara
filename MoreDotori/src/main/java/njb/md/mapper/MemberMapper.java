package njb.md.mapper;

import java.util.Map;

import njb.md.domain.Expert;
import njb.md.domain.Mauth;
import njb.md.domain.Member;

public interface MemberMapper {
	Member read(String id);
	int updateLdate(String id);
	
	int insertMember(Member member);
	int insertExpert(Expert expert);
	int authMember(Mauth mauth);
	
	String duplIdCheck(String id);
	String duplNickCheck(String nick);
	
	Expert getExpert(String id);
	int updatePwd(Map<String, Object> map);
	int updateMinfo(Member member);
	int updateEinfo(Expert expert);
	
	int updateState(Map<String, Object> map);
	int setEnable(Map<String, Object> map);
}
