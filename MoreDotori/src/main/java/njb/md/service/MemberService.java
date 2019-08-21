package njb.md.service;

import njb.md.domain.Member;

public interface MemberService {
	void joinMember(Member member);
	int duplCheck(String type, String name);
}
