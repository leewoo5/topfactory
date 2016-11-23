package org.zerock.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.Member;
import org.zerock.domain.Overview;
import org.zerock.domain.PageMaker;
import org.zerock.domain.SearchCriteria;
import org.zerock.domain.TopMember;
import org.zerock.service.MemberService;
import org.zerock.service.TopMemberService;

@Controller
@RequestMapping(value= "/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	@Inject
	TopMemberService service_top;
	
	TopMember member;
	
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public void formGET() {
		logger.info("formGET()...");
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.POST)
	public String formPOST(Member member) throws Exception {
		logger.info("formPOST()...");
		service.register(member);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public void topMemberInfo() {
		logger.info("topMemberInfo()...");
	}
	
	@RequestMapping(value = "/top_register", method = RequestMethod.GET)
	public void topMemberRegisterGET() {
		logger.info("topMemberRegisterGET()...");
	}
	
	@RequestMapping(value = "/top_register", method = RequestMethod.POST)
	public String topMemberRegisterPOST(TopMember member) throws Exception {
		logger.info("topMemberRegisterPOST()...");
		service_top.topMemberRegister(member);
		return "/member/info";
	}
	
	@RequestMapping(value = "/top_listAll", method = RequestMethod.GET)
	public void topMemberListAll(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("topMemberList()...");
	    logger.info(cri.toString());
	    Overview view = service_top.overview();
	    
	    model.addAttribute("list", service_top.listSearchCriteria(cri));
	    PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	    pageMaker.setTotalCount(service_top.listSearchCount(cri));
		
		model.addAttribute("overview", view);
	    model.addAttribute("pageMaker", pageMaker);
	    	    
	}

	@RequestMapping(value = "/top_list_overview", method = RequestMethod.GET)
	public void topMemberOverview(Model model) {
		logger.info("topMemberOverview()...");
		
	}
	
	@RequestMapping(value = "/top_detail", method = RequestMethod.GET)
	public void topMemberDetail(@RequestParam String studentNum, Model model) {
		logger.info("topMemberDetail()...");
		TopMember detail = service_top.getMemberInfo(studentNum);
		model.addAttribute("detail", detail);
	}
	
	@RequestMapping(value = "/top_update", method = RequestMethod.PUT)
	public String topMemberUpdatePUT(TopMember newInfo, RedirectAttributes rttr) throws Exception {
		logger.info("topMemberUpdatePUT()...");
		service_top.update(newInfo);
		rttr.addFlashAttribute("msg", "success_update");
		return "redirect:/member/top_listAll";
	}
	
	@RequestMapping(value = "/top_delete", method = RequestMethod.GET)
	public String topMemberdelete(@RequestParam String studentNum, RedirectAttributes rttr) {
		logger.info("memberDelete()...");
		service_top.delete(studentNum);
		rttr.addFlashAttribute("msg", "success_remove");
		return "redirect:/member/top_listAll";
	}
	
//	@RequestMapping(value = "/top_document", method = RequestMethod.GET)
//	public void topMemberDocument() {
//		logger.info("topMemberDocument()...");
//	}
	

}
