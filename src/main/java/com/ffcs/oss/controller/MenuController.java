package com.ffcs.oss.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/menu")
public class MenuController {

	@RequestMapping(value = "",method = RequestMethod.GET)
	public String toMenu(Model model){
		model.addAttribute("menu","menu");
		return "/menu/menu";
	}
}
