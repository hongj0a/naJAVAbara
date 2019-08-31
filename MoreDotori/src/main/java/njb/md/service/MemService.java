package njb.md.service;

import java.util.List;
import njb.md.domain.Mem;

public interface MemService {
	List<Mem> getList();
	void normalUser(List<String> m_id);
}
