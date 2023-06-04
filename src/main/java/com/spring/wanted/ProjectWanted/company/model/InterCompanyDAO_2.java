package com.spring.wanted.ProjectWanted.company.model;

import java.util.List;
import java.util.Map;

import com.spring.wanted.ProjectWanted.post.model.PostVO;

public interface InterCompanyDAO_2 {
	
	// job_select에필요한 값 가져오기	
	List<Map<String, String>> getJobList();
	
	// job_select에 따라 해당되는 duty_select 가져오기
	List<Map<String, String>> getDutyList(String jobCode);
	
	// TBL_POST에 등록하기
	void insertRecruit(PostVO postvo);
	
	// 채용공고관리페이지 띄우기
	int getTotalPost(String id);
	
	//ajax로 Post호출하기
	List<Map<String, String>> getPost(Map<String, String> paraMap);
	
	//ajax로 수정페이지 띄우기
	List<Map<String, String>> getEditRecruit(String post_code);

}
