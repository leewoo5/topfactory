package org.zerock.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.UserVO;

@Controller
@RequestMapping(value= "/user/*")
public class RegisterController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public void formGET() {
		logger.info("formGET()...");
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.POST)
	public String formPOST(UserVO vo) {
		logger.info("formPOST()...");
		return "redirect:/";
	}

}
