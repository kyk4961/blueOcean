package com.blueOcean.inf.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blueOcean.inf.dto.IhpndDto;
import com.blueOcean.inf.dto.PagingDto;

@Service
public class IhpndService {

	@Autowired
	protected SqlSessionTemplate dao;

	public int selectIhpndCnt() {
		return dao.selectOne("ihpndMapper.selectIhpndCnt");
	}

	public List<IhpndDto> selectIhpndListPage(PagingDto paging) {
		return dao.selectList("ihpndMapper.selectIhpndListPage", paging);
	}
	
	public List<IhpndDto> selectIhpndList() {
		return dao.selectList("ihpndMapper.selectIhpndList");
	}
}