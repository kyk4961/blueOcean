package com.blueOcean.inf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blueOcean.inf.dto.PtfiDto;
import com.blueOcean.inf.dto.PagingDto;
import com.blueOcean.inf.service.PtfiService;

@Controller
public class PtfiController {

	@Autowired
	private PtfiService ptfiService;

	@RequestMapping(value = "/ptfi1List")
	public String ptfiList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = ptfiService.selectPtfi1Cnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<PtfiDto> list = ptfiService.selectPtfi1ListPage(paging);

		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

		return "page/ptfi1List";
	}
	
	@RequestMapping(value = "/ptfi2List")
	public String ptfi2List(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = ptfiService.selectPtfi2Cnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<PtfiDto> list = ptfiService.selectPtfi2ListPage(paging);

		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

		return "page/ptfi2List";
	}
	
	@RequestMapping(value = "/ptfi1ExcelList")
	public String ptfi1ExcelList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		List<PtfiDto> list = ptfiService.selectPtfi1List();

		model.addAttribute("list", list);

		return "page/excel/ptfi1ExcelList";
	}
	
	@RequestMapping(value = "/ptfi2ExcelList")
	public String ptfi2ExcelList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		
		List<PtfiDto> list = ptfiService.selectPtfi2List();

		model.addAttribute("list", list);

		return "page/excel/ptfi2ExcelList";
	}
}