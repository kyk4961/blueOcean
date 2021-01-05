package com.blueOcean.inf.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blueOcean.inf.dto.FprdDto;
import com.blueOcean.inf.dto.PagingDto;

@Service
public class FprdService {

	@Autowired
	protected SqlSessionTemplate dao;

	public int selectFprdCnt() {
		return dao.selectOne("fprdMapper.selectFprdCnt");
	}

	public List<FprdDto> selectFprdListPage(PagingDto paging) {
		return dao.selectList("fprdMapper.selectFprdListPage", paging);
	}
}