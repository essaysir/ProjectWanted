package com.spring.wanted.ProjectWanted.member.model;

import java.util.List;

import lombok.Data;

@Data
public class ResumeVO {
    
	private int resume_code;
    private String fk_userid;
    private int iscomplete;
    private String subject;
    private String introduce;
    private String uploadlink;

    // join insert
    
    private List<LanguageVO> languagevoList; // Language 테이블에 대응하는 VO 리스트
    private List<RewardVO> rewardvoList; // Reward 테이블에 대응하는 VO 리스트
    private List<SchoolVO> schoolvoList; // School 테이블에 대응하는 VO 리스트
    private List<CareerVO> careervoList; // Career 테이블에 대응하는 VO 리스트
    private List<MemberTechVO> member_techvoList; // MemberTech 테이블에 대응하는 VO 리스트
    private List<PerformanceVO> performancevoList; // MemberTech 테이블에 대응하는 VO 리스트
}

