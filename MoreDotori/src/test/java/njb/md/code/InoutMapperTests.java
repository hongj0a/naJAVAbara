package njb.md.code;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import njb.md.domain.Inout;
import njb.md.mapper.InoutMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class InoutMapperTests {
	@Setter(onMethod_ = @Autowired)
	private InoutMapper inoutMapper;

	@Test
	public void testGetCodeList() {
		log.info("#inoutMapper: " + inoutMapper.getClass().getName());
		inoutMapper.selectInoutSeq(3);
	}

}
