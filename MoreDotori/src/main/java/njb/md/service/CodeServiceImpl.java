package njb.md.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import njb.md.mapper.CodeMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import njb.md.domain.Code;

@Log4j
@Service
@AllArgsConstructor
public class CodeServiceImpl implements CodeService {
	@Autowired
	private CodeMapper mapper;
	
	@Override
	public List<Code> getCodeListS(String C_code_horse) {
		List<Code> list = mapper.getCodeList(C_code_horse);
		log.info("#### Code List : " + list);
		return list;	
	}

	@Override
	public Code selectCodeS(String C_code) {
		Code cd = mapper.selectCode(C_code);
		log.info("#### Code : " + cd );
		return cd;
	}

}
