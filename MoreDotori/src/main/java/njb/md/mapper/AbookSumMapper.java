package njb.md.mapper;

import java.sql.Date;

public interface AbookSumMapper {
	//일별 수입 메소드
	long selectInDay();
	//일별 지출 메소드
	long selectOutDay();
	//일평균 지출메소드
	long selectAvgOutDays();
	//최대지출일 메소드
	Date selectMaxOutDay();
	//월별 수입 메소드
	long selectInMonth();
	//월별 지출 메소드
	long selectOutMonth();
}
