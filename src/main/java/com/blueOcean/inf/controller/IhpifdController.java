package com.blueOcean.inf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blueOcean.inf.dto.IhpifdDto;
import com.blueOcean.inf.dto.PagingDto;
import com.blueOcean.inf.service.IhpifdService;

@Controller
public class IhpifdController {

	@Autowired
	private IhpifdService ihpifdService;

	@RequestMapping(value = "/ihpifdList")
	public String ihpifdList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = ihpifdService.selectIhpifdCnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<IhpifdDto> list = ihpifdService.selectIhpifdListPage(paging);

		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

		return "page/ihpifdList";
	}
}