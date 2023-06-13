package com.spring.wanted.ProjectWanted.member.mapper;


import org.apache.ibatis.annotations.Mapper;

import com.spring.wanted.ProjectWanted.member.model.CareerVO;
import com.spring.wanted.ProjectWanted.member.model.LanguageVO;
import com.spring.wanted.ProjectWanted.member.model.MemberTechVO;
import com.spring.wanted.ProjectWanted.member.model.PerformanceVO;
import com.spring.wanted.ProjectWanted.member.model.ResumeVO;
import com.spring.wanted.ProjectWanted.member.model.RewardVO;
import com.spring.wanted.ProjectWanted.member.model.SchoolVO;

@Mapper
public interface InterMemberMapper2 {

	int insertResume(ResumeVO resumevo);

	void insertLanguage(LanguageVO languageVO);

	void insertReward(RewardVO rewardVO);

	void insertSchool(SchoolVO schoolVO);

	void insertCareer(CareerVO careerVO);

	void insertMemberTech(MemberTechVO memberTechVO);

	void insertPerformance(PerformanceVO performancevo);




	 
	
}
