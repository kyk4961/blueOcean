package com.blueOcean.inf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blueOcean.inf.dto.IhprdDto;
import com.blueOcean.inf.dto.PagingDto;
import com.blueOcean.inf.service.IhprdService;

@Controller
public class IhprdController {

	@Autowired
	private IhprdService ihprdService;

	@RequestMapping(value = "/ihprdList")
	public String ihprdList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = ihprdService.selectIhprdCnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<IhprdDto> list = ihprdService.selectIhprdListPage(paging);

		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

		return "page/ihprdList";
	}
}