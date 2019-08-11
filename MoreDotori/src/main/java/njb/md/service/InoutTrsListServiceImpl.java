package njb.md.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import njb.md.domain.InoutTrsList;
import njb.md.mapper.InoutTrsListMapper;

@Log4j
@Service
@AllArgsConstructor
public class InoutTrsListServiceImpl implements InoutTrsListService {
	@Autowired
	private InoutTrsListMapper mapper;
	
	@Override
	public List<InoutTrsList>  getListAscS(String M_id) {
		List<InoutTrsList> list = mapper.getListAsc(M_id);
		log.info("#### InoutTrsList : " + list);
		return list;
	}

	@Override
	public List<InoutTrsList> getListDescS(String M_id) {
		List<InoutTrsList> list = mapper.getListDesc(M_id);
		log.info("#### InoutTrsList : " + list);
		return list;
	}

}
