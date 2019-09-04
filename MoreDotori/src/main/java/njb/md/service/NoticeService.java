package njb.md.service;

import java.util.List;
import njb.md.domain.Notice;

public interface NoticeService {	
	//알림 노티스 데이트 리스트
	List<String> dateNotiListS(String M_id);
	
	//헤더 카운트
	long headerCountS(String M_id);
	
	//헤더 노티스
	List<Notice> getNotiListHeaderS(String M_id);
	
	//알림 노티스 리스트
	List<Notice> getNotiListS(String M_id);
	
	//말머리별
	List<Notice> getNotiListHorseS(String M_id, String C_horsehead);
	
	//상태업데이트
	void updateNoticeS(long N_seq, String C_nstate);
}
