package com.spring.wanted.ProjectWanted.post.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.wanted.ProjectWanted.post.service.InterPostService;

@RequestMapping("/wanted/post")
@Controller
public class PostController {

	private final InterPostService service;
	
	@Autowired
	public PostController(InterPostService service) {
		this.service = service;
	}
	
	// 채용 페이지
	@GetMapping(value = "/mainPost")
	public String resume_info() {
		return "post/mainPost.tiles1" ;
	}
	
	// Job 데이터 불러오기
	@ResponseBody
	@GetMapping(value = "/getJobList", produces="text/plain;charset=UTF-8" )
	public String getJobList() {
		List<Map<String, String>> JobList = service.getJobList();
		
		JSONObject jsonobj = new JSONObject();
		
		jsonobj.put("JobList", JobList);
		
		return jsonobj.toString();
		
	}
	
	// Duty 데이터 불러오기
	@ResponseBody
	@GetMapping(value = "/getDutyList_post", produces="text/plain;charset=UTF-8" )
	public String getDutyList(@RequestParam("job_code") String job_code , HttpServletRequest request) {
	    
		List<Map<String, String>> DutyList = service.getDutyList(job_code);
		
		JSONObject jsonobj = new JSONObject();
		
		jsonobj.put("DutyList", DutyList);
		
		return jsonobj.toString();
	  }
	
	// region 데이터 불러오기
	@ResponseBody
	@GetMapping(value = "/getRegionList", produces="text/plain;charset=UTF-8" )
	public String getRegionList() {
		List<Map<String, String>> RegionList = service.getRegionList();
		
		JSONObject jsonobj = new JSONObject();
		
		jsonobj.put("RegionList", RegionList);
		
		return jsonobj.toString();
		
	}
	
	// region_detail 데이터 불러오기
	@ResponseBody
	@GetMapping(value = "/getRegionDetailList", produces="text/plain;charset=UTF-8" )
	public String getRegionDetailList(@RequestParam("region_code") String region_code , HttpServletRequest request) {
	    
		List<Map<String, String>> RegionDetailList = service.getRegionDetailList(region_code);
		
		JSONObject jsonobj = new JSONObject();
		
		jsonobj.put("RegionDetailList", RegionDetailList);
		
		return jsonobj.toString();
	  }
	
	
	// 공고리스트 불러오기
	@ResponseBody
	@GetMapping(value = "/getPostList", produces="text/plain;charset=UTF-8" )
	public String getPostList() {
		List<Map<String, String>> PostList = service.getPostList();
		
		JSONObject jsonobj = new JSONObject();
		
		jsonobj.put("PostList", PostList);
		
		return jsonobj.toString();
		
	}
	
	@ResponseBody
	@GetMapping(value = "/getPostListWithFilters", produces="text/plain;charset=UTF-8" )
	public String getPostList(HttpServletRequest request,
			@RequestParam(required=false, defaultValue="")		int job_code,
			@RequestParam(required=false, defaultValue="") 		List<String> dutyCodes,
			@RequestParam(required=false, defaultValue="") 		List<String> region_code,
			@RequestParam(required=false, defaultValue="")  	List<String> region_detail_code,
			@RequestParam(required=false, defaultValue="") 		List<String> career,
			@RequestParam(required=false, defaultValue="")		List<String> tech_code) {
		
		System.out.println(job_code);
		System.out.println(dutyCodes);
		System.out.println(region_code);
		System.out.println(career);
		System.out.println(region_detail_code);
		System.out.println(tech_code);
		
		
		//List<Map<String, String>> PostList = service.getPostList(job_code, dutyCodes, region_code, region_detail_code, career, tech_code);


		JSONObject jsonobj = new JSONObject();
		
		//jsonobj.put("PostList", PostList);
		
		return jsonobj.toString();
		
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @GetMapping(value = "/getPostListWithFilters",
	 * produces="text/plain;charset=UTF-8" ) public String
	 * getPostListWithFilters(@RequestBody Map<String, List<String>> requestData) {
	 * //int job_code = requestData.get("job_code"); List<String> tech_code =
	 * requestData.get("tech_code"); List<String> duty_code =
	 * requestData.get("duty_code");
	 * 
	 * 
	 * 
	 * //List<Map<String, String>> PostList = service.getPostList(job_code,
	 * dutyCodes, region_code, region_detail_code, career, tech_code);
	 * 
	 * 
	 * JSONObject jsonobj = new JSONObject();
	 * 
	 * //jsonobj.put("PostList", PostList);
	 * 
	 * return jsonobj.toString();
	 * 
	 * }
	 */
	
	
	
	
}
