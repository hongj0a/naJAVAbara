package njb.md.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import njb.md.domain.Notice;
import njb.md.mapper.NoticeMapper;

@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeMapper mapper;
	
	@Override
	public List<Notice> getNotiListHeaderS(String M_id) {
		return mapper.getNotiListHeader(M_id);
	}

	@Override
	public List<Notice> getNotiListS(String M_id) {
		return mapper.getNotiList(M_id);
	}

	@Override
	public List<Notice> getNotiListHorseS(String M_id, String C_horsehead) {
		return mapper.getNotiListHorse(M_id, C_horsehead);
	}

	@Override
	public void updateNoticeS(Notice notice) {
		mapper.updateNotice(notice);
	}

}
