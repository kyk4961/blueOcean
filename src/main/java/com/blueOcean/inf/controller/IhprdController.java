package com.blueOcean.inf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blueOcean.inf.dto.Ihprd1Dto;
import com.blueOcean.inf.dto.PagingDto;
import com.blueOcean.inf.service.IhprdService;

@Controller
public class IhprdController {

	@Autowired
	private IhprdService ihprdService;

	@RequestMapping(value = "/ihprd1List")
	public String ihprd1List(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = ihprdService.selectIhprd1Cnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<Ihprd1Dto> list = ihprdService.selectIhprd1ListPage(paging);

		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

		return "page/ihprd1List";
	}
	
	@RequestMapping(value = "/ihprd2List")
	public String ihprd2List(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = ihprdService.selectIhprd2Cnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<Ihprd1Dto> list = ihprdService.selectIhprd2ListPage(paging);

		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

		return "page/ihprd2List";
	}
	
	@RequestMapping(value = "/ihprd3List")
	public String ihprd3List(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = ihprdService.selectIhprd3Cnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<Ihprd1Dto> list = ihprdService.selectIhprd3ListPage(paging);

		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

		return "page/ihprd3List";
	}
}