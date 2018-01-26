package com.ffcs.oss.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/log")
public class LogController {

	@RequestMapping(value = "",method = RequestMethod.GET)
	public String toLog(Model model){
		model.addAttribute("log","log");
		return "/log/log";
	}
}
