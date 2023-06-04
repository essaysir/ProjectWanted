package com.spring.wanted.ProjectWanted.member.model;

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
}

