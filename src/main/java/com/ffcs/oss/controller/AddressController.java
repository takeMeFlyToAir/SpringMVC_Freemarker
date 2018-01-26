package com.ffcs.oss.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/address")
public class AddressController {

	@RequestMapping(value = "",method = RequestMethod.GET)
	public String toAddress(Model model){
		model.addAttribute("address","address");
		return "/address/address";
	}
}
