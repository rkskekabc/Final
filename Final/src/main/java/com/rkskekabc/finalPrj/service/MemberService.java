package com.rkskekabc.finalPrj.service;

import com.rkskekabc.finalPrj.domain.MemberVO;

public interface MemberService {
	public MemberVO doLogin(String m_id, String m_pw) throws Exception;
	public void doSignup(MemberVO member);
}
