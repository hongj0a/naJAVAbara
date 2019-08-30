package njb.md.mapper;

import java.sql.Date;

import org.apache.ibatis.annotations.Param;

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
	
	/////////////////////////////////////////////////////////////////////////////////////////////////
	
	/*
	 * //selectDay의 주번호 반환 long returnIW(@Param("selectDay") long selectDay); //해당
	 * 주의 총 합계 반환 long selectIW(@Param("M_id") String M_id, @Param("selectIW")
	 * String selectIW, @Param("inoutCode") String inoutCode, @Param("selectYear")
	 * String selectYear);
	 * 
	 */
}
