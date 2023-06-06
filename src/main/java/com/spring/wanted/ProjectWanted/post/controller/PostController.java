package com.spring.wanted.ProjectWanted.post.controller;

import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.wanted.ProjectWanted.post.service.InterPostService;

@RequestMapping("/wanted")
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
	
	
	// 공고리스트 불러오기
	@ResponseBody
	@GetMapping(value = "/getPostList", produces="text/plain;charset=UTF-8" )
	public String getPostList() {
		List<Map<String, String>> PostList = service.getPostList();
		
		JSONObject jsonobj = new JSONObject();
		
		jsonobj.put("PostList", PostList);
		
		return jsonobj.toString();
		
	}
	
	
	
	
	
	
}
