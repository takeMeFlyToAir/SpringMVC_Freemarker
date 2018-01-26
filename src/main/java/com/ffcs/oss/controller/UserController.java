package com.ffcs.oss.controller;

import com.ffcs.oss.domain.PagerResult;
import com.ffcs.oss.domain.UserVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	List<UserVO> userVOList = getUserVOS();
	@RequestMapping(value = "",method = RequestMethod.GET)
	public String toMain(Model model){
		model.addAttribute("user","user");
		return "/user/user";
	}

	@RequestMapping(value = "/list",method = RequestMethod.POST)
	@ResponseBody
	public PagerResult<UserVO> list(Integer limit,Integer offset){
		PagerResult<UserVO> userVOPagerResult = new PagerResult<UserVO>();
		userVOPagerResult.setRows(getUserVOList(limit,offset));
		userVOPagerResult.setTotal(userVOList.size());
		return userVOPagerResult;
	}

	public List<UserVO> getUserVOS(){
		List<UserVO> userVOS = new ArrayList<UserVO>();
		for (int i =  0; i <100; i++){
			UserVO userVO = new UserVO(i,"zzr"+i,"zzr"+i);
			userVOS.add(userVO);
		}
		return userVOS;
	}

	public List<UserVO> getUserVOList(Integer limit,Integer offset){
		if(limit == null){
			limit = 10;
		}
		if(offset == null){
			offset = 0;
		}
		List<UserVO> temp = new ArrayList<UserVO>();
		Integer start = offset;
		Integer end = start + limit;
		for (int i = start;i < end; i++){
			temp.add(userVOList.get(i));
		}
		return temp;
	}
}
