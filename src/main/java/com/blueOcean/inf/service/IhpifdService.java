package com.blueOcean.inf.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blueOcean.inf.dto.IhpifdDto;
import com.blueOcean.inf.dto.PagingDto;

@Service
public class IhpifdService {

	@Autowired
	protected SqlSessionTemplate dao;

	public int selectIhpifdCnt() {
		return dao.selectOne("ihpifdMapper.selectIhpifdCnt");
	}

	public List<IhpifdDto> selectIhpifdListPage(PagingDto paging) {
		return dao.selectList("ihpifdMapper.selectIhpifdListPage", paging);
	}
}