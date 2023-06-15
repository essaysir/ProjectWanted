package com.spring.wanted.ProjectWanted.member.mapper;


import java.util.List;

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

	int insertLanguage(LanguageVO languageVO);

	int insertReward(RewardVO rewardVO);

	int insertSchool(SchoolVO schoolVO);

	int insertCareer(CareerVO careerVO);

	int insertMemberTech(MemberTechVO memberTechVO);

	int insertPerformance(PerformanceVO performVO);




	 
	
}
