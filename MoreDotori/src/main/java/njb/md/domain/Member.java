package njb.md.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	String m_id;		//아이디
	String m_name;		//이름
	String m_nickname;	//닉네임
	String m_password;	//비밀번호
	String m_phone;		//연락처
	String m_birth;		//생년월일
	String m_gender;	//성별
	String m_profile;	//프로필사진
	Date m_jdate;		//가입일
	Date m_ldate;		//최근접속일
	String c_member;	//회원분류코드
	String c_mstate;	//회원상태코드
	int m_month;		//한달예산
	
	int m_count;		//경고횟수
	int m_accrue;		//경고누적수
	Date m_cdate;		//정지해제일
	String m_reason;	//정지사유
}
