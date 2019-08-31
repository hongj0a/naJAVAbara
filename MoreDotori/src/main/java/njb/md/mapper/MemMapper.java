package njb.md.mapper;

import java.util.List;
import njb.md.domain.Mem;

public interface MemMapper {
	//리스트 조회
	public List<Mem> getList();
	
	// 정지풀기
	public void normalUser(String m_id);
	
}
