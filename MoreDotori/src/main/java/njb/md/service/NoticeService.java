package njb.md.service;

import java.util.List;
import njb.md.domain.Notice;

public interface NoticeService {
	//헤더 노티스
	List<Notice> getNotiListHeaderS(String M_id);
	
	//알림 노티스 리스트
	List<Notice> getNotiListS(String M_id);
	
	//말머리별
	List<Notice> getNotiListHorseS(String M_id, String C_horsehead);
	
	//상태업데이트
	void updateNoticeS(Notice notice);
}
