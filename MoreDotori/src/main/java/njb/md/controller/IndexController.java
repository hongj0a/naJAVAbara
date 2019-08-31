package njb.md.controller;

import java.util.List;

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

import lombok.AllArgsConstructor;
import njb.md.domain.Mem;
import njb.md.domain.Reply;
import njb.md.domain.Report;
import njb.md.service.ReportService;
import njb.md.service.MemService;

@Controller
@RequestMapping("/*")
public class IndexController {
	
	@Autowired
	private ReportService reportService;
	@Autowired
	private MemService memService;
	
	// 메인
	@GetMapping("/")
	public String index() {
		return "main/main";
	}

	// 로그인
	@GetMapping("/signin")
	public String signin() {
		return "member/sign_in";
	}

	// 회원가입
	@GetMapping("/signup")
	public String signup() {
		return "member/sign_up";
	}

	// 회원가입 유형선택
	@GetMapping("/signuptype")
	public String signuptype() {
		return "member/sign_up_type";
	}

	// 계정찾기
	@GetMapping("/find_account")
	public String find_account() {
		return "member/find_account";
	}

	// 마이페이지
	@GetMapping("/mypage")
	public String mypage() {
		return "member/my_page";
	}

	// 알림
	@GetMapping("/noti")
	public String noti() {
		return "main/notification";
	}

	// 일반 회원 - 가계부 작성
	@GetMapping("/book")
	public String book() {
		return "asset/accountBook";
	}

	// 일반 회원 - 가계부 (월간내역)
	@GetMapping("/book2")
	public String book2() {
		return "asset/accountBook_month";
	}

	// 일반 회원 - 자산 목록
	@GetMapping("/aList")
	public String aList() {
		return "asset/assetList";
	}

	// 일반 회원 - 자산 현황 및 통계
	@GetMapping("/asset_cond")
	public String asset_cond() {
		return "asset/asset_condition";
	}

	// 일반 회원 - 전문가 찾기
	@GetMapping("/eList")
	public String eList() {
		return "exepertList/exepertList";
	}

	// 일반 회원 - 전문가 상세정보
	@GetMapping("/eListIn")
	public String eListIn() {
		return "exepertList/exepertListIn";
	}

	// 일반 회원 - 상담 내역
	@GetMapping("/adList")
	public String adList() {
		return "adviceDetails/adviceList";
	}

	// 전문가 - 예약리스트
	@GetMapping("/expert_cal")
	public String expert() {
		return "expert/expert_cal";
	}

	// 관리자 - 회원 관리
	@GetMapping("/mem")
	@ResponseBody
	public ModelAndView getList(){
		List<Mem> list = memService.getList();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/mem");
		mv.addObject("list", list);
		//List<Mem> list = memService.getMemList();
		//model.addAttribute("list", memService.getList());
		//return getList(null);
		return mv;
	}
	// 관리자 - 회원관리 -정지풀기
	@RequestMapping(value="/normalUser", method=RequestMethod.POST)
	@ResponseBody
	public void normalUser(@RequestParam(value="idList[]") List<String> idList) {
		memService.normalUser(idList);
	}
	
	// 관리자 - 회원관리 - 정지
	@RequestMapping(value="/stopUserMem", method=RequestMethod.POST)
	@ResponseBody
	public void stopUserMem(
			@RequestParam(value="m_reason") String m_reason,
			@RequestParam(value="m_cdate") String m_cdate,
			@RequestParam(value="idList[]") List<String> idList
			) {
		for (String m_id : idList) {
			reportService.stopUser(m_id, m_reason, m_cdate);
		}
	}
	
	
	// 관리자 - 신고내역 게시글,뎃글
	@GetMapping("/report")
	@ResponseBody
	public ModelAndView getReplyList(){
		List<Report> reportList = reportService.getReportList();
		List<Reply> list = reportService.getReplyList();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/report");
		mv.addObject("reportList", reportList);
		mv.addObject("list", list);
		System.out.println("reportList------------------:"+reportList);
		return mv;
	}

	// 관리자 - 신고내역 - 게시글 목록
	@GetMapping("/getReportList")
	@ResponseBody
	public List<Report> getReportList() {
		
		List<Report> list = reportService.getReportList();
		
		return list;
	}
	
	
	// 관리자 - 신고내역 - 정지
	@GetMapping("/stopUser")
	@ResponseBody
	public void stopUser(String m_id, String m_reason, String m_cdate) {
		reportService.stopUser(m_id, m_reason, m_cdate);
	}
	

	/* 공통  */
	// 공지사항
	@GetMapping("/board_notice")
	public String board_notice() {
		return "board/board_notice";
	}

	// 자유게시판
	@GetMapping("/board_free")
	public String board_free() {
		return "board/board_free";
	}

	// PR게시판
	@GetMapping("/board_pr")
	public String board_pr() {
		return "board/board_pr";
	}

	// 글쓰기
	@GetMapping("/board_write")
	public String board_write() {
		return "board/board_write";
	}

	// 게시글내용
	@GetMapping("/board_content")
	public String board_content() {
		return "board/board_content";
	}

	// FAQ
	@GetMapping("/faq")
	public String faq() {
		return "cs/faq";
	}

	// Q&A
	@GetMapping("/qna")
	public String qna() {
		return "cs/qna";
	}

	// Q&A 글쓰기
	@GetMapping("/qna_write")
	public String qna_write() {
		return "cs/qna_write";
	}

}
