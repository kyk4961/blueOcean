package com.blueOcean.inf.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blueOcean.inf.dto.FmdDto;
import com.blueOcean.inf.dto.PagingDto;

@Service
public class FmdService {

	@Autowired
	protected SqlSessionTemplate dao;

	public int selectFmdCnt() {
		return dao.selectOne("fmdMapper.selectFmdCnt");
	}

	public List<FmdDto> selectFmdListPage(PagingDto paging) {
		return dao.selectList("fmdMapper.selectFmdListPage", paging);
	}
}