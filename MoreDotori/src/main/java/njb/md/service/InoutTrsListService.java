package njb.md.service;

import java.util.List;

import njb.md.domain.InoutTrsList;

public interface InoutTrsListService {
	List<InoutTrsList> getListAscS(String M_id);
	List<InoutTrsList>  getListDescS(String M_id);
	
	List<InoutTrsList> getListAscDayS(String M_id,String selectDate);
	List<InoutTrsList> getListDescDayS(String M_id,String selectDate);
	
	List<InoutTrsList> getListAscMonS(String M_id,String selectMonth);
	List<InoutTrsList> getListDescMonS(String M_id,String selectMonth);		
}
