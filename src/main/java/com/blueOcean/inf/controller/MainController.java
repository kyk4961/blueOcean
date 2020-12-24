package com.blueOcean.inf.controller;

import java.io.File;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blueOcean.inf.dto.AlarmDto;
import com.blueOcean.inf.dto.AreaDto;
import com.blueOcean.inf.dto.DeviceDto;
import com.blueOcean.inf.dto.PagingDto;
import com.blueOcean.inf.dto.ResDto;
import com.blueOcean.inf.service.AlarmService;
import com.blueOcean.inf.service.AreaService;
import com.blueOcean.inf.service.DeviceService;

@Controller
public class MainController {
	
	@Autowired
	private AlarmService alarmService;

	@Autowired
	private AreaService areaService;

	@Autowired
	private DeviceService deviceService;
	
	@Autowired
	ResourceLoader resourceLoader;

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

	@RequestMapping(value="/alarmList")
	public String alarmList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = alarmService.selectAlarmCnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<AlarmDto> list = alarmService.selectAlarmListPage(paging);
		
		model.addAttribute("paging", paging);
		model.addAttribute("list", list);
		
		return "page/alarmList";
	}

	@RequestMapping(value="/areaList")
	public String areaList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		
		PagingDto paging = new PagingDto();
		int totalCount = areaService.selectAreaCnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<AreaDto> list = areaService.selectAreaListPage(paging);
		
		model.addAttribute("paging", paging);
		model.addAttribute("list", list);
		
		return "page/areaList";
	}
	
	@RequestMapping(value="/areaRegProc")
	@ResponseBody
	public ResDto areaRegProc(AreaDto areaDto) throws Exception {
		return areaService.insertAreaList(areaDto);
	}
	
	@RequestMapping(value="/areaDelProc")
	@ResponseBody
	public ResDto areaDelProc(@RequestParam String idArray) throws Exception {
		return areaService.deleteArea(idArray);
	}
	

	@RequestMapping(value="/deviceList")
	public String deviceList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		
		PagingDto paging = new PagingDto();
		int totalCount = deviceService.selectDeviceCnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<DeviceDto> list = deviceService.selectDeviceListPage(paging);
		
		model.addAttribute("paging", paging);
		model.addAttribute("list", list);
		
		return "page/deviceList";
	}
	
	@RequestMapping(value="/deviceDelProc")
	@ResponseBody
	public ResDto deviceDelProc(@RequestParam String idArray) throws Exception {
		return deviceService.deleteDevice(idArray);
	}

	@RequestMapping(value="/appPush")
	public String appPush() throws Exception {
		return "page/appPush";
	}
	
	@RequestMapping(value="/appPushProc")
	@ResponseBody
	public ResDto appPushProc(@RequestParam(name = "title") String title
			, @RequestParam(name = "contents") String contents
			, @RequestParam(name = "token") String token) throws Exception {
		return deviceService.sendAppPush(title, contents, token);
	}
	
	
	@RequestMapping(value="/excelDown")
	public ResponseEntity<Resource> excelDown(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	    Resource resource = new ClassPathResource("static/sample/sample.csv");

	    		
	    return ResponseEntity.ok()
	            .contentType(MediaType.APPLICATION_OCTET_STREAM)
	            .cacheControl(CacheControl.noCache())
	            .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=sample.csv")
	            .body(resource);
	}
	
	

}