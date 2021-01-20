package com.blueOcean.inf.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blueOcean.inf.dto.IhpmncdDto;
import com.blueOcean.inf.dto.PagingDto;

@Service
public class IhpmncdService {

	@Autowired
	protected SqlSessionTemplate dao;

	public int selectIhpmncdCnt() {
		return dao.selectOne("ihpmncdMapper.selectIhpmncdCnt");
	}

	public List<IhpmncdDto> selectIhpmncdListPage(PagingDto paging) {
		return dao.selectList("ihpmncdMapper.selectIhpmncdListPage", paging);
	}
	
	public List<IhpmncdDto> selectIhpmncdList() {
		return dao.selectList("ihpmncdMapper.selectIhpmncdList");
	}
}