package com.spring.wanted.ProjectWanted.company.service;

import java.util.List;
import java.util.Map;

import com.spring.wanted.ProjectWanted.post.model.PostVO;

public interface InterCompanyService_2 {
	
	// job_select에필요한 값 가져오기	
	List<Map<String, String>> getJobList();
	
	// job_select에 따라 해당되는 duty_select 가져오기
	List<Map<String, String>> getDutyList(String jobCode);
	
	// TBL_POST에 등록하기
	void insertRecruit(PostVO postvo);
	
	// 채용공고관리페이지 띄우기
	int getTotalPost(String id);
	
	//ajax로 Post호출하기
	String getPost(Map<String, String> paraMap);
	
	//ajax로 수정페이지 띄우기
	List<Map<String, String>> getEditRecruit(String post_code);
	
	// 수정한거 등록하기
	void updateRecruit(PostVO postvo);

}
