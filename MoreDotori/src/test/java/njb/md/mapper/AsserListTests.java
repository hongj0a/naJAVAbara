package njb.md.mapper;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import njb.md.domain.AssetList;
import njb.md.mapper.AssetListMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AsserListTests {

	@Setter(onMethod_ = @Autowired)
	private AssetListMapper assetListMapper;

	@Test
	public void testList() {
		log.info("#assetListMapper: " + assetListMapper.getClass().getName());
		log.info("#call list(): " + assetListMapper.list());
	}
	public void testInsert() {
		AssetList dto = new AssetList(-1L, "가", "AS001", "다", 2L, "라");
		assetListMapper.insert(dto);
		log.info("#insert() 수행 완료");
	}
	@Test
	public void testDelete() {
		assetListMapper.delete(3);
		log.info("#delete() 수행 완료"); 
	}
	@Test
	public void testCont() {
		AssetList alistvo = assetListMapper.cont(2);
		log.info("#cont() 수행 완료");
	}
	@Test
	public void testUpdate() {
		AssetList alistvo = new AssetList(2L,"오징어","AS002","쭈꾸미", 32L, "낙지");
		assetListMapper.update(alistvo);
		log.info("#update() 수행 완료");
	}
}
