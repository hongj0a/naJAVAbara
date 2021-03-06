package njb.md.normal.service;

import java.sql.Date;
import java.util.List;

import njb.md.normal.domain.Inout;
import njb.md.normal.domain.InoutCount;

public interface AbookSumService {
	long selectAllAssetS(String M_id);
	long selectDayS(String M_id, String selectDate, String inoutCode);
	long selectAvgDaysS(String M_id, String selectMonth, String inoutCode);
	long selectMaxDayS(String M_id, String selectMonth, String inoutCode);
	long selectMonthS(String M_id, String selectMonth, String inoutCode);
	long selectYearS(String M_id, String selectYear, String inoutCode);
	
	Date returnSundayS(String selectDate);
	Date returnSatdayS(String selectDate);
	Date returnPrevDayS(String selectDate);
	long selectWeekS(String M_id, String selectDate, String inoutCode);
	long selectMonthDayofWeekS(String M_id, String selectMonth, String inoutCode, String selectDays);
	
	long selectMonthCodeSumS(String M_id, String selectMonth, String inoutCode, String ioCategori);
	long selectWeekCodeSumS(String M_id, String selectDate, String inoutCode, String ioCategori);
	long selectYearCodeSumS(String M_id, String selectYear, String inoutCode, String ioCategori);

	long selectAssetSumS(String selectMonth, String inoutCode, long A_seq);
	
	List<Inout> orderbyInoutS(String M_id, String selectMonth, String inoutCode);
	List<InoutCount> orderbyInoutCountS(String M_id, String selectMonth, String inoutCode);
}
