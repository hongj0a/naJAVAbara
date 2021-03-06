package njb.md.code;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import njb.md.domain.Code;
import njb.md.mapper.CodeMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CodeMapperTests {
	@Setter(onMethod_ = @Autowired)
	private CodeMapper codeMapper;

	@Test
	public void testGetCodeList() {
		log.info("#codeMapper: " + codeMapper.getClass().getName());
		
		String c_code_horse = "IO%";
		List<Code> list = codeMapper.getCodeList(c_code_horse);
		for(Code code: list) {
			log.info("#c_code: " + code.getC_code() + ", c_name:" + code.getC_name());
		}
	}

}
