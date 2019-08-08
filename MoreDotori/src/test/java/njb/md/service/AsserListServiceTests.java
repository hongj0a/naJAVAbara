package njb.md.service;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import njb.md.domain.AssetList;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AsserListServiceTests {
	@Setter(onMethod_ = {@Autowired})
	private AssetListService service;
	
	@Test
	public void testExist() {
		log.info("#testExist() service : " + service);
		assertNotNull(service);
	}
	
	@Test
	public void testListS() {
		List<AssetList> list = service.listS();
		log.info("#testExcist() list : " + list);
	}
	@Test
	public void testInsertS() {
		AssetList AssetList = new AssetList(-1L, "nari@naver.com","AS001","다다", 2L, "라라");
		service.insertS(AssetList);
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
		AssetList AssetList = new AssetList(2,"오오","AS002","라라", 3L, "무무");
		service.updateS(AssetList);
		log.info("#testUpdateS() called");
	}
}
