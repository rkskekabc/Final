package com.rkskekabc.finalPrj.service;

import java.util.List;

import com.rkskekabc.finalPrj.domain.RequestVO;

public interface RequestService {
	public RequestVO readRequest(int r_code) throws Exception;
	public List<RequestVO> requestList() throws Exception;
	public void writeRequest(RequestVO vo) throws Exception;
	public void writeAnswer(RequestVO vo) throws Exception;
}
