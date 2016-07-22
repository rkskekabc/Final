package com.rkskekabc.finalPrj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rkskekabc.finalPrj.domain.NoticeVO;
import com.rkskekabc.finalPrj.domain.RequestVO;
import com.rkskekabc.finalPrj.service.NoticeService;
import com.rkskekabc.finalPrj.service.RequestService;

@Controller
@RequestMapping("/service/*")
public class NoticeController {
	@Autowired
	private NoticeService service;
	
	@Autowired
	private RequestService rService;
	
	@RequestMapping("notice")
	public String noticeHandler(Model model) throws Exception{
		model.addAttribute("noticeList", service.getNoticeList());
		return "service/notice";
	}
	
	@RequestMapping("faq")
	public String faqHandler(){
		return "service/faq";
	}
	
	@RequestMapping("request")
	public String requestHandler(Model model) throws Exception{
		if(rService.requestList() == null){
			
		}
		else{
			model.addAttribute("requestList", rService.requestList());
		}
		return "service/request";
	}
	
	@RequestMapping("requestRead")
	public String requstReadHandler(){
		return null;
	}
	
	@RequestMapping("requestWrite")
	public String requestWriteHandler(){
		return "service/requestWrite";
	}
	
	@RequestMapping("requestComplete")
	public String requestCompleteHandler(RequestVO vo) throws Exception{
		rService.writeRequest(vo);
		return "service/request";
	}
	
	@RequestMapping("noticeRead")
	public String readNoticeHandler(int n_code, Model model) throws Exception{
		model.addAttribute("notice", service.readNotice(n_code));
		return "service/noticeRead";
	}
	
	@RequestMapping("noticeWrite")
	public String writeNoticeHandler(){
		return "service/noticeWrite";
	}
	
	@RequestMapping("noticeComplete")
	public String noticeCompleteHandler(NoticeVO vo) throws Exception{
		service.writeNotice(vo);
		return "redirect:/service/notice";
	}
	
	@RequestMapping("noticeDelete")
	public String noticeDeleteHandler(int n_code) throws Exception{
		service.deleteNotice(n_code);
		return "redirect:/service/notice";
	}
}
