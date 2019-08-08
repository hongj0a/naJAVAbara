package njb.md.service;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import chw.ex02.domain.Board;
import chw.ex02.domain.Criteria;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AsserListServiceTests {
	@Setter(onMethod_ = {@Autowired})
	private BoardService service;
	
	@Test
	public void testExist() {
		log.info("#testExist() service : " + service);
		assertNotNull(service);
	}
	
	@Test
	public void testListS() {
		/*List<Board> list = service.listS();
		log.info("#testExcist() list : " + list);*/
		service.getList(new Criteria(2,10)).forEach(board -> log.info(board));
	}
	@Test
	public void testInsertS() {
		Board Board = new Board(-1L, "가가","나나","다다","라라", null);
		service.insertS(Board);
		log.info("#testInsertS() called");
	}
	@Test
	public void testDeleteS() {
		service.deleteS(3);
		log.info("#testDeleteS() called");
	}
	@Test
	public void testContS() {
		service.contS(2);
		log.info("#tsetContS() called"); 
	}
	@Test
	public void testUpdateS() {
		Board board = new Board(2,"오오","다다","라라","무무",null);
		service.updateS(board);
		log.info("#testUpdateS() called");
	}
}
