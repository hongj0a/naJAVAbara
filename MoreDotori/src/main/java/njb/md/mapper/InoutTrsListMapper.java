package njb.md.mapper;

import java.util.List;

import njb.md.domain.InoutTrsList;

public interface InoutTrsListMapper {
	List<InoutTrsList> getListAsc(String M_id);
	List<InoutTrsList> getListDesc(String M_id);
	
	List<InoutTrsList> getListAscDay(String M_id,String selectDate);
	List<InoutTrsList> getListDescDay(String M_id,String selectDate);
	
	List<InoutTrsList> getListAscMon(String M_id,String selectDate);
	List<InoutTrsList> getListDescMon(String M_id,String selectDate);	
}
