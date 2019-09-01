package njb.md.normal.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import njb.md.normal.domain.Inout;
import njb.md.normal.mapper.InoutMapper;

@Log4j
@Service
@AllArgsConstructor
public class InoutServiceImpl implements InoutService {
	@Autowired
	private InoutMapper mapper;
	
	@Override
	public Inout selectInoutSeqS(long I_seq) {
		log.info("#### 수입및지출 정보 가져오기 : " + I_seq );
		
		Inout inout = mapper.selectInoutSeq(I_seq);
		return inout;
	}

	@Override
	public void insertInoutS(Inout io) {
		log.info("#### 수입및지출 내역 입력하기 : " + io );
		
		mapper.insertInout(io);
		
		if(io.getC_inout().equals("IO001")) {
			mapper.updateAssetPlus(io);
		}else {
			mapper.updateAssetMinus(io);
		}
	}

	@Transactional
	@Override
	public void deleteInoutS(long I_seq) {
		log.info("#### 수입및지출 내역 삭제하기 : " + I_seq);
		
		Inout io = mapper.selectInoutSeq(I_seq);
		if(io.getC_inout().equals("IO001")) {
			mapper.updateAssetMinus(io);
		}else {
			mapper.updateAssetPlus(io);
		}
		
		mapper.deleteInout(I_seq);
	}

	@Transactional
	@Override
	public void updateInoutS(Inout io) {
		log.info("#### 수입및지출 내역 수정하기 : " + io);
		
		Inout iot = mapper.selectInoutSeq(io.getI_seq());
		if(iot.getC_inout().equals("IO001")) {
			mapper.updateAssetMinus(iot);
		}else {
			mapper.updateAssetPlus(iot);
		}		
		
		mapper.updateInout(io);
		
		if(io.getC_inout().equals("IO001")) {
			mapper.updateAssetPlus(io);
		}else {
			mapper.updateAssetMinus(io);
		}
	}
	
	@Override
	public Inout searchInoutS(long I_seq, String searchStr) {
		log.info("검색");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("I_seq", I_seq);
		
		String percentPlus = "%"+searchStr+"%";
		map.put("searchStr", percentPlus);
		Inout io = mapper.searchInout(map);
		return io;
	}
}
