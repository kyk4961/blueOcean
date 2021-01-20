package com.blueOcean.inf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blueOcean.inf.dto.StpdDto;
import com.blueOcean.inf.dto.PagingDto;
import com.blueOcean.inf.service.StpdService;

@Controller
public class StpdController {

	@Autowired
	private StpdService stpdService;

	@RequestMapping(value = "/stpdList")
	public String stpdList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = stpdService.selectStpdCnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<StpdDto> list = stpdService.selectStpdListPage(paging);

		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

		return "page/stpdList";
	}
	
	@RequestMapping(value = "/stpdExcelList")
	public String stpdExcelList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		
		List<StpdDto> list = stpdService.selectStpdList();

		model.addAttribute("list", list);

		return "page/excel/stpdExcelList";
	}
}