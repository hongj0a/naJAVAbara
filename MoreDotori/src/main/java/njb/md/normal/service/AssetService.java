package njb.md.normal.service;

import java.util.List;

import njb.md.normal.domain.Asset;

public interface AssetService {
	List<Asset> selectAssetListS(String M_id);
	Asset selectAssetS(long A_seq);		
}
