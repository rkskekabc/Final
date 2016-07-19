package com.rkskekabc.finalPrj.persistence;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.rkskekabc.finalPrj.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	@Inject
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "com.rkskekabc.mappers.memberMapper";
	
	@Override
	public MemberVO doLogin(String m_id, String m_pw) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("m_id", m_id);
		paramMap.put("m_pw", m_pw);
		MemberVO member = sqlSession.selectOne(NAMESPACE + ".doLogin", paramMap);
		
		if(member == null){
			throw new Exception();
		}
		return member;
	}

	@Override
	public void doSignup(MemberVO member) {
		sqlSession.insert(NAMESPACE + ".doSignup", member);
	}

}
