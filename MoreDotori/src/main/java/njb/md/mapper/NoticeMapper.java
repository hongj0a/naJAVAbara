package njb.md.mapper;

import java.util.List;
import njb.md.domain.Notice;

public interface NoticeMapper {
	//헤더 노티스
	List<Notice> getNotiListHeader(String M_id);
	
	//알림 노티스 리스트
	List<Notice> getNotiList(String M_id);
	
	//말머리별
	List<Notice> getNotiListHorse(String M_id, String C_horsehead);
	
	//상태업데이트
	void updateNotice(Notice notice);
}
