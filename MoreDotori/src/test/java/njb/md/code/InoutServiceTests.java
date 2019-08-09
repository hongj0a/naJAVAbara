package njb.md.code;

import static org.junit.Assert.assertNotNull;

import java.sql.Date;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import njb.md.domain.Inout;
import njb.md.service.InoutService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class InoutServiceTests {
	@Autowired
	private InoutService service;
	
	@Test
	public void testExist() {
		log.info("#testExist() CodeService: " + service);
		assertNotNull(service);
	}
	
	@Test
	public void testInsert() {
		log.info("### test insert ###");
		Date date = Date.valueOf("1999-01-11");
		Inout io = new Inout(-1, "IO001", 6, "IN001", date, 112121212, "ㅎㅎ");
		
		log.info("### insert 할 내용 : " + io);
		service.insertInoutS(io);
	}

}

