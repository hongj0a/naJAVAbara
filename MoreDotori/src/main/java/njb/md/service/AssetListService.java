package njb.md.service;

import java.util.List;
import njb.md.domain.AssetListVO;

public interface AssetListService {
	public List<AssetListVO> listS();
	void insertS(AssetListVO list);
	void deleteS(long a_seq);
	AssetListVO contS(long a_seq);
	void updateS(AssetListVO list);
}
