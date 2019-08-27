package njb.md.domain;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class Member {
	private String m_id;		//아이디
	private String m_name;		//이름
	private String m_nickname;	//닉네임
	private String m_password;	//비밀번호
	private String m_phone;		//연락처
	private String m_birth;		//생년월일
	private String m_gender;	//성별
	private String m_profile;	//프로필사진
	private Date m_jdate;		//가입일
	private Date m_ldate;		//최근접속일
	private String c_member;	//회원분류코드
	private String c_mstate;	//회원상태코드
	private int m_month;		//한달예산
	
	private int m_count;		//경고횟수
	private int m_accrue;		//경고누적수
	private Date m_cdate;		//정지해제일
	private String m_reason;	//정지사유
	
	private boolean m_enabled;		//활성화여부
	private List<Mauth> authList;
}
