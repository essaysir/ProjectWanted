package com.spring.wanted.ProjectWanted.company.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.spring.wanted.ProjectWanted.company.mapper.InterCompanyMapper_1;
import com.spring.wanted.ProjectWanted.member.model.CareerVO;
import com.spring.wanted.ProjectWanted.member.model.LanguageVO;
import com.spring.wanted.ProjectWanted.member.model.MemberTechVO;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;
import com.spring.wanted.ProjectWanted.member.model.PerformanceVO;
import com.spring.wanted.ProjectWanted.member.model.ResumeVO;
import com.spring.wanted.ProjectWanted.member.model.RewardVO;
import com.spring.wanted.ProjectWanted.member.model.SchoolVO;

@Component
@Repository
public class CompanyDAO_1 implements InterCompanyDAO_1 {
	
	private final InterCompanyMapper_1 mapper;
	
	@Autowired
	public CompanyDAO_1(InterCompanyMapper_1 mapper) {
		this.mapper = mapper;
	}

	
	// 회사 지원자List 불러오기
	@Override
	public List<Map<String, String>> getcandidateList(Map<String, String> paraMap) {
		List<Map<String, String>> candidateList = mapper.getcandidateList(paraMap);
		return candidateList;
	}

	
	// 지원자List 페이징 위한
	@Override
	public int getTotalCount(Map<String, String> paraMap) {
		int n = mapper.getTotalCount(paraMap);
		return n;
	}
	
	
	// 검색
	@Override
	public List<Map<String, String>> listSearchWithPaging(Map<String, String> paraMap) {
		List<Map<String, String>> candidateList = mapper.listSearchWithPaging(paraMap);
		return candidateList;
	}
	
	
	@Override
	public List<Map<String, String>> wordList(Map<String, String> paraMap) {
		List<Map<String, String>> wordSearchShow = mapper.wordList(paraMap);
		return wordSearchShow;
	}


	// ==== 지원자 이력서 데이터 가져오기 ==== //
	// 이력서코드
	@Override
	public int getResumeCode(String subject) {
		int resumeCode = mapper.getResumeCode(subject);
		return resumeCode;
	}
	
	@Override
	public int getApplyCode(int resumeCode) {
		System.out.println("22222222222");
		int applyCode=0;
		try {
			applyCode = mapper.getApplyCode(resumeCode);
		}catch(NullPointerException e) {
			
		}
		System.out.println("33333333");
		return applyCode;
	}

	@Override
	public ResumeVO getApplyResume(int resumeCode, int applyCode) {
		ResumeVO resumeContent = mapper.getApplyResume(resumeCode, applyCode);
		return resumeContent;
	}
	
	@Override
	public List<CareerVO> getCareer(int resumeCode, int applyCode) {
		List<CareerVO> career = mapper.getCareer(resumeCode , applyCode);
		return career;
	}
	
	@Override
	public List<LanguageVO> getLanguage(int resumeCode, int applyCode) {
		List<LanguageVO> language = mapper.getLanguage(resumeCode , applyCode);
		return language;
	}
	
	@Override
	public List<RewardVO> getReward(int resumeCode, int applyCode) {
		List<RewardVO> reward = mapper.getReward(resumeCode , applyCode);
		return reward;
	}


	@Override
	public List<SchoolVO> getSchool(int resumeCode, int applyCode) {
		List<SchoolVO> school = mapper.getSchool(resumeCode , applyCode);
		return school;
	}


	@Override
	public List<PerformanceVO> getPerformance(int resumeCode, int applyCode) {
		List<PerformanceVO> performance = mapper.getPerformance(resumeCode , applyCode);
		return performance;
	}


	@Override
	public List<MemberTechVO> getMemberTech(int resumeCode, int applyCode) {
		List<MemberTechVO> memberTech = mapper.getMemberTech(resumeCode , applyCode);
		return memberTech;
	}


	@Override
	public ApplyVO getStatus(int resumeCode, int applyCode) {
		System.out.println( " 확인용 resumeCode : " + resumeCode);
		System.out.println( " 확인용 applyCode : " + applyCode);
		
		ApplyVO status = mapper.getStatus(resumeCode, applyCode);
		return status;
	}


	
	// 직군별 진행중 공고
	@Override
	public List<Map<String, String>> postCntByjob() {
		List<Map<String, String>> jobPercentageList = mapper.postCntByjob();
		return jobPercentageList;
	}
		
		
	// 차트만들기
	@Override
	public List<Map<String, String>> careerList(String jobName) {
		List<Map<String, String>> jobAndCareer = mapper.careerList(jobName);
		return jobAndCareer;
	}

	


	










	



	


	

}
