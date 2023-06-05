package com.spring.wanted.ProjectWanted.company.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.spring.wanted.ProjectWanted.company.mapper.InterCompanyMapper_2;
import com.spring.wanted.ProjectWanted.post.model.PostVO;

@Component
@Repository
public class CompanyDAO_2 implements InterCompanyDAO_2 {
	
	private final InterCompanyMapper_2 mapper;
	
	@Autowired
	public CompanyDAO_2(InterCompanyMapper_2 mapper) {
		this.mapper = mapper;
	}
	
	// job_select에필요한 값 가져오기	
	@Override
	public List<Map<String, String>> getJobList() {
		
		List<Map<String, String>> JobList = mapper.getJobList();
		
		return JobList;
	}
	
	// job_select에 따라 해당되는 duty_select 가져오기
	@Override
	public List<Map<String, String>> getDutyList(String jobCode) {
		List<Map<String, String>> dutyList = mapper.getDutyList(jobCode);
		return dutyList;
	}
	
	// TBL_POST에 등록하기
	@Override
	public void insertRecruit(PostVO postvo) {
		mapper.insertRecruit(postvo);
		
	}
	
	// 채용공고관리페이지 띄우기
	@Override
	public int getTotalPost(String id) {
		int totalPost = mapper.getTotalPost(id);
		
		return totalPost;
	}
	
	//ajax로 Post호출하기
	@Override
	public List<Map<String, String>> getPost(Map<String, String> paraMap) {
		List<Map<String, String>> postList = mapper.getPost(paraMap);
		return postList;
	}
	
	//ajax로 수정페이지 띄우기
	@Override
	public List<Map<String, String>> getEditRecruit(String post_code) {
		
		List<Map<String, String>> editRecruit = mapper.getEditRecruit(post_code);
		
		return editRecruit;
	}
	
	// 수정한거 등록하기
	@Override
	public void updateRecruit(PostVO postvo) {
		mapper.updateRecruit(postvo);
		
	}
	
	// 기간만료 공고 삭제하기 
	@Override
	public int deleteRecruit(String post_code) {
		int n = mapper.deleteRecruit(post_code);
		return n;
	}
	
	// 공고 중단하기
	@Override
	public int stopRecruit(String post_code) {
		int n = mapper.stopRecruit(post_code);
		return n;
	}
	
	//ajax로 결제 상세페이지 띄우기
	@Override
	public List<Map<String, String>> viewPostPayment(String post_code) {

		List<Map<String, String>> postPayment = mapper.getEditRecruit(post_code);
		
		return postPayment;
	}

}
