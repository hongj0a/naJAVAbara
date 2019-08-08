package njb.md.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.ui.ModelMap;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
            "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class AsserListControllerTests {
	@Setter(onMethod_ = @Autowired)
	private WebApplicationContext ctx;
	private MockMvc mockMvc;
	
	@org.junit.Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	@Test
	public void testList() throws Exception {
		MockHttpServletRequestBuilder builder = MockMvcRequestBuilders.get("/alist/list.do");
		ModelMap mm = mockMvc.perform(builder).andReturn().getModelAndView().getModelMap();
		log.info("#AssetListControllerTests testList() mm: " + mm);
	}
	@Test
	public void testInsert() throws Exception {
		ResultActions ra = mockMvc
			.perform(MockMvcRequestBuilders.post("/alist/write.do")
			.param("m_id", "blah")
			.param("c_asset", "orange@naver.com")
			.param("a_nickname", "flower")
			.param("money", "5550")
			.param("a_memo", "ddmskladmlaskdlsmkd"));
		
		String result = ra.andReturn().getModelAndView().getViewName();
				
		log.info("#AssetListControllerTests testInsert() result: " + result);		
	}
	
	@Test
	public void testDelete() throws Exception {
		String result = mockMvc.perform(MockMvcRequestBuilders.get("/alist/del.do")
				.param("a_seq", "4"))
				.andReturn()
				.getModelAndView().getViewName();

		log.info("#AssetListControllerTests testDelete() result: " + result);
	}
	@Test
	public void testCont() throws Exception{
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/alist/cont.do")
				.param("a_seq", "2"))
				.andReturn()
				.getModelAndView().getModelMap());
	}
	@Test
	public void testUpdate() throws Exception {
		ResultActions ma = mockMvc
		.perform(MockMvcRequestBuilders.post("/alist/update.do")
				.param("m_id", "dnskmlma")
				.param("c_asset", "sakl22@naver.com")
				.param("a_nickname", "orange")
				.param("money", "145646")
				.param("a_memo", "00admllsmkd"));
			
			String result = ma.andReturn().getModelAndView().getViewName();
					
			log.info("#AssetListControllerTests testUpdate() result: " + result);	
	}
}
