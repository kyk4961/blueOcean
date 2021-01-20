package com.blueOcean.inf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blueOcean.inf.dto.FprdDto;
import com.blueOcean.inf.dto.PagingDto;
import com.blueOcean.inf.service.FprdService;

@Controller
public class FprdController {

	@Autowired
	private FprdService fprdService;

	@RequestMapping(value = "/fprdList")
	public String fprdList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = fprdService.selectFprdCnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<FprdDto> list = fprdService.selectFprdListPage(paging);

		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

		return "page/fprdList";
	}
	
	@RequestMapping(value = "/fprdExcelList")
	public String fprdExcelList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		List<FprdDto> list = fprdService.selectFprdList();

		model.addAttribute("list", list);

		return "page/excel/fprdExcelList";
	}
}