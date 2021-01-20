package com.blueOcean.inf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blueOcean.inf.dto.IhpndDto;
import com.blueOcean.inf.dto.PagingDto;
import com.blueOcean.inf.service.IhpndService;

@Controller
public class IhpndController {

	@Autowired
	private IhpndService ihpndService;

	@RequestMapping(value = "/ihpndList")
	public String ihpndList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = ihpndService.selectIhpndCnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<IhpndDto> list = ihpndService.selectIhpndListPage(paging);

		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

		return "page/ihpndList";
	}
	
	@RequestMapping(value = "/ihpndExcelList")
	public String ihpndExcelList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		List<IhpndDto> list = ihpndService.selectIhpndList();

		model.addAttribute("list", list);

		return "page/excel/ihpndExcelList";
	}
}