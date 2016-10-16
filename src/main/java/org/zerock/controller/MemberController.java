package org.zerock.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.domain.Member;
import org.zerock.service.MemberService;

@Controller
@RequestMapping(value= "/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public void formGET() {
		logger.info("formGET()...");
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.POST)
	public String formPOST(Member member, Model model) throws Exception {
		logger.info("formPOST()...");
		service.register(member);
		return "redirect:/";
	}

}
