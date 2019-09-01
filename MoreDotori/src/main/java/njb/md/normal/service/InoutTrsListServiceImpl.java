package njb.md.normal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import njb.md.normal.domain.InoutTrsList;
import njb.md.normal.mapper.InoutTrsListMapper;

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

	@Override
	public List<InoutTrsList> getListAscDayS(String M_id, String selectDate) {
		List<InoutTrsList> list = mapper.getListAscDay(M_id, selectDate);
		log.info("#### InoutTrsList ~ day(asc) : " + list);
		return list;
	}

	@Override
	public List<InoutTrsList> getListDescDayS(String M_id, String selectDate) {
		List<InoutTrsList> list = mapper.getListDescDay(M_id, selectDate);
		log.info("#### InoutTrsList ~ day(desc) : " + list);
		return list;
	}

	@Override
	public List<InoutTrsList> getListAscMonS(String M_id, String selectMonth) {
		List<InoutTrsList> list = mapper.getListAscMon(M_id, selectMonth);
		log.info("#### InoutTrsList ~ Month(asc) : " + list);
		return list;
	}

	@Override
	public List<InoutTrsList> getListDescMonS(String M_id, String selectMonth) {
		List<InoutTrsList> list = mapper.getListDescMon(M_id, selectMonth);
		log.info("#### InoutTrsList ~ Month(desc) : " + list);
		return list;
	}

}
