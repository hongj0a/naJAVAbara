package njb.md.normal.mapper;

import java.util.List;

import njb.md.normal.domain.Asset;

public interface AssetMapper {
	List<Asset> selectAssetList(String M_id);
	Asset selectAsset(long A_seq);	
}
