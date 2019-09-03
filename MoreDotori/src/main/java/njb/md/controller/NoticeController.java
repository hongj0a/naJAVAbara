package njb.md.controller;


import java.security.Principal;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
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
	
	@RequestMapping("")
	public ModelAndView notiList(Principal principal){
		log.info("### 알림리스트 출력 ###");
		
		//사용자정보
		CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();
		
		//출력할 날짜 형식
		SimpleDateFormat transFormat1 = new SimpleDateFormat("MM월 dd일");
		SimpleDateFormat transFormat2 = new SimpleDateFormat("MM월 dd일 HH시 mm분");

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
	
}