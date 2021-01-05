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

	public int selectPtfiCnt() {
		return dao.selectOne("ptfiMapper.selectPtfiCnt");
	}

	public List<PtfiDto> selectPtfiListPage(PagingDto paging) {
		return dao.selectList("ptfiMapper.selectPtfiListPage", paging);
	}
}