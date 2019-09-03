package njb.md.mapper;

import java.util.List;
import njb.md.domain.AssetList;

public interface AssetListMapper {
	List<AssetList> list(String m_id);	
	void insert(AssetList list);
	void delete(long a_seq);
	AssetList cont(long a_seq);
	void update(AssetList list);
}
