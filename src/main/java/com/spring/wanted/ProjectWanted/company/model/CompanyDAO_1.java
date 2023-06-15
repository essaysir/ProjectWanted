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
	public ResumeVO getApplyResume(int resumeCode) {
		ResumeVO resumeContent = mapper.getApplyResume(resumeCode);
		return resumeContent;
	}
	@Override
	public List<CareerVO> getCareer(int resumeCode) {
		List<CareerVO> career = mapper.getCareer(resumeCode);
		return career;
	}
	@Override
	public List<LanguageVO> getLanguage(int resumeCode) {
		List<LanguageVO> language = mapper.getLanguage(resumeCode);
		return language;
	}
	@Override
	public List<RewardVO> getReward(int resumeCode) {
		List<RewardVO> reward = mapper.getReward(resumeCode);
		return reward;
	}


	@Override
	public List<SchoolVO> getSchool(int resumeCode) {
		List<SchoolVO> school = mapper.getSchool(resumeCode);
		return school;
	}


	@Override
	public List<PerformanceVO> getPerformance(int resumeCode) {
		List<PerformanceVO> performance = mapper.getPerformance(resumeCode);
		return performance;
	}


	@Override
	public List<MemberTechVO> getMemberTech(int resumeCode) {
		List<MemberTechVO> memberTech = mapper.getMemberTech(resumeCode);
		return memberTech;
	}


	@Override
	public ApplyVO getStatus(int resumeCode) {
		ApplyVO status = mapper.getStatus(resumeCode);
		return status;
	}








	



	


	

}
