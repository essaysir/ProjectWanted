package com.spring.wanted.ProjectWanted.company.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.spring.wanted.ProjectWanted.company.model.InterCompanyDAO_2;
import com.spring.wanted.ProjectWanted.post.model.PostVO;

@Service
public class CompanyService_2 implements InterCompanyService_2 {
	
	private final InterCompanyDAO_2 cdao;
	
	@Autowired
	public CompanyService_2(InterCompanyDAO_2 cdao) {
		this.cdao = cdao;
	}
	
	// job_select에필요한 값 가져오기	
	@Override
	public List<Map<String, String>> getJobList() {

		List<Map<String, String>> JobList = cdao.getJobList();
		
		return JobList;
	}
	
	// job_select에 따라 해당되는 duty_select 가져오기
	@Override
	public List<Map<String, String>> getDutyList(String jobCode) {

		List<Map<String, String>> dutyList = cdao.getDutyList(jobCode);
		
		return dutyList;
	}
	
	// TBL_POST에 등록하기
	@Override
	public void insertRecruit(PostVO postvo) {
		cdao.insertRecruit(postvo);
		
	}
	
	@Override
	public void insertRecruitSkil(PostVO postvo, List<String> techcode) {
		cdao.insertRecruitSkil(postvo, techcode);
		
	}
	
	// 채용공고관리페이지 띄우기
	@Override
	public int getTotalPost(String id) {
		int totalPost = cdao.getTotalPost(id);
		
		return totalPost;
	}
	
	//ajax로 Post호출하기
	@Override
	public String getPost(Map<String, String> paraMap) {
		
		String fk_company_id = paraMap.get("fk_company_id");
		String start = paraMap.get("start");
		String len = paraMap.get("len");
		
		String end = String.valueOf(Integer.parseInt(start)+ Integer.parseInt(len)-1);
		
		paraMap.put("fk_company_id", fk_company_id);
		paraMap.put("start", start);
		paraMap.put("end", end);
		
		
		List<Map<String, String>> postList = cdao.getPost(paraMap);
		
		
		Gson gson = new Gson();
		String result = gson.toJson(postList);
		
		return result;
	}
	
	//ajax로 수정페이지 띄우기
	@Override
	public List<Map<String, String>> getEditRecruit(String post_code) {
		
		List<Map<String, String>> editRecruit = cdao.getEditRecruit(post_code);
		
		return editRecruit;
	}
	
	// 수정한거 등록하기
	@Override
	public void updateRecruit(PostVO postvo) {
		cdao.updateRecruit(postvo);
	}
	
	// 기간만료 공고 삭제하기 
	@Override
	public int deleteRecruit(String post_code) {
		
		int n = cdao.deleteRecruit(post_code);
		
	    return n;
	}
	
	// 공고 중단 하기 
	@Override
	public int stopRecruit(String post_code) {
		
		int n = cdao.stopRecruit(post_code);
		
	    return n;
	}
	
	//ajax로 결제 상세페이지 띄우기
	@Override
	public List<Map<String, String>> viewPostPayment(String post_code) {
		
		List<Map<String, String>> postPayment = cdao.viewPostPayment(post_code);
		
		return postPayment;
	}
	
	//결제완료 후 pay_status update하기
	@Override
	public void updatePostPayment(String post_code) {

		cdao.updatePostPayment(post_code);
		
	}
	
	//ajax로 연장상세페이지 띄우기
	@Override
	public List<Map<String, String>> viewExtendPost(String post_code) {

		List<Map<String, String>> extendPost = cdao.viewExtendPost(post_code);
		
		return extendPost;
	}
	
	//결제완료 후 deadline update하기
	@Override
	public void updateExtendPost(String post_code) {

		cdao.updateExtendPost(post_code);
		
	}

}
