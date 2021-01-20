package com.blueOcean.inf.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blueOcean.inf.dto.IhppdDto;
import com.blueOcean.inf.dto.PagingDto;

@Service
public class IhppdService {

	@Autowired
	protected SqlSessionTemplate dao;

	public int selectIhppdCnt() {
		return dao.selectOne("ihppdMapper.selectIhppdCnt");
	}

	public List<IhppdDto> selectIhppdListPage(PagingDto paging) {
		return dao.selectList("ihppdMapper.selectIhppdListPage", paging);
	}
	
	public List<IhppdDto> selectIhppdList() {
		return dao.selectList("ihppdMapper.selectIhppdList");
	}
}