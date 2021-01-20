package com.blueOcean.inf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blueOcean.inf.dto.IhpmncdDto;
import com.blueOcean.inf.dto.PagingDto;
import com.blueOcean.inf.service.IhpmncdService;

@Controller
public class IhpmncdController {

	@Autowired
	private IhpmncdService ihpmncdService;

	@RequestMapping(value = "/ihpmncdList")
	public String ihpmncdList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = ihpmncdService.selectIhpmncdCnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<IhpmncdDto> list = ihpmncdService.selectIhpmncdListPage(paging);

		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

		return "page/ihpmncdList";
	}
	
	@RequestMapping(value = "/ihpmncdExcelList")
	public String ihpmncdExcelList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		List<IhpmncdDto> list = ihpmncdService.selectIhpmncdList();

		model.addAttribute("list", list);

		return "page/excel/ihpmncdExcelList";
	}
}