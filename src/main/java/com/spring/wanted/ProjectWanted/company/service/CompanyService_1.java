package com.spring.wanted.ProjectWanted.company.service;

import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.company.model.ApplyVO;
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
	public int getApplyCode(int resumeCode) {
		int applyCode = cdao.getApplyCode(resumeCode);
		return applyCode;
	}

	
	@Override
	public ResumeVO getApplyResume(int resumeCode, int applyCode) {
		ResumeVO resumeContent = cdao.getApplyResume(resumeCode, applyCode);
		return resumeContent;
	}
	
	
	@Override
	public List<CareerVO> getCareer(int resumeCode, int applyCode) {
		List<CareerVO> career = cdao.getCareer(resumeCode, applyCode);
		return career;
	}
	
	
	@Override
	public List<LanguageVO> getLanguage(int resumeCode, int applyCode) {
		List<LanguageVO> language = cdao.getLanguage(resumeCode, applyCode);
		return language;
	}
	
	
	@Override
	public List<RewardVO> getReward(int resumeCode, int applyCode) {
		List<RewardVO> reward = cdao.getReward(resumeCode, applyCode);
		return reward;
	}
	
	
	@Override
	public List<SchoolVO> getSchool(int resumeCode, int applyCode) {
		List<SchoolVO> school = cdao.getSchool(resumeCode, applyCode);
		return school;
	}


	@Override
	public List<PerformanceVO> getPerformance(int resumeCode, int applyCode) {
		List<PerformanceVO> performance = cdao.getPerformance(resumeCode, applyCode);
		return performance;
	}


	@Override
	public List<MemberTechVO> getMemberTech(int resumeCode, int applyCode) {
		List<MemberTechVO> memberTech = cdao.getMemberTech(resumeCode, applyCode);
		return memberTech;
	}


	@Override
	public ApplyVO getStatus(int resumeCode, int applyCode) {
		ApplyVO status = cdao.getStatus(resumeCode, applyCode);
		return status;
	}


	// 직군별 공고 개수
	@Override
	public List<Map<String, String>> postCntByjob() {
		List<Map<String, String>> jobPercentageList = cdao.postCntByjob();
		return jobPercentageList;
	}

	// 직군별 연차별 연봉평균 구하기
	@Override
	public List<Map<String, String>> careerList(String jobName) {
		List<Map<String, String>> jobAndCareer = cdao.careerList(jobName);
		return jobAndCareer;
	}













	
	
	
	
	


	



	




	





	
	
	
	
	

}
