package njb.md.code;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import njb.md.domain.Code;
import njb.md.service.CodeService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CodeServiceTests {
	@Autowired
	private CodeService service;
	
	@Test
	public void testExist() {
		log.info("#testExist() CodeService: " + service);
		assertNotNull(service);
	}
	
	@Test
	public void testGetCodeList() {
		log.info("testCodeService");
		String c_code_horse = "IO%";
		List<Code> list = service.getCodeListS(c_code_horse);
		for(Code code : list) {
			log.info("#c_code: " + code.getC_code() + ", c_name:" + code.getC_name());
		}
	}

}

