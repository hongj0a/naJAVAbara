package njb.md.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
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
	public String mem() {
		return "manager/mem";
	}

	// 관리자 - 신고
	@GetMapping("/report")
	public String report() {
		return "manager/report";
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
