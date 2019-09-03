package njb.md.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import njb.md.domain.AssetList;
import njb.md.domain.Code;
import njb.md.security.domain.CustomUser;
import njb.md.service.AssetListService;
import njb.md.service.CodeService;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/normal")
@AllArgsConstructor
public class AssetListController {
	
	
	private static final String C_code = null;

	@Setter(onMethod_ = @Autowired)
	private AssetListService service;
	
	/*@RequestMapping("/list.do")
	public ModelAndView list() {
		List<Bo2waard> list = service.listS();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/list");
		mv.addObject("list", list);
		//ModelAndView mv = new ModelAndView("addr/list", "list", list);
	
		return mv;
	}*/
	@Setter(onMethod_ = @Autowired)
	private CodeService cservice;
	
	@RequestMapping("/aList")
	public ModelAndView list(Principal principal) {
		CustomUser user = (CustomUser) ((Authentication) principal).getPrincipal();
		
		List<AssetList> list = service.listS(user.getMember().getM_id());
		List<AssetList> clist = new ArrayList<AssetList>();
		
		for(AssetList d : list) {
			d.setC_asset(cservice.selectCodeS(d.getC_asset()).getC_name());
			clist.add(d);
		}
		
		log.info("#list: " + list);
//		log.info("#m_id: " + list.get(0).getM_id());
		log.info("### list sequrity : " + principal.getName());
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("asset/assetList");
		mv.addObject("list", clist);
	
		return mv;
	}
	
	@GetMapping("/aList/write.do")
	public String write() {
		return "asset/assetList";
	}
	
	@PostMapping("/aList/write.do")
	public String write(AssetList list) {
		log.info("##write list"+ list);
		service.insertS(list);
		return "redirect:/normal/aList";
	}
	@GetMapping("/aList/del.do")
	public String delete(@RequestParam long a_seq) {
		log.info("#### assewses : "+a_seq);
		service.deleteS(a_seq);
		return "redirect:/normal/aList";
	}
	@GetMapping("/aList/cont.do")
	public void get(@RequestParam("a_seq") long a_seq, Model model) {
		log.info("/cont.do");
		model.addAttribute("list", service.contS(a_seq));
	}
	@GetMapping("/aList/update.do")
	public ModelAndView update(@RequestParam("a_seq") long a_seq, Model model) {
		log.info("/update.do");
		log.info("#a_seq: " + a_seq);
		AssetList list = service.contS(a_seq);
		//model.addAttribute("list", service.contS(a_seq));
		ModelAndView mv = new ModelAndView("asset/assetList", "list", list);
		log.info("#update list : " +list);
		//mv.setViewName("asset/assetUpdate", "list", list);
		
		return mv;
	}
	@PostMapping("/aList/update.do")  
	//@RequestMapping(value = "/update.do", method = RequestMethod.POST)
	public String update(AssetList list) {
		log.info("### update list : " + list);
		service.updateS(list);
		return "redirect:/normal/aList";
	}

}
