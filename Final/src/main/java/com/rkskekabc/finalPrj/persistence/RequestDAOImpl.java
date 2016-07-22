package com.rkskekabc.finalPrj.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rkskekabc.finalPrj.domain.RequestVO;

@Repository
public class RequestDAOImpl implements RequestDAO {
	@Autowired
	private SqlSession session;
	
	private static String namespace = "com.rkskekabc.mappers.RequestMapper";
	
	@Override
	public RequestVO readRequest(int r_code) throws Exception {
		return session.selectOne(namespace + ".readRequest", r_code);
	}

	@Override
	public List<RequestVO> requestList() throws Exception {
		return session.selectList(namespace + ".requestList");
	}

	@Override
	public void writeRequest(RequestVO vo) throws Exception {
		session.insert(namespace + ".writeRequest", vo);
	}

	@Override
	public void writeAnswer(RequestVO vo) throws Exception {
		
	}

}
