package com.spring.wanted.ProjectWanted.company.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;


import com.spring.wanted.ProjectWanted.company.service.InterCompanyService_2;
import com.spring.wanted.ProjectWanted.post.model.PostVO;

@RequestMapping("/wanted")
@Controller
public class CompanyController_2 {
	
	private final InterCompanyService_2 service ; 

	@Autowired
	public CompanyController_2(InterCompanyService_2 service ) {
	 this.service = service ;
	}
	
	// job_select에필요한 값 가져오기	
	@GetMapping(value="/company_recruit")
	public String recruit(HttpServletRequest request){
		
		List<Map<String, String>> JobList = service.getJobList();
		
		request.setAttribute("JobList", JobList);
		
		return "company/company_recruit.tiles2";
	}
	
	// TBL_POST에 등록하기
	@PostMapping(value="/company_recruit", produces = "text/plain;charset=UTF-8")
	public String recruit(PostVO postvo){
		service.insertRecruit(postvo);
		
		return "";
				
	}
	
	// job_select에 따라 해당되는 duty_select 가져오기
	@ResponseBody
	@GetMapping(value="/getDuty", produces = "text/plain;charset=UTF-8")
	public String dutySelect(HttpServletRequest request, @RequestParam("jobCode") String jobCode){
		List<Map<String, String>> dutyList = service.getDutyList(jobCode);
		
		JSONObject jsonObj = new JSONObject();
		jsonObj.put("dutyList", dutyList);
		
		return jsonObj.toString();
	}
	
	@ResponseBody
	@GetMapping(value="/getHeaderList" , produces = "text/plain;charset=UTF-8" )
	public String getHeaderList() {
		List<Map<String,String>> jobList = service.getJobList();
		
		JSONObject jsonobj = new JSONObject();
		
		jsonobj.put("jobList", jobList);
		
		return jsonobj.toString();
	}
	

}
