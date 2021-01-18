package com.blueOcean.inf.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blueOcean.inf.dto.Ihprd1Dto;
import com.blueOcean.inf.dto.PagingDto;

@Service
public class IhprdService {

	@Autowired
	protected SqlSessionTemplate dao;

	public int selectIhprd1Cnt() {
		return dao.selectOne("ihprdMapper.selectIhprd1Cnt");
	}
	
	public int selectIhprd2Cnt() {
		return dao.selectOne("ihprdMapper.selectIhprd2Cnt");
	}

	public int selectIhprd3Cnt() {
		return dao.selectOne("ihprdMapper.selectIhprd3Cnt");
	}


	public List<Ihprd1Dto> selectIhprd1ListPage(PagingDto paging) {
		return dao.selectList("ihprdMapper.selectIhprd1ListPage", paging);
	}
	
	public List<Ihprd1Dto> selectIhprd2ListPage(PagingDto paging) {
		return dao.selectList("ihprdMapper.selectIhprd2ListPage", paging);
	}

	public List<Ihprd1Dto> selectIhprd3ListPage(PagingDto paging) {
		return dao.selectList("ihprdMapper.selectIhprd3ListPage", paging);
	}

	
}