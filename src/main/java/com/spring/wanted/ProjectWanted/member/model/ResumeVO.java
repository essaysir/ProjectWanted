package com.spring.wanted.ProjectWanted.member.model;

import java.util.List;

import lombok.Data;

@Data
public class ResumeVO {
    
	private int resume_Code;
    private String fk_UserId;
    private int isComplete;
    private String uploadFile;
    private String subject;
    private String introduce;
    private String uploadLink;
    private String skill;

    // join insert
    
    private List<LanguageVO> languagevoList; // Language 테이블에 대응하는 VO 리스트
    private List<RewardVO> rewardvoList; // Reward 테이블에 대응하는 VO 리스트
    private List<SchoolVO> schoolvoList; // School 테이블에 대응하는 VO 리스트
    private List<CareerVO> careervoList; // Career 테이블에 대응하는 VO 리스트
    private List<MemberTechVO> member_TechvoList; // MemberTech 테이블에 대응하는 VO 리스트
    private List<PerformanceVO> performancevoList; // MemberTech 테이블에 대응하는 VO 리스트
}

