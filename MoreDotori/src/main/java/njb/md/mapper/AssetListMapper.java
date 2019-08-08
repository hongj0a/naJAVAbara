package njb.md.mapper;

import java.util.List;
import njb.md.domain.AssetListVO;

public interface AssetListMapper {
	List<AssetListVO> list();	
	void insert(AssetListVO list);
	void delete(long a_seq);
	AssetListVO cont(long a_seq);
	void update(AssetListVO list);
}
