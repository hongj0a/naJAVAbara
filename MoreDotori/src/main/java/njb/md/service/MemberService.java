package njb.md.service;

import java.util.Map;

import njb.md.domain.Expert;
import njb.md.domain.Member;

public interface MemberService {
	boolean joinMember(Member member, Expert expert);
	int duplCheck(String type, String name);
	Map<Object, Object> getExpertById(String id);
	int withdrawal(String mid);
}
