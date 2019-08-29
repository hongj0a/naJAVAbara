package njb.md.service;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import njb.md.mapper.AbookSumMapper;

@Log4j
@Service
@AllArgsConstructor
public class AbookSumServiceImpl implements AbookSumService {
	@Autowired
	private AbookSumMapper mapper;
	
	@Override
	public long selectAllAssetS(String M_id) {
		log.info("### 자산 총액 가져오기 ###");
		return mapper.selectAllAsset(M_id);
	}

	@Override
	public long selectDayS(String M_id, String selectDate, String inoutCode) {
		log.info("### 일별 전체 합계 가져오기 ###");
		return mapper.selectDay(M_id, selectDate, inoutCode);
	}

	@Override
	public long selectAvgDaysS(String M_id, String selectMonth, String inoutCode) {
		log.info("### 일평균 가져오기 ###");
		return mapper.selectAvgDays(M_id, selectMonth, inoutCode);
	}

	@Override
	public long selectMaxDayS(String M_id, String selectMonth, String inoutCode) {
		log.info("### 월 중 최대일 가져오기 ###");
		Object rs = mapper.selectMaxDay(M_id, selectMonth, inoutCode);
		if(rs==null) {
			return 0;
		}else {
			long result = Long.valueOf(String.valueOf(mapper.selectMaxDay(M_id, selectMonth, inoutCode)));
			return result;
		}
	}

	@Override
	public long selectMonthS(String M_id, String selectMonth, String inoutCode) {
		log.info("### 해당 월의 전체 합 가져오기 ###");
		return mapper.selectMonth(M_id, selectMonth, inoutCode);
	}
	
	@Override
	public long selectYearS(String M_id, String selectYear, String inoutCode) {
		log.info("### 해당 월의 전체 합 가져오기 ###");
		return mapper.selectYear(M_id, selectYear, inoutCode);
	}
	
	@Override
	public long selectMonthDayofWeekS(String M_id, String selectMonth, String inoutCode, String selectDays) {
		log.info("### 해당 월의 요일 합 가져오기 ###");
		return mapper.selectMonthDayofWeek(M_id, selectMonth, inoutCode, selectDays);
	}	
	
	/*
	 * @Override public long returnIWS(long selectDay) {
	 * log.info("### 해당 일의 주번호 리턴  ###"); return mapper.returnIW(selectDay); }
	 * 
	 * @Override public long selectIWS(String M_id, String selectIW, String
	 * inoutCode, String selectYear) { log.info("### 해당 주의 합계 리턴  ###"); return
	 * mapper.selectIW(M_id, selectIW, inoutCode, selectYear); }
	 */	
	
	
}
