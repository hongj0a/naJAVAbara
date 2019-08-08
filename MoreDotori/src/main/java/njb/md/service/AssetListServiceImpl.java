package njb.md.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import njb.md.domain.AssetListVO;
import njb.md.mapper.AssetListMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AssetListServiceImpl implements AssetListService {
	@Autowired
	private AssetListMapper mapper;
	
	@Override
	public List<AssetListVO> listS() {
		List<AssetListVO> list = mapper.list();
		log.info("#BoardServiceImpl listS() list : " + list);
		return list;
	}
	
	@Override
	public void insertS(AssetListVO list) {
		mapper.insert(list);

	}

	@Override
	public void deleteS(long a_seq) {
		mapper.delete(a_seq);

	}
	@Override
	public AssetListVO contS(long a_seq) {
		return mapper.cont(a_seq);
	}
	@Override
	public void updateS(AssetListVO list) {
		mapper.update(list);
	}

}
