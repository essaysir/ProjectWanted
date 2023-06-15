package com.spring.wanted.ProjectWanted.company.service;

import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;

import com.spring.wanted.ProjectWanted.member.model.CareerVO;
import com.spring.wanted.ProjectWanted.member.model.LanguageVO;
import com.spring.wanted.ProjectWanted.member.model.MemberTechVO;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;
import com.spring.wanted.ProjectWanted.member.model.PerformanceVO;
import com.spring.wanted.ProjectWanted.member.model.ResumeVO;
import com.spring.wanted.ProjectWanted.member.model.RewardVO;
import com.spring.wanted.ProjectWanted.member.model.SchoolVO;

public interface InterCompanyService_1 {

	// 회사 지원자List 불러오기
	List<Map<String, String>> candidateList(Map<String, String> paraMap);

	// 지원자List 페이징
	int getTotalCount(Map<String, String> paraMap);
	
	List<Map<String, String>> listhSearchWithPaging(Map<String, String> paraMap);

	// 검색
	List<Map<String, String>> wordSearchShow(Map<String, String> paraMap);

	// ==== 지원자 이력서 데이터 가져오기 ==== //
	int getResumeCode(String subject);
	
	ResumeVO getApplyResume(int resumeCode);
	
	List<CareerVO> getCareer(int resumeCode);
	
	List<LanguageVO> getLanguage(int resumeCode);
	
	List<RewardVO> getReward(int resumeCode);

	List<SchoolVO> getSchool(int resumeCode);

	List<PerformanceVO> getPerformance(int resumeCode);

	List<MemberTechVO> getMemberTech(int resumeCode);



	




	


	

	






	

	

	


	

	
	
}
