package njb.md.customer.controller;

import java.security.Principal;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;
import njb.md.customer.domain.BoardVO;
import njb.md.customer.domain.ReplyVO;
import njb.md.customer.service.ReplyService;
import njb.md.security.domain.CustomUser;

@Controller
@Log4j
@AllArgsConstructor // boardService에 대해서 의존적이므로 이를 이용해서 생성자를 만들고 자동으로 주입
@NoArgsConstructor //기본생성자만들기
@RequestMapping("/reply/*")
public class ReplyController {
	@Resource
	private ReplyService service;
	
	// 게시판 리스트
	@RequestMapping("/list")
	public String list(HttpServletRequest request, HttpSession session, ReplyVO vo, Model mo) throws Exception {
		log.info(vo);
		String b_seq = request.getParameter("b_seq");
		vo.setB_seq(Integer.parseInt(b_seq));
		log.info(vo);
		List<ReplyVO> list = service.getReplyList(vo);
		mo.addAttribute("list", list);
		return "jsonView";
	}
	
	@RequestMapping("/write")
	public String write(HttpServletRequest request, HttpSession session, ReplyVO vo, Principal principal, Model mo) throws Exception {
		CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();
		log.info("user: " + user.getMember().getM_nickname());
		log.info("getC_member::::::::::::::::::"+user.getMember().getC_member());
		
		vo.setReg_id(user.getMember().getM_id());
		vo.setM_id(user.getMember().getM_id()); 
		vo.setMod_id(user.getMember().getM_nickname()); 
		String b_seq = request.getParameter("b_seq");
		String re_content = request.getParameter("re_content");
		String b_code	= request.getParameter("b_code");
		vo.setB_seq(Integer.parseInt(b_seq));
		vo.setB_code(b_code);
		vo.setRe_content(re_content);
		service.regReply(vo);
		mo.addAttribute("data","sucsses");
		return "jsonView";
	}
	
	@RequestMapping("/modify")
	public String modify(HttpServletRequest request, HttpSession session, ReplyVO vo, Principal principal, Model mo) throws Exception {
		CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();
		log.info("user: " + user.getMember().getM_nickname());
		log.info("getC_member::::::::::::::::::"+user.getMember().getC_member());
		
		vo.setReg_id(user.getMember().getM_nickname());
		String b_seq = request.getParameter("b_seq");
		String re_content = request.getParameter("re_content");
		String b_code	= request.getParameter("b_code");
		vo.setB_seq(Integer.parseInt(b_seq));
		vo.setB_code(b_code);
		vo.setRe_content(re_content);
		service.modReply(vo);
		mo.addAttribute("data","sucsses");
		return "jsonView";
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, HttpSession session, ReplyVO vo, Principal principal, Model mo) throws Exception {
		CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();
		log.info("user: " + user.getMember().getM_nickname());
		log.info("getC_member::::::::::::::::::"+user.getMember().getC_member());
		
		vo.setReg_id(user.getMember().getM_nickname());
		String b_seq = request.getParameter("b_seq");
		String re_content = request.getParameter("re_content");
		String b_code	= request.getParameter("b_code");
		vo.setB_seq(Integer.parseInt(b_seq));
		vo.setB_code(b_code);
		vo.setRe_content(re_content);
		service.removeReply(vo);
		mo.addAttribute("data","sucsses");
		return "jsonView";
	}
	
	
}
