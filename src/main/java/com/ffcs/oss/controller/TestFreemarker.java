package com.ffcs.oss.controller;

import com.ffcs.oss.domain.MenuVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/")
public class TestFreemarker {

	@RequestMapping(value = "",method = RequestMethod.GET)
	public String toIndex(Model model){
		model.addAttribute("index","index");
		List<MenuVO> menuVOList = new ArrayList<MenuVO>();
		menuVOList.add(getMenuVO("系统管理"));
		menuVOList.add(getMenuVO("组织管理"));
		menuVOList.add(getMenuVO("用户管理"));
		model.addAttribute("titles",menuVOList);
		return "index";
	}

	private MenuVO getMenuVO(String name){
		MenuVO menuVO = new MenuVO();
		menuVO.setName(name);
		menuVO.setIcon("fa-user");
		menuVO.setUrl("");
		List<MenuVO> menuVOList = new ArrayList<MenuVO>();
		menuVOList.add(getMenuVOSub("地址管理","/address"));
		menuVOList.add(getMenuVOSub("用户管理","/user"));
		menuVOList.add(getMenuVOSub("菜单管理","/menu"));
		menuVOList.add(getMenuVOSub("日志管理","/log"));
		menuVO.setChildren(menuVOList);
		return menuVO;
	}

	private MenuVO getMenuVOSub(String name,String url){
		MenuVO menuVO = new MenuVO();
		menuVO.setName(name);
		menuVO.setIcon("fa-user");
		menuVO.setUrl(url);
		return menuVO;
	}
}
