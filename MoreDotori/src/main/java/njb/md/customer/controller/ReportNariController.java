package njb.md.customer.controller;

import java.security.Principal;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;
import njb.md.customer.domain.ReportVO;
import njb.md.customer.service.ReportService;
import njb.md.security.domain.CustomUser;

@Controller
@Log4j
@AllArgsConstructor // boardService에 대해서 의존적이므로 이를 이용해서 생성자를 만들고 자동으로 주입
@NoArgsConstructor //기본생성자만들기
@RequestMapping("/report/*")
public class ReportNariController {
	@Resource
	private ReportService service;
	
	@RequestMapping("/write")
	public String write(HttpServletRequest request, HttpSession session, ReportVO vo,Principal principal, Model mo) throws Exception {
		log.info(session);
		String b_seq = request.getParameter("b_seq");
		String b_code	= request.getParameter("b_code");
		String re_seq = request.getParameter("re_seq");
		String rd_content = request.getParameter("rd_content");
		
		ReportVO revo = new ReportVO();
		revo.setB_seq(b_seq.equals("") ? "": b_seq);
		revo.setB_code(b_code);
		revo.setC_sort(b_seq.equals("") ? "RP002" : "RP001");
		revo.setRe_seq(re_seq.equals("") ? "": re_seq);
		revo.setRd_content(rd_content);
		CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();
		log.info("user: " + user.getMember().getM_nickname());
		log.info("getC_member::::::::::::::::::"+user.getMember().getC_member());
		
		revo.setM_id(user.getMember().getM_id());
		int test = service.getMreportCnt(revo);
		if(test <= 0) {
			service.regReport(revo);
		} 
		
		ReportVO revo2 = new ReportVO();
		revo2 = service.getMreport(revo);
		log.info("ReportVO::::::::::::::::"+revo2);
		revo.setRp_seq(revo2.getRp_seq());
		log.info("ReportVO::::::::::::::::"+revo);
		service.regReportDetail(revo);
		/*
		 * vo.setB_seq(Integer.parseInt(b_seq)); vo.setC_bcategori(b_code);
		 * vo.setRe_content(re_content); service.regReply(vo);
		 */
		mo.addAttribute("data","sucsses");
		return "jsonView";
	}
}
