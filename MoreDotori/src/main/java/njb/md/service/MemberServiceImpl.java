package njb.md.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;
import njb.md.domain.Expert;
import njb.md.domain.Mauth;
import njb.md.domain.Member;
import njb.md.mapper.MemberMapper;

@Log4j
@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberMapper mapper;
	
	public Member readS(String id) {
		return mapper.read(id);
	}
	
	public boolean joinMember(Member member, Expert expert) {
		PasswordEncoder pwencoder = new BCryptPasswordEncoder();
		String encoded = pwencoder.encode(member.getM_password());
		member.setM_password(encoded);
		
		int ie_result = -1;
		int im_result = mapper.insertMember(member);
		
		Mauth mauth = new Mauth();
		mauth.setM_id(member.getM_id());
		
		switch(member.getC_member()) {
			case "MB001":
				mauth.setMa_auth("ROLE_NORMAL"); break;
			case "MB002":
				mauth.setMa_auth("ROLE_EXPERT");
				ie_result = mapper.insertExpert(expert);
				break;
		}
		
		int am_result = mapper.authMember(mauth);
		
		log.info("member: " + member);
		log.info("mauth: " + mauth);
		log.info("expert: " + expert);
		
		if(im_result!=0 && am_result!=0 && ie_result!=0)
			return true;
		else
			return false;
	}
	
	public boolean updateMember(Member member, Expert expert) {
		int ue_result = -1;
		int up_result = -1;
		int um_result = mapper.updateMinfo(member);
		if(member.getC_member().equals("MB002"))
			ue_result = mapper.updateEinfo(expert);
		
		if(member.getM_password() != null)
			up_result = mapper.updatePwd(member.getM_password(), member.getM_id());

		if(um_result!=0 && ue_result!=0 && up_result!=0)
			return true;
		else
			return false;
	}
	
	public Map<Object, Object> getExpertById(String id) {
		Expert expert = mapper.getExpert(id);
		
		Map<Object, Object> eMap = new HashMap<Object, Object>();
		eMap.put("job", expert.getE_job());
		eMap.put("position", expert.getE_position());
		eMap.put("career", expert.getE_career());
		
		String temp = expert.getE_address();
		String[] addrs = temp.split("-", 2);
		eMap.put("zipcode", addrs[0]);
		eMap.put("address", addrs[1]);
		
		eMap.put("detailaddr", expert.getE_detailaddr());
		eMap.put("introduce", expert.getE_introduce());
		
		temp = expert.getE_license1();
		String[] lis = temp.split("-", 2);
		eMap.put("ltype1", lis[0]);
		eMap.put("li1", lis[1]);
		
		temp = expert.getE_license2();
		if(temp != null) {
			lis = null;
			lis = temp.split("-", 2);
			eMap.put("ltype2", lis[0]);
			eMap.put("li2", lis[1]);
			
			temp = expert.getE_license3();
			if(temp != null) {
				lis = null;
				lis = temp.split("-", 2);
				eMap.put("ltype3", lis[0]);
				eMap.put("li3", lis[1]);
			}
		}
		
		temp = expert.getE_sns1();
		String[] snss = null;
		if(temp != null) {
			snss = temp.split("-", 2);
			eMap.put("stype1", snss[0]);
			eMap.put("sn1", snss[1]);
			
			temp = expert.getE_sns2();
			if(temp != null) {
				snss = temp.split("-", 2);
				eMap.put("stype2", snss[0]);
				eMap.put("sn2", snss[1]);
				
				temp = expert.getE_sns3();
				if(temp != null) {
					snss = temp.split("-", 2);
					eMap.put("stype3", snss[0]);
					eMap.put("sn3", snss[1]);
					
					temp = expert.getE_sns4();
					if(temp != null) {
						snss = temp.split("-", 2);
						eMap.put("stype4", snss[0]);
						eMap.put("sn4", snss[1]);
						
						temp = expert.getE_sns5();
						if(temp != null) {
							snss = temp.split("-", 2);
							eMap.put("stype5", snss[0]);
							eMap.put("sn5", snss[1]);
						}
					}
				}
			}
		}
		return eMap;
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
	
	public int withdrawal(String mid) {
		int result = -1;
		
		result *= mapper.updateState("MS003", mid);
		result *= mapper.setEnable("0", mid);
		
		return result;
	}
	
	public String findId(String name, String phone, String birth) {
		return mapper.findId(name, birth, phone);
	}

	public boolean setMonth(String mid, long month) {
		if(mapper.updateMonth(month, mid) != 0)
			return true;
		else
			return false;
	}

	@Override
	public int updateReport(String m_id) {
		return mapper.updateReport(m_id);
	}
}
