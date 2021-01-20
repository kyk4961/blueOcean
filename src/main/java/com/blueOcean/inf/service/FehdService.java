package com.blueOcean.inf.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blueOcean.inf.dto.FehdDto;
import com.blueOcean.inf.dto.PagingDto;

@Service
public class FehdService {

	@Autowired
	protected SqlSessionTemplate dao;

	public int selectFehdCnt() {
		return dao.selectOne("fehdMapper.selectFehdCnt");
	}

	public List<FehdDto> selectFehdListPage(PagingDto paging) {
		return dao.selectList("fehdMapper.selectFehdListPage", paging);
	}

	public List<FehdDto> selectFehdList() {
		return dao.selectList("fehdMapper.selectFehdList");
	}
}