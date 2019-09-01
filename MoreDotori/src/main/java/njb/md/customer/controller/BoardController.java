package njb.md.customer.controller;

import java.security.Principal;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;
import njb.md.customer.domain.BoardMgrVO;
import njb.md.customer.domain.BoardVO;
import njb.md.customer.service.BoardService;
import njb.md.security.domain.CustomUser;

@Controller
@Log4j
@AllArgsConstructor // boardService에 대해서 의존적이므로 이를 이용해서 생성자를 만들고 자동으로 주입
@NoArgsConstructor //기본생성자만들기
@RequestMapping("/board/*")
public class BoardController {
	
	@Resource
	private BoardService service;
	
	
	//  어떤 게시판의 목록을 불러와야 할까요? b_code값에 따라서 faq,qna 나머지는 그냥 게시판으로 연결
	// b_code 와 b_seq에 따라 알맞은 내용 불러오기
	//	로그인 정보에 따라서 게시물의 작성, 수정, 삭제 권한이 달라짐(신고정지먹은 경우 관람(?)만 가능)/ 일대일문의 내용이 달라짐 
	
	
	// 게시판 리스트
	@RequestMapping("/{b_code}/list")
	public String list(HttpServletRequest request, HttpSession session,@PathVariable String b_code, BoardVO vo,Principal principal, Model mo) throws Exception {
		//@PathVariable: url 경로에 변수를 넣어준다, null 공백값의 parameter 쓰지말것
		String searchType = request.getParameter("searchType");
		String searchWord = request.getParameter("searchWord");
		CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();
		log.info("user: " + user.getMember().getM_nickname());
		log.info("getC_member::::::::::::::::::"+user.getMember().getC_member());
		log.info(searchWord);
		log.info(searchType);
		
		if(searchWord != null){
			vo.setSearchWord(searchWord);
			log.info("BoardVO:::::::::::::::"+ vo.getSearchWord());
		}
		if(searchType != null){
			vo.setSearchType(searchType);
			log.info("BoardVO:::::::::::::::"+ vo.getSearchType());
		}		log.info("BoardVO:::::::::::::::"+ vo);
		
		BoardMgrVO tt = new BoardMgrVO();
		tt.setB_code(b_code); // boardMgr 데이터
		vo.setB_code(b_code); // board 데이터
		
		tt = service.getBoardMgr(tt);//어떤게시판
		List<BoardVO> list = service.getBoardList(vo);//해당 보드의 리스트
		mo.addAttribute("BoardMgrVO", tt);
		mo.addAttribute("boardList", list);
		mo.addAttribute("paramBoard", vo);
		mo.addAttribute("tuser", user.getMember());
		if(b_code.equals("BO003")) {
			return "cs/faq";
		}else if (b_code.equals("BO004")) {
			return "cs/qna";
		}else {
			return "board/list";
		}
	}
	
	// 게시판 내용(상세보기)
	@RequestMapping("/{b_code}/content")
	public String content (HttpServletRequest request, HttpSession session,@PathVariable String b_code, String b_seq, BoardVO vo,Principal principal, Model mo) throws Exception {
		log.info(vo);
		BoardMgrVO tt = new BoardMgrVO();
		tt.setB_code(b_code); // boardMgr 데이터
		vo.setB_code(b_code); // board 데이터
		CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();
		log.info("user: " + user.getMember().getM_nickname());
		log.info("getC_member::::::::::::::::::"+user.getMember().getC_member());
		tt = service.getBoardMgr(tt);//어떤게시판
		if(!vo.getMode().equals("view")) service.modReadNum(vo);
		BoardVO bo = new BoardVO();
		bo = service.getBoard(vo);
		mo.addAttribute("BoardMgrVO", tt);
		mo.addAttribute("board", bo);
		mo.addAttribute("paramBoard", vo);
		mo.addAttribute("tuser", user.getMember());
		if(b_code.equals("BO003")) {
			return "cs/faq";
		}else if (b_code.equals("BO004")) {
			return "cs/qna";
		}else {
			return "board/content";
		}
	}
	
	// 좋아요 하트
	@RequestMapping("/{b_code}/heart")
	public String heart(HttpServletRequest request, HttpSession session,@PathVariable String b_code, String b_seq, BoardVO vo, Principal principal, Model mo) throws Exception {
		log.info(vo);
		log.info(b_seq);
		CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();
		log.info("user: " + user.getMember().getM_nickname());
		log.info("getC_member::::::::::::::::::"+user.getMember().getC_member());
		vo.setB_code(b_code);
		vo.setReg_id(user.getMember().getM_nickname());
		vo.setB_seq(Integer.parseInt(b_seq));
		mo.addAttribute("tuser", user.getMember());
		service.modHeartNum(vo);
		vo = service.getBoard(vo);
		
		mo.addAttribute("boardVO", vo);
		return "jsonView";
	}

	// 글쓰기 페이지로
	@RequestMapping("/{b_code}/write")
	public String write(HttpServletRequest request, HttpSession session,@PathVariable String b_code,  @ModelAttribute("boardVO") BoardVO vo, Principal principal, Model mo) throws Exception {
		log.info(vo);
		BoardMgrVO tt = new BoardMgrVO();
		tt.setB_code(b_code); // boardMgr 데이터
		vo.setB_code(b_code); // board 데이터
		tt = service.getBoardMgr(tt);//어떤게시판
		BoardVO tempv = new BoardVO();
		tempv = vo;
		CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();
		vo = service.getBoard(vo);
		if(vo == null) {
			log.info("null");
			vo = tempv;
			vo.setB_content("");
		}
		log.info("dddddddddddddddddddddddddd:::::::::::::::::::::::::::::::::::::");
		log.info(vo);
		mo.addAttribute("BoardMgrVO", tt);
		mo.addAttribute("boardVO", vo);
		mo.addAttribute("tuser", user.getMember());
		
		if(b_code.equals("BO003")) {
			return "cs/faqwrite";
		}else if (b_code.equals("BO004")) {
			return "cs/qna";
		}else {
			return "board/board_write";
		}
	}
	// 내용작성 후 리스트화면으로 가기?
	@RequestMapping("/{b_code}/act")
	public String act(HttpServletRequest request, HttpSession session,@PathVariable String b_code, @ModelAttribute("boardVO") BoardVO vo, Principal principal, Model mo) throws Exception {
		log.info("act::::::::::::::::::::");
		log.info(vo);
		CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();
		log.info("user: " + user.getMember().getM_nickname());
		log.info("getC_member::::::::::::::::::"+user.getMember().getC_member());
		mo.addAttribute("tuser", user.getMember());
		if(!b_code.equals("BO003")) {
			vo.setFcategori(b_code);
		}
		vo.setB_filekey("asdfasdfsadfas");
		vo.setReg_id(user.getMember().getM_nickname());
		vo.setB_code(b_code);
		vo.setFcategori(b_code);
		vo.setB_filekey("asdfasdfsadfas");
		
		if(vo.getB_seq() > 0) {
			service.modBoard(vo);
		} else {
			service.regBoard(vo);
		}
		
		mo.addAttribute("boardVO", vo);
		return "redirect:/board/{b_code}/list";
	}

	// 내용작성 후 리스트화면으로 가기?
		@RequestMapping("/{b_code}/delete")
		public String delete(HttpServletRequest request, HttpSession session,@PathVariable String b_code, @ModelAttribute("boardVO") BoardVO vo, Principal principal, Model mo) throws Exception {
			log.info("delete::::::::::::::::::::");
			log.info(vo);
			CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();
			log.info("user: " + user.getMember().getM_nickname());
			log.info("getC_member::::::::::::::::::"+user.getMember().getC_member());
			mo.addAttribute("tuser", user.getMember());
			vo.setReg_id(user.getMember().getM_nickname());
			vo.setFcategori(b_code);
			vo.setB_filekey("asdfasdfsadfas");
			service.removeBoard(vo);
			mo.addAttribute("boardVO", vo);
			return "redirect:/board/{b_code}/list";
		}
	/*
	 * @PostMapping("/{b_code}/write") public String writeContent(HttpServletRequest
	 * request, HttpSession session,@PathVariable String b_code, BoardVO vo, Model
	 * mo) throws Exception { vo.setB_code(b_code); service.regBoard(vo);
	 * mo.addAttribute("boardVO", vo); return "redirect:board/list"; }
	 */

}
