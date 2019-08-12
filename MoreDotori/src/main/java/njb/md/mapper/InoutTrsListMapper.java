package njb.md.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import njb.md.domain.InoutTrsList;

public interface InoutTrsListMapper {
	List<InoutTrsList> getListAsc(@Param("M_id") String M_id);
	List<InoutTrsList> getListDesc(@Param("M_id") String M_id);
	
	//selectDate형식 ==> 2019/05/24
	List<InoutTrsList> getListAscDay(@Param("M_id") String M_id,@Param("selectDate") String selectDate);
	List<InoutTrsList> getListDescDay(@Param("M_id") String M_id,@Param("selectDate") String selectDate);
	
	//selectMonth형식 ==> 2019/05
	List<InoutTrsList> getListAscMon(@Param("M_id") String M_id,@Param("selectMonth") String selectMonth);
	List<InoutTrsList> getListDescMon(@Param("M_id") String M_id,@Param("selectMonth") String selectMonth);	
}
