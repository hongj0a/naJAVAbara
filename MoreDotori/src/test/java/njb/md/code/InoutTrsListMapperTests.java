package njb.md.code;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import njb.md.domain.InoutTrsList;
import njb.md.mapper.InoutTrsListMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class InoutTrsListMapperTests {
	@Setter(onMethod_ = @Autowired)
	private InoutTrsListMapper mapper;

	@Test
	public void testGetCodeList() {
		log.info("#inoutMapper: " + mapper.getClass().getName());
		List<InoutTrsList> list = mapper.getListAscDay("inhee@naver.com", "2019/08/09");
		for(InoutTrsList ls : list) {
			log.info(ls);
		}
	}

}
