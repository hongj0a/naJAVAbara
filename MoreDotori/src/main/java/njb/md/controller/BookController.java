package njb.md.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import njb.md.domain.Code;
import njb.md.service.CodeService;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@NoArgsConstructor
public class BookController {
	@Setter(onMethod_ = @Autowired)
	private CodeService code_service;
	
	@GetMapping("/book")
	public ModelAndView myAccountBook() {
		log.info("#### 가계부 ####");
		
		//가계부 작성 관련 옵션들
		List<Code> codelistIO = code_service.getCodeListS("IO%");
		List<Code> codelistIN = code_service.getCodeListS("IN%");
		List<Code> codelistOT = code_service.getCodeListS("OT%");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("asset/accountBook");
		mv.addObject("codelistIO", codelistIO);
		mv.addObject("codelistIN", codelistIN);
		mv.addObject("codelistOT", codelistOT);
		return mv;
	}

	@GetMapping("/book2")
	public ModelAndView myAccountMonthlyBook() {
		log.info("#### 월가계부 ####");
		
		//가계부 작성 관련 옵션들
		List<Code> codelistIO = code_service.getCodeListS("IO%");
		List<Code> codelistIN = code_service.getCodeListS("IN%");
		List<Code> codelistOT = code_service.getCodeListS("OT%");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("asset/accountBook_month");
		mv.addObject("codelistIO", codelistIO);
		mv.addObject("codelistIN", codelistIN);
		mv.addObject("codelistOT", codelistOT);
		return mv;
	}
}
