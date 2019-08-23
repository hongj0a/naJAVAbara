package njb.md.mapper;

import njb.md.domain.Expert;
import njb.md.domain.Mauth;
import njb.md.domain.Member;

public interface MemberMapper {
	int insertMember(Member member);
	int authMember(Mauth mauth);
	int insertExpert(Expert expert);
	String duplIdCheck(String id);
	String duplNickCheck(String nick);
}
