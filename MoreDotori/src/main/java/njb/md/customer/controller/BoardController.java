package njb.md.customer.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;
import njb.md.customer.domain.BoardMgrVO;
import njb.md.customer.domain.BoardVO;
import njb.md.customer.service.BoardService;

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
	public String list(HttpServletRequest request, HttpSession session,@PathVariable String b_code, BoardVO vo, Model mo) throws Exception {
		//@PathVariable: url 경로에 변수를 넣어준다, null 공백값의 parameter 쓰지말것
		String searchType = request.getParameter("searchType");
		String searchWord = request.getParameter("searchWord");
		
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
		
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("{b_code}/list");
//		mv.addObject("list", list);
		//ModelAndView mv = new ModelAndView("{b_code}/list", "list", list);		
		BoardMgrVO tt = new BoardMgrVO();
		tt.setB_code(b_code); // boardMgr 데이터
		vo.setB_code(b_code); // board 데이터
		
		tt = service.getBoardMgr(tt);//어떤게시판
		List<BoardVO> list = service.getBoardList(vo);//해당 보드의 리스트
		mo.addAttribute("BoardMgrVO", tt);
		mo.addAttribute("boardList", list);
		mo.addAttribute("paramBoard", vo);

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
	public String content (HttpServletRequest request, HttpSession session,@PathVariable String b_code, String b_seq, BoardVO vo, Model mo) throws Exception {
		
		
		return "board/content";
	}
		
	


	
	
}
