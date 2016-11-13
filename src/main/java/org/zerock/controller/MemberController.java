package org.zerock.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.domain.Member;
import org.zerock.domain.TopMember;
import org.zerock.service.MemberService;
import org.zerock.service.MemberServiceImpl;
import org.zerock.service.TopMemberService;
import org.zerock.service.TopMemberServiceImple;

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
	
	@RequestMapping(value = "/info", method = RequestMethod.GET)
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
	public void topMemberListAll(Model model) {
		logger.info("topMemberList()...");
		List<TopMember>members = service_top.memberList();
		model.addAttribute("list", members);
	}
	
	@RequestMapping(value = "/top_update", method = RequestMethod.PUT)
	public void topMemberUpdatePUT(TopMember newInfo) throws Exception {
		logger.info("topMemberUpdatePUT()...");
		service_top.update(newInfo);
	}
	
	@RequestMapping(value = "/top_delete", method = RequestMethod.GET)
	public void topMemberdelete() {
		logger.info("memberDelete()...");
	}
	
	@RequestMapping(value = "/top_document", method = RequestMethod.GET)
	public void topMemberDocument() {
		logger.info("topMemberDocument()...");
	}
	

}
