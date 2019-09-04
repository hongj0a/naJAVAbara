package njb.md.normal.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import njb.md.domain.Code;
import njb.md.domain.Member;
import njb.md.normal.domain.Asset;
import njb.md.normal.domain.Inout;
import njb.md.normal.domain.InoutForm;
import njb.md.normal.domain.InoutTrsList;
import njb.md.normal.domain.Transfer;
import njb.md.normal.domain.TrsForm;
import njb.md.normal.service.AbookSumService;
import njb.md.normal.service.AssetService;
import njb.md.service.CodeService;
import njb.md.service.MemberService;
import njb.md.normal.service.InoutService;
import njb.md.normal.service.InoutTrsListService;
import njb.md.normal.service.TransferService;
import njb.md.security.domain.CustomUser;
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
	
	@Setter(onMethod_ = @Autowired)
	private TransferService trs_service;	

	@Setter(onMethod_ = @Autowired)
	private InoutTrsListService iotl_service;
	
	@Setter(onMethod_ = @Autowired)
	private AbookSumService abs_service;
	
	@Setter(onMethod_ = @Autowired)
	private AssetService ass_service;

	@Setter(onMethod_ = @Autowired)
	private MemberService mem_service;
	
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
	
	@RequestMapping(value ="/book/saveMonth.do")
    @ResponseBody
	public String saveMonth(String M_id, long M_month, HttpServletRequest request) throws Exception{
		log.info("### 예산저장 ####");
		
		mem_service.setMonth(M_id, M_month);
		
		Member mem = mem_service.readS(M_id);
		CustomUser customuser = new CustomUser(mem);
		
		Authentication authentication = new UsernamePasswordAuthenticationToken(customuser, customuser.getPassword(), customuser.getAuthorities());
		SecurityContextHolder.getContext().setAuthentication(authentication);
		
		return "success";
	}	
	
	@RequestMapping(value="/book/assetList.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public ResponseEntity<Object> getAssetList(String M_id, HttpServletRequest request) throws Exception{
		log.info("### 자산리스트를 가져올게욘 ####");
		//계정정보 및 날짜로 가계부 수입 및 지출, 이체 정보 가져오기
		
		List<Asset> assetList = ass_service.selectAssetListS(M_id);
		HttpHeaders responseHeaders = new HttpHeaders();
        ArrayList<HashMap<String,Object>> hmlist = new ArrayList<HashMap<String,Object>>();
        
        for(Asset as : assetList) {
        	HashMap<String,Object> hm = new HashMap<String, Object>();
        	hm.put("A_seq", as.getA_seq());
        	hm.put("A_nickname", as.getA_nickname());
        	hmlist.add(hm);
        }
		
		//jsonArray를 사용하려면 pom.xml에 메이븐추가해야함 ^^
        JSONArray json = new JSONArray(hmlist);        
        return new ResponseEntity<Object>(json.toString(), responseHeaders, HttpStatus.CREATED);
	}	
	
	//@RequestBody : json형태로 받아서 객체로 바꿔준다
	@RequestMapping(value ="/book/insertIO.do")
    @ResponseBody
	public String insertInOut(@ModelAttribute("iof") InoutForm iof, HttpServletRequest request) throws Exception{
		log.info("#### 가계부입력(수입/지출) ####");

		//날짜합치기
		String ioDateS = iof.getIo_yyyy().trim()+"-"+iof.getIo_mmmm().trim()+"-"+iof.getIo_dddd().trim();
		Date ioDate = Date.valueOf(ioDateS);
		log.info(ioDate);
		
		//컴마없애기
		String yesCM = iof.getIo_money().replace(",", "");
		long noCM = Integer.parseInt(yesCM);
		
		if(iof.getIo_seq()==0) {
			//insert실행하기
			Inout io = new Inout(-1, iof.getIo_inout(), iof.getIo_asset(), iof.getIo_categori(), ioDate, noCM, iof.getIo_memo());
			log.info(io);
			inout_service.insertInoutS(io);			
		}else {
			//update실행하기
			Inout io = new Inout(iof.getIo_seq(), iof.getIo_inout(), iof.getIo_asset(), iof.getIo_categori(), ioDate, noCM, iof.getIo_memo());
			log.info(io);
			inout_service.updateInoutS(io);	
		}
		
		return "success";
	}

	@RequestMapping(value ="/book/insertTrs.do")
    @ResponseBody
	public String insertInOut(@ModelAttribute("trs") TrsForm trs, HttpServletRequest request) throws Exception{
		log.info("#### 가계부입력(이체) ####");

		//날짜합치기
		String trsDateS = trs.getTrs_yyyy().trim()+"-"+trs.getTrs_mmmm().trim()+"-"+trs.getTrs_dddd().trim();
		Date trsDate = Date.valueOf(trsDateS);
		log.info(trsDate);
		
		//컴마없애기
		String yesCM = trs.getTrs_money().replace(",", "");
		long noCM = Integer.parseInt(yesCM);
		
		if(trs.getTrs_seq()==0) {
			//insert실행하기
			Transfer trsf = new Transfer(-1, trs.getTrs_inout(), trs.getTrs_in_asset(), trs.getTrs_out_asset(), trsDate, noCM, trs.getTrs_memo());
			log.info(trsf);
			trs_service.insertTransS(trsf);			
		}else {
			//update실행하기
			Transfer trsf = new Transfer(trs.getTrs_seq(), trs.getTrs_inout(), trs.getTrs_in_asset(), trs.getTrs_out_asset(), trsDate, noCM, trs.getTrs_memo());
			log.info(trsf);
			trs_service.updateTransS(trsf);
		}
		
		return "success";
	}	
	
	@RequestMapping(value ="/book/deleteIO.do")
    @ResponseBody
	public String deleteInout(long seq, HttpServletRequest request) throws Exception{
		log.info("### 수입 및 이체를 삭제해욘 ####");
		inout_service.deleteInoutS(seq);
		return "success";
	}

	@RequestMapping(value ="/book/deleteTrs.do")
    @ResponseBody
	public String deleteTrs(long seq, HttpServletRequest request) throws Exception{
		log.info("### 수입 및 이체를 삭제해욘2 ####");
		trs_service.deleteTransS(seq);
		return "success";
	}	

	@RequestMapping(value="/book/iotList.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public ResponseEntity<Object> getInoutTrsList(String M_id, String yyyy, String mmmm, String dddd, HttpServletRequest request) throws Exception{
		log.info("### 리스트를 가져올게욘 ####");
		//계정정보 및 날짜로 가계부 수입 및 지출, 이체 정보 가져오기
		String selectDate = yyyy+"/"+mmmm+"/"+dddd;
		
		List<InoutTrsList> iotList = iotl_service.getListDescDayS(M_id, selectDate);

		HttpHeaders responseHeaders = new HttpHeaders();
        ArrayList<HashMap<Object,Object>> hmlist = new ArrayList<HashMap<Object,Object>>();
        
		//수입 및 지출, 이체정보를 함께 출력하기 위해 list생성하기

		for(InoutTrsList iot : iotList) {
			//trs이면
			if(iot.getC_inout().equals("IO003")) {
				Transfer ts = trs_service.selectTransSeqS(iot.getBk_seq());
				HashMap<Object,Object> hm = new HashMap<Object,Object>();
				hm.put("IOT_seq", ts.getT_seq());
				hm.put("C_inout", code_service.selectCodeS(ts.getC_inout()).getC_name());
				hm.put("IOT_asset", ass_service.selectAssetS(ts.getA_seq_in()).getA_nickname());
				hm.put("IOT_assetgori", ass_service.selectAssetS(ts.getA_seq_out()).getA_nickname());
				hm.put("IOT_date", ts.getT_date());
				hm.put("IOT_money", ts.getT_money());
				hm.put("IOT_memo", ts.getT_memo());
				hmlist.add(hm);
			//inout이면
			}else{
				Inout io = inout_service.selectInoutSeqS(iot.getBk_seq());

				HashMap<Object,Object> hm = new HashMap<Object,Object>();
				hm.put("IOT_seq", io.getI_seq());
				hm.put("C_inout", code_service.selectCodeS(io.getC_inout()).getC_name());
				hm.put("IOT_asset", ass_service.selectAssetS(io.getA_seq()).getA_nickname());
				hm.put("IOT_assetgori", code_service.selectCodeS(io.getC_categori()).getC_name());
				hm.put("IOT_date", io.getI_date());
				hm.put("IOT_money", io.getI_money());
				hm.put("IOT_memo", io.getI_memo());
				hmlist.add(hm);
			}
		}
		
		//jsonArray를 사용하려면 pom.xml에 메이븐추가해야함 ^^
        JSONArray json = new JSONArray(hmlist);        
        return new ResponseEntity<Object>(json.toString(), responseHeaders, HttpStatus.CREATED);
	}
	
	
	@RequestMapping(value ="/book2/returnListCount.do", produces="application/json; charset=utf-8")
    @ResponseBody	
	public long returnListCount(String M_id, String yyyy, String mmmm, HttpServletRequest request) throws Exception{
		log.info("### 리스트의 수를 가져올게욘 ####");
		String selectMonth = yyyy+"/"+mmmm;

		List<InoutTrsList> iotList = iotl_service.getListAscMonS(M_id, selectMonth);
		long listCount = iotList.size();
		return listCount;
	}
		
	
	@RequestMapping(value="/book2/iotMList.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public ResponseEntity<Object> getInoutTrsListp(String M_id, String yyyy, String mmmm, String selp, HttpServletRequest request) throws Exception{
		log.info("### 리스트를 가져올게욘 ####");
		//계정정보 및 날짜로 가계부 수입 및 지출, 이체 정보 가져오기
		String selectMonth = yyyy+"/"+mmmm;
		int selpage = Integer.parseInt(selp);
		
		List<InoutTrsList> iotList = iotl_service.getListAscMonS(M_id, selectMonth);

		HttpHeaders responseHeaders = new HttpHeaders();
        ArrayList<HashMap<Object,Object>> hmlist = new ArrayList<HashMap<Object,Object>>();
        
        //페이징
    	int startindex = 0;
    	int lastindex = 0;
    	int view = 15;
    	
    	if(iotList.size() < view) {
        	startindex = 0;
    		lastindex = iotList.size();
    	}else {
            if(selpage == 1) {
            	startindex = 0;
            	lastindex = view;
            }else{
            	startindex = view * (selpage-1);
            	lastindex = startindex + view;
            	
            	if(startindex >= iotList.size()) {
            		startindex = 0;
            		lastindex = view;
            	}
            	
            	if(lastindex >= iotList.size()){
            		lastindex = iotList.size();
            	}
            }   		
    	}    	
        
		//수입 및 지출, 이체정보를 함께 출력하기 위해 list생성하기
		for(InoutTrsList iot : iotList.subList(startindex, lastindex)) {
			//trs이면
			if(iot.getC_inout().equals("IO003")) {
				Transfer ts = trs_service.selectTransSeqS(iot.getBk_seq());
				
	    		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy. MM. dd. E요일",Locale.KOREA);
	    		String getDay = transFormat.format(ts.getT_date());	
				
				HashMap<Object,Object> hm = new HashMap<Object,Object>();
				hm.put("IOT_seq", ts.getT_seq());
				hm.put("IOT_date", getDay);
				hm.put("C_inout", code_service.selectCodeS(ts.getC_inout()).getC_name());
				hm.put("IOT_asset", ass_service.selectAssetS(ts.getA_seq_in()).getA_nickname());
				hm.put("IOT_assetgori", ass_service.selectAssetS(ts.getA_seq_out()).getA_nickname());
				hm.put("IOT_money", ts.getT_money());
				hm.put("IOT_memo", ts.getT_memo());
				hmlist.add(hm);
			//inout이면
			}else{
				Inout io = inout_service.selectInoutSeqS(iot.getBk_seq());

	    		SimpleDateFormat transFormat2 = new SimpleDateFormat("yyyy. MM. dd. E요일",Locale.KOREA);
	    		String getDay2 = transFormat2.format(io.getI_date());					
				
				HashMap<Object,Object> hm = new HashMap<Object,Object>();
				hm.put("IOT_seq", io.getI_seq());
				hm.put("IOT_date", getDay2);
				hm.put("C_inout", code_service.selectCodeS(io.getC_inout()).getC_name());
				hm.put("IOT_asset", ass_service.selectAssetS(io.getA_seq()).getA_nickname());
				hm.put("IOT_assetgori", code_service.selectCodeS(io.getC_categori()).getC_name());
				hm.put("IOT_money", io.getI_money());
				hm.put("IOT_memo", io.getI_memo());
				hmlist.add(hm);
			}
		}
		
		//jsonArray를 사용하려면 pom.xml에 메이븐추가해야함 ^^
        JSONArray json = new JSONArray(hmlist);        
        return new ResponseEntity<Object>(json.toString(), responseHeaders, HttpStatus.CREATED);
	}	
	
	//검색결과 수 출력
	@RequestMapping(value ="/book2/returnSlistCount.do", produces="application/json; charset=utf-8")
    @ResponseBody	
	public long returnSlistCount(String M_id, String searchStr, HttpServletRequest request) throws Exception{
		log.info("### 리스트의 수를 가져올게욘 ####");

		List<InoutTrsList> iotList = iotl_service.getListAscS(M_id);
        ArrayList<HashMap<Object,Object>> hmlist = new ArrayList<HashMap<Object,Object>>();
		for(InoutTrsList iot : iotList) {
			if(iot.getC_inout().equals("IO003")) {
				Transfer ts = trs_service.searchInoutS(iot.getBk_seq(), searchStr);
				if(ts!=null) {
					HashMap<Object,Object> hm = new HashMap<Object,Object>();
					hm.put("IOT_seq", ts.getT_seq());
					hmlist.add(hm);					
				}
			}else{
				Inout io = inout_service.searchInoutS(iot.getBk_seq(), searchStr);
				if(io!=null) {
					HashMap<Object,Object> hm = new HashMap<Object,Object>();
					hm.put("IOT_seq", io.getI_seq());
					hmlist.add(hm);					
				}
			}
		}
		
		 int count = hmlist.size();
		return count;
	}	
	
	@RequestMapping(value="/book2/iotSearchList.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public ResponseEntity<Object> getSearchList(String M_id, String searchStr, String selp, HttpServletRequest request) throws Exception{
		log.info("### 검색 결과를 가져올게욘 ####");

		List<InoutTrsList> iotList = iotl_service.getListAscS(M_id);
		
		HttpHeaders responseHeaders = new HttpHeaders();
        ArrayList<HashMap<Object,Object>> hmlist = new ArrayList<HashMap<Object,Object>>();
        
		//수입 및 지출, 이체정보를 함께 출력하기 위해 list생성하기
		for(InoutTrsList iot : iotList) {
			//trs이면
			if(iot.getC_inout().equals("IO003")) {
				Transfer ts = trs_service.searchInoutS(iot.getBk_seq(), searchStr);
				
				if(ts!=null) {
		    		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy. MM. dd. E요일",Locale.KOREA);
		    		String getDay = transFormat.format(ts.getT_date());	
					
					HashMap<Object,Object> hm = new HashMap<Object,Object>();
					hm.put("IOT_seq", ts.getT_seq());
					hm.put("IOT_date", getDay);
					hm.put("C_inout", code_service.selectCodeS(ts.getC_inout()).getC_name());
					hm.put("IOT_asset", ts.getA_seq_in());
					hm.put("IOT_assetgori", ts.getA_seq_out());
					hm.put("IOT_money", ts.getT_money());
					hm.put("IOT_memo", ts.getT_memo());
					hmlist.add(hm);					
				}
			//inout이면
			}else{
				Inout io = inout_service.searchInoutS(iot.getBk_seq(), searchStr);

				if(io!=null) {
		    		SimpleDateFormat transFormat2 = new SimpleDateFormat("yyyy. MM. dd. E요일",Locale.KOREA);
		    		String getDay2 = transFormat2.format(io.getI_date());					
					
					HashMap<Object,Object> hm = new HashMap<Object,Object>();
					hm.put("IOT_seq", io.getI_seq());
					hm.put("IOT_date", getDay2);
					hm.put("C_inout", code_service.selectCodeS(io.getC_inout()).getC_name());
					hm.put("IOT_asset", io.getA_seq());
					hm.put("IOT_assetgori", code_service.selectCodeS(io.getC_categori()).getC_name());
					hm.put("IOT_money", io.getI_money());
					hm.put("IOT_memo", io.getI_memo());
					hmlist.add(hm);					
				}
			}
		}
		

        //페이징
		int selpage = Integer.parseInt(selp);
    	int startindex = 0;
    	int lastindex = 0;
    	int view = 15;
    	
    	if(hmlist.size() < view) {
        	startindex = 0;
    		lastindex = hmlist.size();
    	}else {
            if(selpage == 1) {
            	startindex = 0;
            	lastindex = view;
            }else{
            	startindex = view * (selpage-1);
            	lastindex = startindex + view;
            	
            	if(startindex >= hmlist.size()) {
            		startindex = 0;
            		lastindex = view;
            	}
            	
            	if(lastindex >= hmlist.size()){
            		lastindex = hmlist.size();
            	}
            }   		
    	}			
		
		//jsonArray를 사용하려면 pom.xml에 메이븐추가해야함 ^^
        JSONArray json = new JSONArray(hmlist.subList(startindex, lastindex));        
        return new ResponseEntity<Object>(json.toString(), responseHeaders, HttpStatus.CREATED);
	}	
	
	@RequestMapping(value="/book/sumList.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public HashMap<Object,Object> getSumList(String M_id, String yyyy, String mmmm, String dddd, HttpServletRequest request) throws Exception{
		log.info("### 리스트를 가져올게욘2 ####");
		//계정정보 및 날짜로 가계부 수입 및 지출, 이체 정보 가져오기
		String selectDate = yyyy+"/"+mmmm+"/"+dddd;
		String selectMonth = yyyy+"/"+mmmm;

        HashMap<Object,Object> hm = new HashMap<Object, Object>();
        
        hm.put("allAsset", abs_service.selectAllAssetS(M_id));
        hm.put("inDay", abs_service.selectDayS(M_id, selectDate, "IO001"));
        hm.put("outDay", abs_service.selectDayS(M_id, selectDate, "IO002"));
        hm.put("avgInDays", abs_service.selectAvgDaysS(M_id, selectMonth, "IO001"));
        hm.put("avgOutDays", abs_service.selectAvgDaysS(M_id, selectMonth, "IO002"));
        
        long selMaxInday = abs_service.selectMaxDayS(M_id, selectMonth, "IO001");
        if(selMaxInday==0) {
        	hm.put("maxInDay", 0);
        }else {
            Inout io1 = inout_service.selectInoutSeqS(selMaxInday);
    		SimpleDateFormat transFormat = new SimpleDateFormat("dd");
    		String maxInDay = transFormat.format(io1.getI_date());
            hm.put("maxInDay", maxInDay);     	
        }
        
        long selMaxOutday = abs_service.selectMaxDayS(M_id, selectMonth, "IO002");
        if(selMaxOutday==0) {
        	hm.put("maxOutDay", 0);
        }else {
            Inout io2 = inout_service.selectInoutSeqS(selMaxOutday);
    		SimpleDateFormat transFormat2 = new SimpleDateFormat("dd");
    		String maxOutDay = transFormat2.format(io2.getI_date());        
            hm.put("maxOutDay", maxOutDay);       	
        }
        
        hm.put("inMonth", abs_service.selectMonthS(M_id, selectMonth, "IO001"));
        hm.put("outMonth", abs_service.selectMonthS(M_id, selectMonth, "IO002"));
		
        return hm;
	}
	
	@RequestMapping(value="/book/chartData.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public HashMap<String,List<Long>> getChartData(String M_id, String yyyy, HttpServletRequest request) throws Exception{
		log.info("### 가계부의 차트데이터를 가져올게욘 ####");
		
        HashMap<String,List<Long>> hm = new HashMap<String,List<Long>>();
        List<Long> inData = new ArrayList<Long>();
        List<Long> outData = new ArrayList<Long>();
        
        for(int i=1; i<=12; i++) {
        	if(i<10) {
        		String mon = "0"+i;
        		inData.add(abs_service.selectMonthS(M_id, yyyy+"/"+mon, "IO001"));
        		outData.add(abs_service.selectMonthS(M_id, yyyy+"/"+mon, "IO002"));
        	}else {
        		inData.add(abs_service.selectMonthS(M_id, yyyy+"/"+i, "IO001"));
        		outData.add(abs_service.selectMonthS(M_id, yyyy+"/"+i, "IO002"));
        	}
        }
        
        hm.put("inData", inData);
        hm.put("outData", outData);        
        
        return hm;
	}
}
