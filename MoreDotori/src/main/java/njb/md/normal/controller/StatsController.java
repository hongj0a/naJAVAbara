package njb.md.normal.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
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

import njb.md.domain.Code;
import njb.md.normal.domain.Asset;
import njb.md.normal.service.AbookSumService;
import njb.md.normal.service.AssetService;
import njb.md.service.CodeService;
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
	String in = "IO001";
	String out = "IO002";
	
	@Setter(onMethod_ = @Autowired)
	private CodeService code_service;
	
	@Setter(onMethod_ = @Autowired)
	private AbookSumService abs_service;

	@Setter(onMethod_ = @Autowired)
	private AssetService ass_service;

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
        
        String monStr = mmmm;
        if(monint<10) monStr = "0"+monint;
        long datelong = Long.parseLong(yyyy+monStr+dddd);
        
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy/MM/dd");
		
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
            		inData1.add(Long.toString(abs_service.selectMonthS(M_id, prevYear+"/"+mon, in)));
            		outData1.add(Long.toString(abs_service.selectMonthS(M_id, prevYear+"/"+mon, out)));  
            	}else {
            		dataName1.add("작년 "+i+"월");        		
            		inData1.add(Long.toString(abs_service.selectMonthS(M_id, prevYear+"/"+i, in)));
            		outData1.add(Long.toString(abs_service.selectMonthS(M_id, prevYear+"/"+i, out)));  
            	}
            }
            
            for(int j=1; j<=monint; j++) {
            	if(j<10) {
            		String mon = "0"+j;
            		dataName1.add(mon+"월");
            		inData1.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+mon, in)));
            		outData1.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+mon, out)));  
            	}else {        		
            		dataName1.add(j+"월");
            		inData1.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+j, in)));
            		outData1.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+j, out)));  
            	}           	
            }
        }else {
            for(int i=1; i<=12; i++) {
            	if(i<10) {
            		String mon = "0"+i;
            		dataName1.add(mon+"월");
            		inData1.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+mon, in)));
            		outData1.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+mon, out)));
            	}else {
            		dataName1.add(i+"월"); 
            		inData1.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+i, in)));
            		outData1.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+i, out)));
            	}
            }        	
        }

        hm.put("dataName1", dataName1);
        hm.put("inData1", inData1);
        hm.put("outData1", outData1);        
        
        
        ///////////////////////////////////////////////////////////////////////////////

        
        //tab1-chart2 데이터
        List<String> dataName2 = new ArrayList<String>();
        List<String> inData2 = new ArrayList<String>();
        List<String> outData2 = new ArrayList<String>();
        
        Date thisWeeksSunday = abs_service.returnSundayS(yyyy+"/"+monStr+"/"+dddd);
        Date thisWeeksSatday = abs_service.returnSatdayS(yyyy+"/"+monStr+"/"+dddd);
        String selDate = null;
        String satDate = null;
        
        for(int i=0; i<5; i++) {
        		selDate = transFormat.format(thisWeeksSunday);
        		satDate = transFormat.format(thisWeeksSatday);
        		
        		dataName2.add(selDate+" ~ "+satDate);
        		inData2.add(Long.toString(abs_service.selectWeekS(M_id, selDate, in)));
        		outData2.add(Long.toString(abs_service.selectWeekS(M_id, selDate, out)));
        		
        		String prevDay = transFormat.format(abs_service.returnPrevDayS(selDate));
        		thisWeeksSunday = abs_service.returnSundayS(prevDay);
        		thisWeeksSatday = abs_service.returnSatdayS(prevDay);
        }
        
        hm.put("dataName2", dataName2);
        hm.put("inData2", inData2);
        hm.put("outData2", outData2);
        
        
        ///////////////////////////////////////////////////////////////////////////////
        
        //tab1-chart3 데이터
        List<String> dataName3 = new ArrayList<String>();
        List<String> inData3 = new ArrayList<String>();
        List<String> outData3 = new ArrayList<String>();         
        
        for(int i=yearint-9; i<=yearint; i++) {
        	String iStr = String.valueOf(i);
        	dataName3.add(iStr+"년");
        	inData3.add(Long.toString(abs_service.selectYearS(M_id, iStr, in)));
        	outData3.add(Long.toString(abs_service.selectYearS(M_id, iStr, out)));
        }

        hm.put("dataName3", dataName3);
        hm.put("inData3", inData3);
        hm.put("outData3", outData3);
        
        ///////////////////////////////////////////////////////////////////////////////
        
        //tab1-chart4 데이터
        List<String> dataName4 = new ArrayList<String>();
        List<String> inData4 = new ArrayList<String>();
        List<String> outData4 = new ArrayList<String>();         
        
        dataName4.add("일요일");
        dataName4.add("월요일");
        dataName4.add("화요일");
        dataName4.add("수요일");
        dataName4.add("목요일");
        dataName4.add("금요일");
        dataName4.add("토요일");
        
        for(int i=1; i < 8; i++) {
        	String iStr = String.valueOf(i);
    		inData4.add(Long.toString(abs_service.selectMonthDayofWeekS(M_id, yyyy+"/"+monStr, in, iStr)));
    		outData4.add(Long.toString(abs_service.selectMonthDayofWeekS(M_id, yyyy+"/"+monStr, out, iStr)));
        }

        hm.put("dataName4", dataName4);
        hm.put("inData4", inData4);
        hm.put("outData4", outData4);
        
        return hm;
	}
	
	@RequestMapping(value="/asset_cond/tab2chartData.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public HashMap<String,List<String>> getTab2ChartData(String M_id, String yyyy, String mmmm, String dddd, HttpServletRequest request) throws Exception{
		log.info("### [ tab2 : 수입 및 지출 통계 ] 차트데이터를 가져올게욘 ####");
		//날짜데이타
        int yearint = Integer.parseInt(yyyy);
        int monint = Integer.parseInt(mmmm);
        int dayint = Integer.parseInt(dddd);
        
        String monStr = mmmm;
        if(monint<10) monStr = "0"+monint;
        long datelong = Long.parseLong(yyyy+monStr+dddd);

		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy/MM/dd");
		
		//포장빠께쓰
        HashMap<String,List<String>> hm = new HashMap<String,List<String>>();
        
        //지출카테고리데이터
		List<Code> codelistOT = code_service.getCodeListS("OT%");
        List<String> codeOT = new ArrayList<String>();
		for(Code c : codelistOT) codeOT.add(c.getC_name());
        hm.put("codeOT", codeOT);
		
        //tab2-chart1 데이터
        List<String> dataName1 = new ArrayList<String>();
        List<String> ot001_1 = new ArrayList<String>();
        List<String> ot002_1 = new ArrayList<String>();
        List<String> ot003_1 = new ArrayList<String>();
        List<String> ot004_1 = new ArrayList<String>();
        List<String> ot005_1 = new ArrayList<String>();
        List<String> ot006_1 = new ArrayList<String>();
        List<String> ot007_1 = new ArrayList<String>();
        List<String> ot008_1 = new ArrayList<String>();
        List<String> ot009_1 = new ArrayList<String>();
        List<String> ot010_1 = new ArrayList<String>();
        List<String> ot011_1 = new ArrayList<String>();
		
        if((monint+1)!=12) {
            for(int i=monint+1; i<13; i++) {
            	int prevYear = yearint-1;
            	
            	
            	if(i<10) {
            		String mon = "0"+i;
            		dataName1.add("작년 "+mon+"월");
            		
            		List<String> otList = new ArrayList<String>();
            		for(Code code : codelistOT) {
            			otList.add(Long.toString(abs_service.selectMonthCodeSumS(M_id, prevYear+"/"+mon, out, code.getC_code())));
            		}
            		
            		ot001_1.add(otList.get(0));
            		ot002_1.add(otList.get(1));
            		ot003_1.add(otList.get(2));
            		ot004_1.add(otList.get(3));
            		ot005_1.add(otList.get(4));
            		ot006_1.add(otList.get(5));
            		ot007_1.add(otList.get(6));
            		ot008_1.add(otList.get(7));
            		ot009_1.add(otList.get(8)); 
            		ot010_1.add(otList.get(9)); 
            		ot011_1.add(otList.get(10)); 
            		
            	}else {
            		dataName1.add("작년 "+i+"월");
            		
            		List<String> otList = new ArrayList<String>();
            		for(Code code : codelistOT) {
            			otList.add(Long.toString(abs_service.selectMonthCodeSumS(M_id, prevYear+"/"+i, out, code.getC_code())));
            		}
            		
            		ot001_1.add(otList.get(0));
            		ot002_1.add(otList.get(1));
            		ot003_1.add(otList.get(2));
            		ot004_1.add(otList.get(3));
            		ot005_1.add(otList.get(4));
            		ot006_1.add(otList.get(5));
            		ot007_1.add(otList.get(6));
            		ot008_1.add(otList.get(7));
            		ot009_1.add(otList.get(8)); 
            		ot010_1.add(otList.get(9)); 
            		ot011_1.add(otList.get(10));  		
            	}
            }
            
            for(int j=1; j<=monint; j++) {
            	if(j<10) {
            		String mon = "0"+j;
            		dataName1.add(mon+"월");
            		
            		List<String> otList = new ArrayList<String>();
            		for(Code code : codelistOT) {
            			otList.add(Long.toString(abs_service.selectMonthCodeSumS(M_id, yyyy+"/"+mon, out, code.getC_code())));
            		}
            		
            		ot001_1.add(otList.get(0));
            		ot002_1.add(otList.get(1));
            		ot003_1.add(otList.get(2));
            		ot004_1.add(otList.get(3));
            		ot005_1.add(otList.get(4));
            		ot006_1.add(otList.get(5));
            		ot007_1.add(otList.get(6));
            		ot008_1.add(otList.get(7));
            		ot009_1.add(otList.get(8)); 
            		ot010_1.add(otList.get(9)); 
            		ot011_1.add(otList.get(10));  
            	}else {        		
            		dataName1.add(j+"월");
            		
            		List<String> otList = new ArrayList<String>();
            		for(Code code : codelistOT) {
            			otList.add(Long.toString(abs_service.selectMonthCodeSumS(M_id, yyyy+"/"+j, out, code.getC_code())));
            		}
            		
            		ot001_1.add(otList.get(0));
            		ot002_1.add(otList.get(1));
            		ot003_1.add(otList.get(2));
            		ot004_1.add(otList.get(3));
            		ot005_1.add(otList.get(4));
            		ot006_1.add(otList.get(5));
            		ot007_1.add(otList.get(6));
            		ot008_1.add(otList.get(7));
            		ot009_1.add(otList.get(8)); 
            		ot010_1.add(otList.get(9)); 
            		ot011_1.add(otList.get(10)); 
            	}           	
            }
        }else {
            for(int i=1; i<=12; i++) {
            		dataName1.add(monStr+"월");
            		List<String> otList = new ArrayList<String>();
            		for(Code code : codelistOT) {
            			otList.add(Long.toString(abs_service.selectMonthCodeSumS(M_id, yyyy+"/"+monStr, out, code.getC_code())));
            		}
            		ot001_1.add(otList.get(0));
            		ot002_1.add(otList.get(1));
            		ot003_1.add(otList.get(2));
            		ot004_1.add(otList.get(3));
            		ot005_1.add(otList.get(4));
            		ot006_1.add(otList.get(5));
            		ot007_1.add(otList.get(6));
            		ot008_1.add(otList.get(7));
            		ot009_1.add(otList.get(8)); 
            		ot010_1.add(otList.get(9)); 
            		ot011_1.add(otList.get(10));            		
            }        	
        }

        hm.put("dataName1", dataName1);
        hm.put("ot001_1", ot001_1);
        hm.put("ot002_1", ot002_1);
        hm.put("ot003_1", ot003_1);
        hm.put("ot004_1", ot004_1);
        hm.put("ot005_1", ot005_1);
        hm.put("ot006_1", ot006_1);
        hm.put("ot007_1", ot007_1);
        hm.put("ot008_1", ot008_1);
        hm.put("ot009_1", ot009_1);
        hm.put("ot010_1", ot010_1);
        hm.put("ot011_1", ot011_1);
        
        ////////////////////////////////////////////////////////////////////
        
        //tab2-chart2 데이터
        List<String> dataName2 = new ArrayList<String>();
        List<String> ot001_2 = new ArrayList<String>();
        List<String> ot002_2 = new ArrayList<String>();
        List<String> ot003_2 = new ArrayList<String>();
        List<String> ot004_2 = new ArrayList<String>();
        List<String> ot005_2 = new ArrayList<String>();
        List<String> ot006_2 = new ArrayList<String>();
        List<String> ot007_2 = new ArrayList<String>();
        List<String> ot008_2 = new ArrayList<String>();
        List<String> ot009_2 = new ArrayList<String>();
        List<String> ot010_2 = new ArrayList<String>();
        List<String> ot011_2 = new ArrayList<String>();
        
        Date thisWeeksSunday = abs_service.returnSundayS(yyyy+"/"+monStr+"/"+dddd);
        Date thisWeeksSatday = abs_service.returnSatdayS(yyyy+"/"+monStr+"/"+dddd);
        String selDate = null;
        String satDate = null;
        
        for(int i=0; i<5; i++) {
        		selDate = transFormat.format(thisWeeksSunday);
        		satDate = transFormat.format(thisWeeksSatday);
        		
        		dataName2.add(selDate+" ~ "+satDate);
        		List<String> otList = new ArrayList<String>();
        		for(Code code : codelistOT) {
        			otList.add(Long.toString(abs_service.selectWeekCodeSumS(M_id, selDate, out, code.getC_code())));
        		}
        		
        		ot001_2.add(otList.get(0));
        		ot002_2.add(otList.get(1));
        		ot003_2.add(otList.get(2));
        		ot004_2.add(otList.get(3));
        		ot005_2.add(otList.get(4));
        		ot006_2.add(otList.get(5));
        		ot007_2.add(otList.get(6));
        		ot008_2.add(otList.get(7));
        		ot009_2.add(otList.get(8)); 
        		ot010_2.add(otList.get(9)); 
        		ot011_2.add(otList.get(10));   
        		
        		String prevDay = transFormat.format(abs_service.returnPrevDayS(selDate));
        		thisWeeksSunday = abs_service.returnSundayS(prevDay);
        		thisWeeksSatday = abs_service.returnSatdayS(prevDay);
        }
                
        hm.put("dataName2", dataName2);
        hm.put("ot001_2", ot001_2);
        hm.put("ot002_2", ot002_2);
        hm.put("ot003_2", ot003_2);
        hm.put("ot004_2", ot004_2);
        hm.put("ot005_2", ot005_2);
        hm.put("ot006_2", ot006_2);
        hm.put("ot007_2", ot007_2);
        hm.put("ot008_2", ot008_2);
        hm.put("ot009_2", ot009_2);
        hm.put("ot010_2", ot010_2);
        hm.put("ot011_2", ot011_2);       
        
        ///////////////////////////////////////////////////////////////////////////////////////////
        
        //tab2-chart3 데이터
        List<String> dataName3 = new ArrayList<String>();
        List<String> ot001_3 = new ArrayList<String>();
        List<String> ot002_3 = new ArrayList<String>();
        List<String> ot003_3 = new ArrayList<String>();
        List<String> ot004_3 = new ArrayList<String>();
        List<String> ot005_3 = new ArrayList<String>();
        List<String> ot006_3 = new ArrayList<String>();
        List<String> ot007_3 = new ArrayList<String>();
        List<String> ot008_3 = new ArrayList<String>();
        List<String> ot009_3 = new ArrayList<String>();
        List<String> ot010_3 = new ArrayList<String>();
        List<String> ot011_3 = new ArrayList<String>();
        
        for(int i=yearint-9; i<=yearint; i++) {
        	String iStr = String.valueOf(i);
        	dataName3.add(iStr+"년");
        	
    		List<String> otList = new ArrayList<String>();
    		for(Code code : codelistOT) {
    			otList.add(Long.toString(abs_service.selectYearCodeSumS(M_id, iStr, out, code.getC_code())));
    		}
        	
    		ot001_3.add(otList.get(0));
    		ot002_3.add(otList.get(1));
    		ot003_3.add(otList.get(2));
    		ot004_3.add(otList.get(3));
    		ot005_3.add(otList.get(4));
    		ot006_3.add(otList.get(5));
    		ot007_3.add(otList.get(6));
    		ot008_3.add(otList.get(7));
    		ot009_3.add(otList.get(8)); 
    		ot010_3.add(otList.get(9)); 
    		ot011_3.add(otList.get(10)); 
        }
        
        hm.put("dataName3", dataName3);
        hm.put("ot001_3", ot001_3);
        hm.put("ot002_3", ot002_3);
        hm.put("ot003_3", ot003_3);
        hm.put("ot004_3", ot004_3);
        hm.put("ot005_3", ot005_3);
        hm.put("ot006_3", ot006_3);
        hm.put("ot007_3", ot007_3);
        hm.put("ot008_3", ot008_3);
        hm.put("ot009_3", ot009_3);
        hm.put("ot010_3", ot010_3);
        hm.put("ot011_3", ot011_3);          
        
        return hm;
	}	
	
	
	@RequestMapping(value="/asset_cond/tab3chartData.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public HashMap<String,List<String>> getTab3ChartData(String M_id, String yyyy, String mmmm, String dddd, HttpServletRequest request) throws Exception{
		//날짜데이타
        int yearint = Integer.parseInt(yyyy);
        int monint = Integer.parseInt(mmmm);
        int dayint = Integer.parseInt(dddd);
        
        String monStr = mmmm;
        if(monint<10) monStr = "0"+monint;
        long datelong = Long.parseLong(yyyy+monStr+dddd);

		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy/MM/dd");
		
		//포장빠께쓰
        HashMap<String,List<String>> hm = new HashMap<String,List<String>>();
        
        //자산정보 가져옴
        List<Asset> assetList = ass_service.selectAssetListS(M_id);
        
        //자산정보 저장함
    	List<String> assetName1 = new ArrayList<String>();
    	List<String> assetData1 = new ArrayList<String>();
    	
        for(Asset a : assetList) {
        	assetName1.add(a.getA_nickname());
        	assetData1.add(a.getA_money()+"");
        }
        
        hm.put("assetName1", assetName1);
        hm.put("assetData1", assetData1);
        
        /////////////////////////////////////////////////////////////////////////////////////////////////
        
        //tab3-chart2
        List<String> outData2 = new ArrayList<String>();
        outData2.add(Long.toString(abs_service.selectMonthS(M_id, yyyy+"/"+monStr, out)));
        hm.put("outData2", outData2);
		
		return hm;
	}
	
	@RequestMapping(value="/asset_cond/tab4chartData.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public HashMap<String,List<String>> getTab4ChartData(String M_id, String yyyy, String mmmm, String dddd, HttpServletRequest request) throws Exception{
		//날짜데이타
        int yearint = Integer.parseInt(yyyy);
        int monint = Integer.parseInt(mmmm);
        int dayint = Integer.parseInt(dddd);
        
        String monStr = mmmm;
        if(monint<10) monStr = "0"+monint;
        long datelong = Long.parseLong(yyyy+monStr+dddd);

		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy/MM/dd");
		
		//포장빠께쓰
        HashMap<String,List<String>> hm = new HashMap<String,List<String>>();
        
        //자산정보 가져옴
        List<Asset> assetList = ass_service.selectAssetListS(M_id);
        
        //자산정보 저장함
    	List<String> assetName1 = new ArrayList<String>();
    	List<String> assetSum1 = new ArrayList<String>();
    	
        for(Asset a : assetList) {
        	assetName1.add(a.getA_nickname());
        	assetSum1.add((abs_service.selectAssetSumS(yyyy+"/"+monStr, out, a.getA_seq()))+"");
        }
        
        hm.put("assetName1", assetName1);
        hm.put("assetData1", assetSum1);
        
        ///////////////////////////////////////////////////////////////////////
        
        
        
		return hm;
	}	
}
