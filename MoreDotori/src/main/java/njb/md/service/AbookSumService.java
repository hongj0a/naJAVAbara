package njb.md.service;

import java.sql.Date;

public interface AbookSumService {
	long selectAllAssetS(String M_id);
	long selectInDayS(String M_id, String selectDate);
	long selectOutDayS(String M_id, String selectDate);
	long selectAvgInDaysS(String M_id, String selectMonth);
	long selectAvgOutDaysS(String M_id, String selectMonth);
	long selectMaxInDayS(String M_id, String selectMonth);
	long selectMaxOutDayS(String M_id, String selectMonth);
	long selectInMonthS(String M_id, String selectMonth);
	long selectOutMonthS(String M_id, String selectMonth);
}
