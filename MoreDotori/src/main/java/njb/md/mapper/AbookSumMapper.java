package njb.md.mapper;

import java.sql.Date;

import org.apache.ibatis.annotations.Param;

public interface AbookSumMapper {
	//자산 총액
	long selectAllAsset(@Param("M_id") String M_id);
	//일별 수입 메소드 ~ selectDate형식 ==> 2019/05/24
	long selectInDay(@Param("M_id") String M_id,@Param("selectDate") String selectDate);
	//일별 지출 메소드 ~ selectDate형식 ==> 2019/05/24
	long selectOutDay(@Param("M_id") String M_id,@Param("selectDate") String selectDate);
	//일평균 수입메소드
	long selectAvgInDays(@Param("M_id") String M_id,@Param("selectMonth") String selectMonth);
	//일평균 지출메소드
	long selectAvgOutDays(@Param("M_id") String M_id,@Param("selectMonth") String selectMonth);
	//최대수입일 메소드
	long selectMaxInDay(@Param("M_id") String M_id,@Param("selectMonth") String selectMonth);
	//최대지출일 메소드
	long selectMaxOutDay(@Param("M_id") String M_id,@Param("selectMonth") String selectMonth);
	//월별 수입 메소드
	long selectInMonth(@Param("M_id") String M_id,@Param("selectMonth") String selectMonth);
	//월별 지출 메소드
	long selectOutMonth(@Param("M_id") String M_id,@Param("selectMonth") String selectMonth);
}
