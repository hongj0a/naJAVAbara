package njb.md.mapper;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import chw.ex02.domain.Board;
import chw.ex02.domain.Criteria;
import chw.ex02.mapper.BoardMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AsserListTests {

	@Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;

	@Test
	public void testList() {
		log.info("#boardMapper: " + boardMapper.getClass().getName());
		log.info("#call list(): " + boardMapper.list());
	}
	@Test
	public void testPaging() {
		Criteria cri = new Criteria();
		cri.setPageNum(2);
		cri.setAmount(5);
		List<Board> list = boardMapper.getListWithPaging(cri);
		list.forEach(board -> log.info(board.getSeq()));
	}
	@Test
	public void testInsert() {
		Board dto = new Board(-1L, "가", "나", "다","라", null);
		boardMapper.insert(dto);
		log.info("#insert() 수행 완료");
	}
	@Test
	public void testDelete() {
		boardMapper.delete(3);
		log.info("#delete() 수행 완료"); 
	}
	@Test
	public void testCont() {
		Board board = boardMapper.cont(2);
		log.info("#cont() 수행 완료");
	}
	@Test
	public void testUpdate() {
		Board board = new Board(2,"오징어","문어","쭈꾸미","낙지",null);
		boardMapper.update(board);
		log.info("#update() 수행 완료");
	}
}
