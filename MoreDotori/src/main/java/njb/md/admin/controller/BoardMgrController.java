package njb.md.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import njb.md.customer.domain.BoardMgrVO;
import njb.md.customer.service.BoardService;

@Controller
@Log4j
@AllArgsConstructor // boardService에 대해서 의존적이므로 이를 이용해서 생성자를 만들고 자동으로 주입
@NoArgsConstructor //기본생성자만들기
@RequestMapping("/adm/board/*")
public class BoardMgrController {
	
	@Setter(onMethod_=@Autowired)
	private BoardService service;

		

}
 