package com.blueOcean.inf.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blueOcean.inf.dto.IhprdDto;
import com.blueOcean.inf.dto.PagingDto;

@Service
public class IhprdService {

	@Autowired
	protected SqlSessionTemplate dao;

	public int selectIhprdCnt() {
		return dao.selectOne("ihprdMapper.selectIhprdCnt");
	}

	public List<IhprdDto> selectIhprdListPage(PagingDto paging) {
		return dao.selectList("ihprdMapper.selectIhprdListPage", paging);
	}
}