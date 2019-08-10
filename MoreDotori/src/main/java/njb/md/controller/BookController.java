package njb.md.controller;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import njb.md.domain.Code;
import njb.md.domain.Inout;
import njb.md.domain.InoutForm;
import njb.md.domain.Transfer;
import njb.md.domain.TrsForm;
import njb.md.service.CodeService;
import njb.md.service.InoutService;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/normal")
@Log4j
@AllArgsConstructor
@NoArgsConstructor
public class BookController {
	@Setter(onMethod_ = @Autowired)
	private CodeService code_service;
	
	@Setter(onMethod_ = @Autowired)
	private InoutService inout_service;
	
	@RequestMapping("/book")
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
	
	//@RequestBody : json형태로 받아서 객체로 바꿔준다
	@RequestMapping(value ="/book/insertIO.do")
    @ResponseBody
	public String insertInOut(@ModelAttribute("iof") InoutForm iof, HttpServletRequest request) throws Exception{
		log.info("#### 가계부입력(수입/지출) ####");

		//날짜합치기
		String ioDateS = iof.getIo_yyyy()+"-"+iof.getIo_mmmm()+"-"+iof.getIo_dddd();
		Date ioDate = Date.valueOf(ioDateS);
		log.info(ioDate);
		
		//컴마없애기
		String yesCM = iof.getIo_money().replace(",", "");
		long noCM = Integer.parseInt(yesCM);
		
		//insert실행하기
		Inout io = new Inout(-1, iof.getIo_inout(), iof.getIo_asset(), iof.getIo_categori(), ioDate, noCM, iof.getIo_memo());
		log.info(io);
		inout_service.insertInoutS(io);
		
		return "success";
	}

	@RequestMapping(value ="/book/insertIO.do")
    @ResponseBody
	public String insertInOut(@ModelAttribute("trs") TrsForm trs, HttpServletRequest request) throws Exception{
		log.info("#### 가계부입력(이체) ####");

		//날짜합치기
		String trsDateS = trs.getTrs_yyyy()+"-"+trs.getTrs_mmmm()+"-"+trs.getTrs_dddd();
		Date trsDate = Date.valueOf(trsDateS);
		log.info(trsDate);
		
		//컴마없애기
		String yesCM = trs.getTrs_money().replace(",", "");
		long noCM = Integer.parseInt(yesCM);
		
		//-1인가?
		log.info("이체 시퀀스정보 : " + trs.getTrs_seq());

		//insert실행하기
		Transfer trsf = new Transfer(-1, trs.getTrs_inout(), trs.getTrs_in_asset(), trs.getTrs_out_asset(), trsDate, noCM, trs.getTrs_memo());
		log.info(trsf);
		
		return "success";
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
