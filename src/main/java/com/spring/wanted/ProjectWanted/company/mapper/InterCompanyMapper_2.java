package com.spring.wanted.ProjectWanted.company.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.spring.wanted.ProjectWanted.post.model.PostVO;

@Mapper
public interface InterCompanyMapper_2 {
	
	// job_select에필요한 값 가져오기	
	List<Map<String, String>> getJobList();
	
	// job_select에 따라 해당되는 duty_select 가져오기
	List<Map<String, String>> getDutyList(String jobCode);
	
	// TBL_POST에 등록하기
	int insertRecruit(PostVO postvo);
	void insertTech(Map<String, String> paraMap);
	
	// 채용공고관리페이지 띄우기
	int getTotalPost(String id);
	
	//ajax로 Post호출하기
	List<Map<String, String>> getPost(Map<String, String> paraMap);
	
	//ajax로 수정페이지 띄우기
	List<Map<String, String>> getEditRecruit(String post_code);
	
	// 수정한거 등록하기
	void updateRecruit(PostVO postvo);
	
	// 기간만료 공고 삭제하기 
	int deleteRecruit(String post_code);
	
	// 공고 중단하기
	int stopRecruit(String post_code);
	
	//ajax로 결제 상세페이지 띄우기
	List<Map<String, String>> viewPostPayment(String post_code);
	
	//결제완료 후 pay_status update하기
	void updatePostPayment(String post_code);
	
	//ajax로 연장상세페이지 띄우기
	List<Map<String, String>> viewExtendPost(String post_code);

	void updateExtendPost(String post_code);

	

	

}
