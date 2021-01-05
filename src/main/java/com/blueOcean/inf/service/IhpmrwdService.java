package com.blueOcean.inf.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blueOcean.inf.dto.IhpmrwdDto;
import com.blueOcean.inf.dto.PagingDto;

@Service
public class IhpmrwdService {

	@Autowired
	protected SqlSessionTemplate dao;

	public int selectIhpmrwdCnt() {
		return dao.selectOne("ihpmrwdMapper.selectIhpmrwdCnt");
	}

	public List<IhpmrwdDto> selectIhpmrwdListPage(PagingDto paging) {
		return dao.selectList("ihpmrwdMapper.selectIhpmrwdListPage", paging);
	}
}