package njb.md.mapper;

import org.apache.ibatis.annotations.Param;

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
	
	Expert getExpert(String m_id);
	int updatePwd(@Param("m_password") String pwd, @Param("m_id") String id);
	int updateMinfo(Member member);
	int updateEinfo(Expert expert);
	
	int updateState(@Param("m_state") String state, @Param("m_id") String id);
	int setEnable(@Param("m_enabled") String enabled, @Param("m_id") String id);
	
	String findId(@Param("m_name") String name, @Param("m_birth") String birth, @Param("m_phone") String phone);
	String existMem(@Param("m_id") String id, @Param("m_name") String name);
	
	int updateMonth(@Param("m_month")long month, @Param("m_id") String id);
}
