package njb.md.mapper;

import njb.md.domain.Member;

public interface MemberMapper {
	void insertMember(Member member);
	void authMember(Member member);
	String duplIdCheck(String id);
	String duplNickCheck(String nick);
}
