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
	public long selectInDayS(String M_id, String selectDate) {
		log.info("### 일별 수입 전체 합계 가져오기 ###");
		return mapper.selectInDay(M_id, selectDate);
	}

	@Override
	public long selectOutDayS(String M_id, String selectDate) {
		log.info("### 일별 지출 전체 합계 가져오기 ###");
		return mapper.selectOutDay(M_id, selectDate);
	}

	@Override
	public long selectAvgInDaysS(String M_id, String selectMonth) {
		log.info("### 일평균 수입 가져오기 ###");
		return mapper.selectAvgInDays(M_id, selectMonth);
	}

	@Override
	public long selectAvgOutDaysS(String M_id, String selectMonth) {
		log.info("### 일평균 지출 가져오기 ###");
		return mapper.selectAvgOutDays(M_id, selectMonth);
	}

	@Override
	public long selectMaxInDayS(String M_id, String selectMonth) {
		log.info("### 월 중 최대 수입이 큰 날 가져오기 ###");
		Object rs = mapper.selectMaxInDay(M_id, selectMonth);
		if(rs==null) {
			return 0;
		}else {
			long result = Long.valueOf(String.valueOf(mapper.selectMaxInDay(M_id, selectMonth)));
			return result;
		}
	}

	@Override
	public long selectMaxOutDayS(String M_id, String selectMonth) {
		log.info("### 월 중 최대 지출이 큰 날 가져오기 ###");
		Object rs = mapper.selectMaxOutDay(M_id, selectMonth);
		if(rs==null) {
			return 0;
		}else {
			long result = Long.valueOf(String.valueOf(mapper.selectMaxOutDay(M_id, selectMonth)));
			return result;
		}
	}

	@Override
	public long selectInMonthS(String M_id, String selectMonth) {
		log.info("### 해당 월의 전체 수입 가져오기 ###");
		return mapper.selectInMonth(M_id, selectMonth);
	}

	@Override
	public long selectOutMonthS(String M_id, String selectMonth) {
		log.info("### 해당 월의 전체 지출 가져오기 ###");
		return mapper.selectOutMonth(M_id, selectMonth);
	}

}
