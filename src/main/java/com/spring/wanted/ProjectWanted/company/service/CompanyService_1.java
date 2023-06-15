package com.spring.wanted.ProjectWanted.company.service;

import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.company.model.InterCompanyDAO_1;
import com.spring.wanted.ProjectWanted.member.model.CareerVO;
import com.spring.wanted.ProjectWanted.member.model.LanguageVO;
import com.spring.wanted.ProjectWanted.member.model.MemberTechVO;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;
import com.spring.wanted.ProjectWanted.member.model.PerformanceVO;
import com.spring.wanted.ProjectWanted.member.model.ResumeVO;
import com.spring.wanted.ProjectWanted.member.model.RewardVO;
import com.spring.wanted.ProjectWanted.member.model.SchoolVO;

@Service
public class CompanyService_1 implements InterCompanyService_1 {
	
	private final InterCompanyDAO_1 cdao;
	
	@Autowired
	public CompanyService_1(InterCompanyDAO_1 cdao) {
		this.cdao = cdao;
	}
	
	
	// 회사 지원자List 불러오기
	@Override
	public List<Map<String, String>> candidateList(Map<String, String> paraMap) {
		List<Map<String, String>> candidateList = cdao.getcandidateList(paraMap);
		return candidateList;
	}
	
	
	// 지원자List 페이징 위한 게시글 전체개수
	@Override
	public int getTotalCount(Map<String, String> paraMap) {
		int n = cdao.getTotalCount(paraMap);
		return n;
	}

	
	// 지원자List with 검색 및 페이징
	@Override 
	public List<Map<String, String>> listhSearchWithPaging(Map<String, String> paraMap) {
		List<Map<String, String>> candidateList = cdao.listSearchWithPaging(paraMap); 
		return candidateList;
	}
	

	// 검색 자동완성
	@Override
	public List<Map<String, String>> wordSearchShow(Map<String, String> paraMap) {
		List<Map<String, String>> wordSearchShow = cdao.wordList(paraMap);
		return wordSearchShow;
	}


	// ==== 지원자 이력서 데이터 가져오기 ==== //
	@Override
	public int getResumeCode(String subject) {
		int resumeCode = cdao.getResumeCode(subject);
		return resumeCode;
	}
	
	
	@Override
	public ResumeVO getApplyResume(int resumeCode) {
		ResumeVO resumeContent = cdao.getApplyResume(resumeCode);
		return resumeContent;
	}
	
	
	@Override
	public List<CareerVO> getCareer(int resumeCode) {
		List<CareerVO> career = cdao.getCareer(resumeCode);
		return career;
	}
	
	
	@Override
	public List<LanguageVO> getLanguage(int resumeCode) {
		List<LanguageVO> language = cdao.getLanguage(resumeCode);
		return language;
	}
	
	
	@Override
	public List<RewardVO> getReward(int resumeCode) {
		List<RewardVO> reward = cdao.getReward(resumeCode);
		return reward;
	}
	
	
	@Override
	public List<SchoolVO> getSchool(int resumeCode) {
		List<SchoolVO> school = cdao.getSchool(resumeCode);
		return school;
	}


	@Override
	public List<PerformanceVO> getPerformance(int resumeCode) {
		List<PerformanceVO> performance = cdao.getPerformance(resumeCode);
		return performance;
	}


	@Override
	public List<MemberTechVO> getMemberTech(int resumeCode) {
		List<MemberTechVO> memberTech = cdao.getMemberTech(resumeCode);
		return memberTech;
	}








	
	
	
	
	


	



	




	





	
	
	
	
	

}
