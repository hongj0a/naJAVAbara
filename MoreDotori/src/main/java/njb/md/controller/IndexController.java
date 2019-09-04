package njb.md.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

import njb.md.domain.AssetList;
import njb.md.domain.Code;
import njb.md.service.AssetListService;
import njb.md.service.CodeService;
import lombok.AllArgsConstructor;
import njb.md.domain.Mem;
import njb.md.domain.Reply;
import njb.md.domain.Report;
import njb.md.service.ReportService;
import njb.md.service.MemService;

@Log4j
@Controller
public class IndexController {
	@Setter(onMethod_ = @Autowired)
	private AssetListService service;
	
	@Autowired
	private ReportService reportService;
	
	@Autowired
	private MemService memService;
	
	@Autowired
	private CodeService codeService;
	
	// 메인
	@GetMapping("/")
	public String index() {
		return "main/main";
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
	
	
	   // 관리자 - 회원 관리
	 @GetMapping("/admin/mem")
	 @ResponseBody
	 public ModelAndView getList(){
	      List<Mem> list = memService.getList();
	      for(Mem item: list) {
	    	  Code code = codeService.selectCodeS(item.getC_member());
	    	  item.setC_member(code.getC_name());
	    	  code = codeService.selectCodeS(item.getC_mstate());
	    	  item.setC_mstate(code.getC_name());
	      }
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("manager/mem");
	      mv.addObject("list", list);
	      return mv;
	   }
	 
	   // 관리자 - 회원관리 -정지풀기
	 @RequestMapping(value="/admin/normalUser", method=RequestMethod.POST)
	 @ResponseBody
	   public void normalUser(@RequestParam(value="idList[]") List<String> idList) {
	      memService.normalUser(idList);
	 }
	   
	   // 관리자 - 회원관리 - 정지
	   @RequestMapping(value="/admin/stopUserMem", method=RequestMethod.POST)
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
	   @GetMapping("/admin/report")
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
	   @GetMapping("/admin/getReportList")
	   @ResponseBody
	   public List<Report> getReportList() {
	      
	      List<Report> list = reportService.getReportList();
	      
	      return list;
	   }
	   
	   
	   // 관리자 - 신고내역 - 정지
	   @GetMapping("/admin/stopUser")
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
