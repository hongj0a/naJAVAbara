package njb.md.mapper;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import njb.md.domain.Member;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {

  @Setter(onMethod_ = @Autowired)
  private MemberMapper mapper;
  
  
  @Test
  public void testRead() {
    
    Member vo = mapper.read("inhee@naver.com");
    
    log.info(vo);
    
    vo.getAuthList().forEach(authVO -> log.info(authVO));
    
  }
  
}

