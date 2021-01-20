package com.blueOcean.inf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blueOcean.inf.dto.FehdDto;
import com.blueOcean.inf.dto.PagingDto;
import com.blueOcean.inf.service.FehdService;

@Controller
public class FehdController {

	@Autowired
	private FehdService fehdService;

	@RequestMapping(value = "/fehdList")
	public String fehdList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = fehdService.selectFehdCnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<FehdDto> list = fehdService.selectFehdListPage(paging);

		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

		return "page/fehdList";
	}
	
	@RequestMapping(value = "/fehdExcelList")
	public String fehdExcelList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		List<FehdDto> list = fehdService.selectFehdList();

		model.addAttribute("list", list);

		return "page/excel/fehdExcelList";
	}
}