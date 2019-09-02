package njb.md.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import njb.md.domain.AssetList;
import njb.md.mapper.AssetListMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AssetListServiceImpl implements AssetListService {
	@Autowired
	private AssetListMapper mapper;
	
	@Override
	public List<AssetList> listS(String m_id) {
		List<AssetList> list = mapper.list(m_id);
		log.info("#AssetListServiceImpl listS() list : " + list);
		
		if(list.size() == 0) {
			System.out.println("자산 내역이 없습니다.");
		}
		return list;
	}
	@Override
	public void insertS(AssetList list) {
		mapper.insert(list);
	}
	@Override
	public void deleteS(long a_seq) {
		mapper.delete(a_seq);
	}
	@Override
	public AssetList contS(long a_seq) {
		return mapper.cont(a_seq);
	}
	@Override
	public void updateS(AssetList list) {
		mapper.update(list);
	}
}
