package com.rkskekabc.finalPrj.persistence;

import com.rkskekabc.finalPrj.domain.MemberVO;

public interface MemberDAO {
	public MemberVO doLogin(String m_id, String m_pw) throws Exception;
	public void doSignup(MemberVO member);
}
