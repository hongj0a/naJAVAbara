package njb.md.normal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import njb.md.normal.domain.Asset;
import njb.md.normal.mapper.AssetMapper;
import njb.md.normal.mapper.InoutMapper;

@Log4j
@Service
@AllArgsConstructor
public class AssetServiceImpl implements AssetService {	@Autowired
	private AssetMapper mapper;

	@Override
	public List<Asset> selectAssetListS(String M_id) {
		List<Asset> list = mapper.selectAssetList(M_id);
		return list;
	}

	@Override
	public Asset selectAssetS(long A_seq) {
		Asset asset = mapper.selectAsset(A_seq);
		return asset;
	}

}
