package com.spring.wanted.ProjectWanted.post.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.wanted.ProjectWanted.post.model.FilterData;
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
	@PostMapping(value = "/getPostListWithFilters", produces="text/plain;charset=UTF-8" )
	public String getPostListWithFilters(@RequestBody FilterData filterData ) {
		List<String> job_code = filterData.getJob_code();
	    List<String> duty_code = filterData.getDuty_code();
	    List<String> region_detail_code = filterData.getRegion_detail_code();
	    List<String> career = filterData.getCareer();
	    List<String> tech_code = filterData.getTech_code();
	    List<String> tag_name = filterData.getTech_code();
	    
	    

	    System.out.println(job_code);	    
		System.out.println(duty_code);
		System.out.println(region_detail_code);
		System.out.println(career);
		System.out.println(tech_code);
		System.out.println(tag_name);
		
		
		List<Map<String, String>> PostList = service.getPostListWithFilters(job_code, duty_code, region_detail_code, career, tech_code, tag_name);


		JSONObject jsonobj = new JSONObject();
		
		jsonobj.put("PostList", PostList);
		
		return jsonobj.toString();
	
	}
	
	/*
	 * // 메인페이지 태그별 공고
	 * 
	 * @ResponseBody
	 * 
	 * @GetMapping(value = "/selectSalary", produces="text/plain;charset=UTF-8" )
	 * public String selectSalary() { List<Map<String, String>> PostList =
	 * service.selectSalary();
	 * 
	 * JSONObject jsonobj = new JSONObject();
	 * 
	 * jsonobj.put("PostList", PostList);
	 * 
	 * return jsonobj.toString();
	 * 
	 * }
	 */
	
	
	
}

