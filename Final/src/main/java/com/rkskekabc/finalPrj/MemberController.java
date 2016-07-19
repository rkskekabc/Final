package com.rkskekabc.finalPrj;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;

import com.rkskekabc.finalPrj.domain.MemberVO;
import com.rkskekabc.finalPrj.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	@Inject
	private MemberService service;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(){
		return "member/login";
	}
	
	@RequestMapping(value="/doLogin", method=RequestMethod.POST)
	public String doLogin(String m_id, String m_pw, HttpServletRequest req) throws Exception{
		MemberVO member = service.doLogin(m_id, m_pw);
		WebUtils.setSessionAttribute(req, "member", member);
		return "home";
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signup(){
		return "member/signup";
	}
	
	@RequestMapping(value="/doSignup", method=RequestMethod.POST)
	public String doSignup(@ModelAttribute MemberVO member){
		service.doSignup(member);
		return "member/login";
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
