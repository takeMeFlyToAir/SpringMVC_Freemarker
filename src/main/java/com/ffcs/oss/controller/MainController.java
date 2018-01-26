package com.ffcs.oss.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/main")
public class MainController {
	@RequestMapping(value = "",method = RequestMethod.GET)
	public String toMain(Model model){
		model.addAttribute("main","main");
		return "/main/main";
	}

}
