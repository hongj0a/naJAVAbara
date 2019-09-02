package njb.md.normal.mapper;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import njb.md.normal.domain.Inout;

public interface AbookSumMapper {
	//자산 총액
	long selectAllAsset(@Param("M_id") String M_id);
	
	//selectDate형식 ==> 2019/05/24
	long selectDay(@Param("M_id") String M_id,@Param("selectDate") String selectDate, @Param("inoutCode") String inoutCode);
	
	//일평균 메소드
	long selectAvgDays(@Param("M_id") String M_id,@Param("selectMonth") String selectMonth, @Param("inoutCode") String inoutCode);
	
	//최대일 메소드
	Object selectMaxDay(@Param("M_id") String M_id,@Param("selectMonth") String selectMonth, @Param("inoutCode") String inoutCode);
	
	//월별 메소드
	long selectMonth(@Param("M_id") String M_id,@Param("selectMonth") String selectMonth, @Param("inoutCode") String inoutCode);
	
	//년별 메소드
	long selectYear(@Param("M_id") String M_id,@Param("selectYear") String selectYear, @Param("inoutCode") String inoutCode);
	
	//해당 일의 일요일 가져오기
	Date returnSunday(@Param("selectDate") String selectDate);
	
	//해당 일의 토요일 가져오기
	Date returnSatday(@Param("selectDate") String selectDate);	

	//해당 일의 7일전 날짜 가져오기
	Date returnPrevDay(@Param("selectDate") String selectDate);	
	
	//주간 메소드
	long selectWeek(@Param("M_id") String M_id,@Param("selectDate") String selectDate, @Param("inoutCode") String inoutCode);
	
	//요일별 메소드(+월별)
	long selectMonthDayofWeek(@Param("M_id") String M_id,@Param("selectMonth") String selectMonth, @Param("inoutCode") String inoutCode, @Param("selectDays") String selectDays);
	
	//카테고리별 합계
	long selectMonthCodeSum(@Param("M_id") String M_id,@Param("selectMonth") String selectMonth, @Param("inoutCode") String inoutCode, @Param("ioCategori") String ioCategori);
	long selectWeekCodeSum(@Param("M_id") String M_id,@Param("selectDate") String selectDate, @Param("inoutCode") String inoutCode, @Param("ioCategori") String ioCategori);
	long selectYearCodeSum(@Param("M_id") String M_id,@Param("selectYear") String selectYear, @Param("inoutCode") String inoutCode, @Param("ioCategori") String ioCategori);
	
	//자산별 합계
	long selectAssetSum(@Param("selectMonth") String selectMonth, @Param("inoutCode") String inoutCode, @Param("A_seq") long A_seq);
	
	//top3 이번달 지출금액
	List<Inout> orderbyInout(@Param("M_id") String M_id,@Param("selectMonth") String selectMonth, @Param("inoutCode") String inoutCode);
	
}
