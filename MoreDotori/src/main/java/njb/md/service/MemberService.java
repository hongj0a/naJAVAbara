package njb.md.service;

import njb.md.domain.Expert;
import njb.md.domain.Member;

public interface MemberService {
	boolean joinMember(Member member, Expert expert);
	int duplCheck(String type, String name);
	int withdrawal(String mid);
}
