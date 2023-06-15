package com.spring.wanted.ProjectWanted.company.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.spring.wanted.ProjectWanted.member.model.CareerVO;
import com.spring.wanted.ProjectWanted.member.model.LanguageVO;
import com.spring.wanted.ProjectWanted.member.model.MemberTechVO;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;
import com.spring.wanted.ProjectWanted.member.model.PerformanceVO;
import com.spring.wanted.ProjectWanted.member.model.ResumeVO;
import com.spring.wanted.ProjectWanted.member.model.RewardVO;
import com.spring.wanted.ProjectWanted.member.model.SchoolVO;

@Mapper
public interface InterCompanyMapper_1 {
	
	// 회사 지원자List 불러오기
	List<Map<String, String>> getcandidateList(Map<String, String> paraMap);

	
	// 지원자List 페이징 위한
	int getTotalCount(Map<String, String> paraMap);


	// 검색기능
	List<Map<String, String>> listSearchWithPaging(Map<String, String> paraMap);

	List<Map<String, String>> wordList(Map<String, String> paraMap);


	// ==== 지원자 이력서 가져오기 ==== //
	int getResumeCode(String subject);	// 이력서 코드
	
	ResumeVO getApplyResume(int resumeCode);	// 이력서 내용

	List<CareerVO> getCareer(int resumeCode);

	List<LanguageVO> getLanguage(int resumeCode);

	List<RewardVO> getReward(int resumeCode);

	List<SchoolVO> getSchool(int resumeCode);

	List<PerformanceVO> getPerformance(int resumeCode);

	List<MemberTechVO> getMemberTech(int resumeCode);
	
	






	










	
	
	

}
