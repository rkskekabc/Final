package com.rkskekabc.finalPrj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/service/*")
public class NoticeController {
	@RequestMapping("notice")
	public String noticeHandler(){
		return "service/notice";
	}
	
	@RequestMapping("faq")
	public String faqHandler(){
		return "service/faq";
	}
	
	@RequestMapping("request")
	public String requestHandler(){
		return "service/request";
	}
	
	@RequestMapping("requestWrite")
	public String requestWriteHandler(){
		return "service/requestWrite";
	}
}
