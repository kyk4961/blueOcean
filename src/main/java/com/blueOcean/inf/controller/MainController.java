package com.blueOcean.inf.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.blueOcean.inf.service.ExcelService;

@Controller
public class MainController {
	
	@Autowired
	private ExcelService excelService;
	
	@RequestMapping(value="/test")
	public String test() throws Exception {
		return "test";
	}
	
	@RequestMapping(value="/main")
	public String main() throws Exception {
		return "main";
	}
	
	@RequestMapping(value="/login")
	public String fcm() throws Exception {
		return "login";
	}
	
	@RequestMapping(value="/excel/upload", method = RequestMethod.POST)
	public String excelUpload(Model model, @RequestParam("file") MultipartFile file, @RequestParam("excelType") String excelType) throws IOException {
		excelService.importExcelData(file, excelType);
		// TODO : import 이후 동작 및 예외처리 로직 개발
		return "test";
	}
}