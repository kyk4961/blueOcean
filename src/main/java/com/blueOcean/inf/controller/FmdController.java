package com.blueOcean.inf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blueOcean.inf.dto.FmdDto;
import com.blueOcean.inf.dto.PagingDto;
import com.blueOcean.inf.service.FmdService;

@Controller
public class FmdController {

	@Autowired
	private FmdService fmdService;

	@RequestMapping(value = "/fmdList")
	public String fmdList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = fmdService.selectFmdCnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<FmdDto> list = fmdService.selectFmdListPage(paging);

		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

		return "page/fmdList";
	}
	
	@RequestMapping(value = "/fmdExcelList")
	public String fmdExcelList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		List<FmdDto> list = fmdService.selectFmdList();

		model.addAttribute("list", list);

		return "page/excel/fmdExcelList";
	}
}