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

	@RequestMapping(value = "/ptfiList")
	public String ptfiList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = ptfiService.selectPtfiCnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<PtfiDto> list = ptfiService.selectPtfiListPage(paging);

		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

		return "page/ptfiList";
	}
}