package njb.md.service;

public interface AbookSumService {
	long selectAllAssetS(String M_id);
	long selectDayS(String M_id, String selectDate, String inoutCode);
	long selectAvgDaysS(String M_id, String selectMonth, String inoutCode);
	long selectMaxDayS(String M_id, String selectMonth, String inoutCode);
	long selectMonthS(String M_id, String selectMonth, String inoutCode);
	long selectYearS(String M_id, String selectYear, String inoutCode);
	long selectMonthDayofWeekS(String M_id, String selectMonth, String inoutCode, String selectDays);

	/*
	 * long returnIWS(long selectDay); long selectIWS(String M_id, String selectIW,
	 * String inoutCode, String selectYear);
	 * 
	 */
}
