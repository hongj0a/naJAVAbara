package njb.md.normal.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import njb.md.normal.domain.Transfer;
import njb.md.normal.mapper.TransferMapper;

@Log4j
@Service
@AllArgsConstructor
public class TransferServiceImpl implements TransferService {
	@Autowired
	private TransferMapper mapper;

	@Override
	public Transfer selectTransSeqS(long T_seq) {
		log.info("#### 이체 정보 가져오기 : " + T_seq );
		
		Transfer trs = mapper.selectTransSeq(T_seq);
		return trs;
	}

	@Transactional
	@Override
	public void insertTransS(Transfer ts) {
		log.info("#### 이체 내역 입력하기 : " + ts );
		
		mapper.insertTrans(ts);
		
		mapper.updateAssetMinus(ts.getA_seq_out(), ts.getT_money());
		mapper.updateAssetPlus(ts.getA_seq_in(), ts.getT_money());
	}

	@Transactional
	@Override
	public void deleteTransS(long T_seq) {
		log.info("#### 이체 내역 삭제하기 : " + T_seq);

		Transfer ts = mapper.selectTransSeq(T_seq);
		mapper.updateAssetMinus(ts.getA_seq_in(), ts.getT_money());
		mapper.updateAssetPlus(ts.getA_seq_out(), ts.getT_money());
		
		mapper.deleteTrans(T_seq);
	}

	@Transactional
	@Override
	public void updateTransS(Transfer ts) {
		log.info("#### 이체 내역 수정하기 : " + ts);
		
		Transfer trs = mapper.selectTransSeq(ts.getT_seq());
		mapper.updateAssetMinus(trs.getA_seq_in(), trs.getT_money());
		mapper.updateAssetPlus(trs.getA_seq_out(), trs.getT_money());
		
		mapper.updateTrans(ts);
		
		mapper.updateAssetMinus(ts.getA_seq_out(), ts.getT_money());
		mapper.updateAssetPlus(ts.getA_seq_in(), ts.getT_money());
	}

	@Override
	public Transfer searchInoutS(long T_seq, String searchStr) {
		log.info("검색");
		Map<String, Object> map =  new HashMap<String, Object>();
		map.put("T_seq", T_seq);
		
		String percentPlus = "%"+searchStr+"%";
		map.put("searchStr", percentPlus);
		Transfer trs = mapper.searchInout(map);
		return trs;
	}	
}
