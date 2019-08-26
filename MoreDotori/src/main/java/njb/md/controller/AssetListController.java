package njb.md.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import njb.md.domain.AssetList;
import njb.md.service.AssetListService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/aList")
@AllArgsConstructor
public class AssetListController {
	
	
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
	@RequestMapping("../aList")
	public ModelAndView list() {
		List<AssetList> list = service.listS();
		log.info("#list: " + list);
		log.info("#m_id: " + list.get(0).getM_id());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("asset/assetList");
		mv.addObject("list", list);
	
		return mv;
	}
	@GetMapping("/write.do")
	public String write() {
		return "asset/assetList";
	}
	@PostMapping("/write.do")
	public String write(AssetList list) {
		log.info("#write list m_id"+ list.getM_id());
		service.insertS(list);
		return "redirect:../aList";
	}
	@GetMapping("/del.do")
	public String delete(@RequestParam long a_seq) {
		log.info("#### assewses : "+a_seq);
		service.deleteS(a_seq);
		return "redirect:../aList";
	}
	@GetMapping("/cont.do")
	public void get(@RequestParam("a_seq") long a_seq, Model model) {
		log.info("/cont.do");
		model.addAttribute("list", service.contS(a_seq));
	}
	@GetMapping("/update.do")
	public ModelAndView update(@RequestParam("a_seq") long a_seq, Model model) {
		log.info("/update.do");
		log.info("#a_seq: " + a_seq);
		AssetList list = service.contS(a_seq);
		//model.addAttribute("list", service.contS(a_seq));
		ModelAndView mv = new ModelAndView("asset/assetUpdate", "list", list);
		log.info("#update list : " +list);
		//mv.setViewName("asset/assetUpdate", "list", list);
		
		return mv;
	}
	@PostMapping("/update.do")
	public String update(AssetList list) {
		service.updateS(list);
		return "redirect:../aList";
	}

}
