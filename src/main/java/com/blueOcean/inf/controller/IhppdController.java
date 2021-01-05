package com.blueOcean.inf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blueOcean.inf.dto.IhppdDto;
import com.blueOcean.inf.dto.PagingDto;
import com.blueOcean.inf.service.IhppdService;

@Controller
public class IhppdController {

	@Autowired
	private IhppdService ihppdService;

	@RequestMapping(value = "/ihppdList")
	public String ihppdList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = ihppdService.selectIhppdCnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<IhppdDto> list = ihppdService.selectIhppdListPage(paging);

		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

		return "page/ihppdList";
	}
}