package com.blueOcean.inf.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blueOcean.inf.dto.StpdDto;
import com.blueOcean.inf.dto.PagingDto;

@Service
public class StpdService {

	@Autowired
	protected SqlSessionTemplate dao;

	public int selectStpdCnt() {
		return dao.selectOne("stpdMapper.selectStpdCnt");
	}

	public List<StpdDto> selectStpdListPage(PagingDto paging) {
		return dao.selectList("stpdMapper.selectStpdListPage", paging);
	}
}