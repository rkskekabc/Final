package com.rkskekabc.finalPrj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(){
		return "member/login";
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signup(){
		return "member/signup";
	}
	
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public String mypage(){
		return "member/mypage";
	}
	
	@RequestMapping(value="/mygroup", method=RequestMethod.GET)
	public String mygroup(){
		return "member/mygroup";
	}
	
	@RequestMapping(value="/paylist", method=RequestMethod.GET)
	public String paylist(){
		return "member/paylist";
	}
	
	@RequestMapping(value="/mileage", method=RequestMethod.GET)
	public String mileage(){
		return "member/mileage";
	}
}
