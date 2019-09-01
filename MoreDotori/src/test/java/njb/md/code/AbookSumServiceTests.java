package njb.md.code;

import static org.junit.Assert.assertNotNull;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import njb.md.normal.domain.Inout;
import njb.md.normal.service.AbookSumService;
import njb.md.normal.service.InoutService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AbookSumServiceTests {
	@Autowired
	private AbookSumService service;
	
	@Autowired
	private InoutService ioservice;
	
	@Test
	public void testExist() {
		log.info("#### testExist() 써비스 존재 확인 : " + service);
		assertNotNull(service);
	}
	
	@Test
	public void testAllAssetS() {
		log.info("#### 자산 전체 합계 ####");
		
		long assetSum = service.selectAllAssetS("inhee@naver.com");
		log.info("===> 결과 : " + assetSum);
	}

	@Test
	public void testSelectInDayS() {
		log.info("#### 오늘 하루 총수입 ####");
		long selectInDay = service.selectDayS("inhee@naver.com", "2019/08/22", "IO001");
		log.info("===> 결과 : " + selectInDay);
	}
	
	@Test
	public void testReturnDateTest() {
		log.info("#### 반환값 확인 테스트 ###");
		long maxInDateSeq = service.selectMaxDayS("inhee@naver.com", "2019/09", "IO001");
			
		if(maxInDateSeq==0) {
			log.info("===> 결과 : 결과없음");
		}else {
			Inout io = ioservice.selectInoutSeqS(maxInDateSeq); 
			log.info("===> 결과 : " + io.getI_date());
			  
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy/MM/dd"); 
			String date = transFormat.format(io.getI_date()); 
			log.info("===> 결과2 : " + date);		
		}
	}
	
	@Test
	public void testSunday() {
		log.info("################# WEEK ##################");
		
		Date Sunday = service.returnSundayS("2019/08/30");
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy/MM/dd");
		String selectDate = transFormat.format(Sunday);
		
		long rs = service.selectWeekS("inhee@naver.com", selectDate, "IO001");
		log.info("결 과 : : : : : > " + rs);
	}
	
}

