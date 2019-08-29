package njb.md.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import njb.md.service.AbookSumService;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/normal")
@Log4j
@AllArgsConstructor
@NoArgsConstructor
public class StatsController {
	@Setter(onMethod_ = @Autowired)
	private AbookSumService abs_service;

	@GetMapping("/asset_cond")
	public ModelAndView myAccount_cond() {
		log.info("#### 통계페이지 ####");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("asset/asset_condition");
		return mv;
	}	
	
	@RequestMapping(value="/asset_cond/tab1chartData.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public HashMap<String,List<String>> getTab1ChartData(String M_id, String yyyy, String mmmm, String dddd, HttpServletRequest request) throws Exception{
		log.info("### [ tab1 : 수입 및 지출 통계 ] 차트데이터를 가져올게욘 ####");
        int yearint = Integer.parseInt(yyyy);
        int monint = Integer.parseInt(mmmm);
        int dayint = Integer.parseInt(dddd);
		
        HashMap<String,List<String>> hm = new HashMap<String,List<String>>();
        
        //tab1-chart1 데이터
        List<String> dataName1 = new ArrayList<String>();
        List<String> inData1 = new ArrayList<String>();
        List<String> outData1 = new ArrayList<String>();
        
        if(monint+1!=12) {
            for(int i=monint+1; i<13; i++) {
            	int prevYear = yearint-1;
            	
            	if(i<10) {
            		String mon = "0"+i;
            		dataName1.add("작년 "+mon+"월");
            		inData1.add(Long.toString(abs_service.selectMonthS(M_id, prevYear+"/"+mon, "IO001")));
            		outData1.add(Long.toString(abs_service.selectMonthS(M_id, prevYear+"/"+mon, "IO002")));  
            	}else {
            		dataName1.add("작년 "+i+"월");        		
            		inData1.add(Long.toString(abs_service.selectMonthS(M_id, prevYear+"/"+i, "IO001")));
            		outData1.add(Long.toString(abs_service.selectMonthS(M_id, prevYear+"/"+i, "IO002")));  
            	}
            }
            
            for(int j=1; j<=monint; j++) {
            	if(j<10) {
            		String mon = "0"+j;
            		dataName1.add(mon+"월");
            		inData1.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+mon, "IO001")));
            		outData1.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+mon, "IO002")));  
            	}else {        		
            		dataName1.add(j+"월");
            		inData1.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+j, "IO001")));
            		outData1.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+j, "IO002")));  
            	}           	
            }
        }else {
            for(int i=1; i<=12; i++) {
            	if(i<10) {
            		String mon = "0"+i;
            		dataName1.add(mon+"월");
            		inData1.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+mon, "IO001")));
            		outData1.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+mon, "IO002")));
            	}else {
            		dataName1.add(i+"월"); 
            		inData1.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+i, "IO001")));
            		outData1.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+i, "IO002")));
            	}
            }        	
        }

        hm.put("dataName1", dataName1);
        hm.put("inData1", inData1);
        hm.put("outData1", outData1);        
        
        ///////////////////////////////////////////////////////////////////////////////
        
        
        return hm;
	}
}
