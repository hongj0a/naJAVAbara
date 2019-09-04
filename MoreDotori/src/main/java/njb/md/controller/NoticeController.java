package njb.md.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import njb.md.customer.domain.BoardMgrVO;
import njb.md.customer.domain.BoardVO;
import njb.md.customer.service.BoardService;
import njb.md.domain.Notice;
import njb.md.security.domain.CustomUser;
import njb.md.service.CodeService;
import njb.md.service.NoticeService;

@Log4j
@RequestMapping("/noti")
@Controller
public class NoticeController {
	@Setter(onMethod_ = @Autowired)
	private CodeService code_service;
	
	@Setter(onMethod_ = @Autowired)
	private NoticeService noti_service;

	@Setter(onMethod_ = @Autowired)
	private BoardService bd_service;	
	
	//출력할 날짜 형식
	SimpleDateFormat transFormat1 = new SimpleDateFormat("MM월 dd일");
	SimpleDateFormat transFormat2 = new SimpleDateFormat("MM월 dd일 HH시 mm분");	
	
	@RequestMapping("")
	public ModelAndView notiList(Principal principal){
		log.info("### 알림리스트 출력 ###");
		
		//사용자정보
		CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();

		//날짜제목리스트
		List<String> dateList = new ArrayList<String>();
		for(String dateS : noti_service.dateNotiListS(user.getMember().getM_id())) {
			String[] array = dateS.split("/");
			dateList.add(array[1]+"월 "+array[2]+"일");
		}
		
		//데이타리스트
		List<Notice> realList = noti_service.getNotiListS(user.getMember().getM_id());
		ArrayList<HashMap<String,Object>> hmlist = new ArrayList<HashMap<String,Object>>();
        
		for(Notice noti : realList) {
        	HashMap<String,Object> hm = new HashMap<String, Object>();
        	hm.put("MMDD", transFormat1.format(noti.getN_date()));
			hm.put("N_seq", noti.getN_seq());
			hm.put("C_horsehead", code_service.selectCodeS(noti.getC_horsehead()).getC_name());
			hm.put("N_bseq", noti.getN_bseq());
			hm.put("N_subject", noti.getN_subject());
			hm.put("N_content", noti.getN_content());
			hm.put("C_nstate", noti.getC_nstate());
			hm.put("N_date", transFormat2.format(noti.getN_date()));
			hmlist.add(hm);
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main/notification");
		mv.addObject("dateList", dateList);
		mv.addObject("hmlist", hmlist);
	
		return mv;
	}
	
	@GetMapping("/update.do")
	public String updateState(long N_seq) {
		noti_service.updateNoticeS(N_seq, "NS003");
		
		return "redirect:/noti";
	}
	
	@RequestMapping(value="/headerList.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public ResponseEntity<Object> notiHeaderList(String M_id, HttpServletRequest request) throws Exception{

		HttpHeaders responseHeaders = new HttpHeaders();
        ArrayList<HashMap<String,Object>> hmlist = new ArrayList<HashMap<String,Object>>();
		
		List<Notice> realList = noti_service.getNotiListHeaderS(M_id);
		for(Notice noti : realList) {
			String cont = noti.getN_content();
			if(cont.length()>12) {
				cont = cont.substring(0, 10)+"...";
			}
        	HashMap<String,Object> hm = new HashMap<String, Object>();
			hm.put("N_seq", noti.getN_seq());
			hm.put("C_horsehead", code_service.selectCodeS(noti.getC_horsehead()).getC_name());
			hm.put("N_bseq", noti.getN_bseq());
			hm.put("N_subject", noti.getN_subject());
			hm.put("N_content", cont);
			hm.put("N_date", transFormat2.format(noti.getN_date()));
			hmlist.add(hm);
		}		
        
		//jsonArray를 사용하려면 pom.xml에 메이븐추가해야함 ^^
        JSONArray json = new JSONArray(hmlist);        
        return new ResponseEntity<Object>(json.toString(), responseHeaders, HttpStatus.CREATED);
	
	}
	
	// 게시판 내용(상세보기)
	@RequestMapping("/cont.do")
	public String content (Model mo, HttpServletRequest request, HttpSession session, Principal principal, String N_seq, String N_bseq) throws Exception {
		BoardMgrVO tt = new BoardMgrVO();
		BoardVO vo = new BoardVO();
		
		tt.setB_code("BO002"); // boardMgr 데이터
		vo.setB_code("BO002"); // board 데이터
		
		CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();
		tt = bd_service.getBoardMgr(tt);//어떤게시판
		
		BoardVO bo = new BoardVO();
		int nbseq =Integer.parseInt(N_bseq);
		vo.setB_seq(nbseq);
		bo = bd_service.getBoard(vo);
		
		mo.addAttribute("BoardMgrVO", tt);
		mo.addAttribute("board", bo);
		mo.addAttribute("paramBoard", vo);
		mo.addAttribute("tuser", user.getMember());
		
		long nseq =Long.parseLong(N_seq);
		noti_service.updateNoticeS(nseq, "NS002");
		
		return "board/content";
	}	
	
	@RequestMapping(value ="/updateHeader.do", produces="application/json; charset=utf-8")
    @ResponseBody
	public String updateStateHeader(String N_seq, HttpServletRequest request) throws Exception{
		long nseq =Long.parseLong(N_seq);
		noti_service.updateNoticeS(nseq, "NS003");
		return "success";
	}
	
	@RequestMapping(value="/headerCount.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public long notiHeaderCount(String M_id, HttpServletRequest request) throws Exception{
        return noti_service.headerCountS(M_id);
	}
	
	
	
}