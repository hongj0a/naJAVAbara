package njb.md.service;

import java.util.List;
import njb.md.domain.AssetList;

public interface AssetListService {
	public List<AssetList> listS(String m_id);
	void insertS(AssetList list);
	void deleteS(long a_seq);
	AssetList contS(long a_seq);
	void updateS(AssetList list);
}
