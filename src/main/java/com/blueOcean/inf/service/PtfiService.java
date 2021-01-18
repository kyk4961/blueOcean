package com.blueOcean.inf.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blueOcean.inf.dto.PtfiDto;
import com.blueOcean.inf.dto.PagingDto;

@Service
public class PtfiService {

	@Autowired
	protected SqlSessionTemplate dao;

	public int selectPtfi1Cnt() {
		return dao.selectOne("ptfiMapper.selectPtfi1Cnt");
	}

	public List<PtfiDto> selectPtfi1ListPage(PagingDto paging) {
		return dao.selectList("ptfiMapper.selectPtfi1ListPage", paging);
	}
	
	public int selectPtfi2Cnt() {
		return dao.selectOne("ptfiMapper.selectPtfi2Cnt");
	}

	public List<PtfiDto> selectPtfi2ListPage(PagingDto paging) {
		return dao.selectList("ptfiMapper.selectPtfi2ListPage", paging);
	}

}