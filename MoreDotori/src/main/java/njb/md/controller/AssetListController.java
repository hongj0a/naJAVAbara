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
@RequestMapping("/alist/*")
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
	@RequestMapping("/list.do")
	public ModelAndView list() {
		List<AssetList> list = service.listS();
		log.info("#list: " + list);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("alist/list");
		mv.addObject("list", list);
	
		return mv;
	}
	@GetMapping("/write.do")
	public String write() {
		return "alist/input";
	}
	@PostMapping("/write.do")
	public String write(AssetList list) {
		service.insertS(list);
		return "redirect:list.do";
	}
	@GetMapping("/del.do")
	public String delete(@RequestParam long a_seq) {
		service.deleteS(a_seq);
		return "redirect:list.do";
	}
	@GetMapping("/cont.do")
	public void get(@RequestParam("a_seq") long a_seq, Model model) {
		log.info("/cont.do");
		model.addAttribute("list", service.contS(a_seq));
	}
	@GetMapping("/update.do")
	public void update(@RequestParam("a_seq") long a_seq, Model model) {
		log.info("/update.do");
		model.addAttribute("list", service.contS(a_seq));
	}
	@PostMapping("/update.do")
	public String update(AssetList list) {
		service.updateS(list);
		return "redirect:list.do";
	}

}
