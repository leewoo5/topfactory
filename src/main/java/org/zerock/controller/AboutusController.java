package org.zerock.controller;

import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.User;
import org.zerock.dto.LoginDTO;
import org.zerock.service.UserService;

@Controller
@RequestMapping(value="/aboutus/*")
public class AboutusController {
	
	private static final Logger logger = LoggerFactory.getLogger(AboutusController.class);
	
//	@Inject
//	UserService service;
	
	@RequestMapping(value="/intro", method = RequestMethod.GET)
	public void introGET() throws Exception {
		
	}

}
