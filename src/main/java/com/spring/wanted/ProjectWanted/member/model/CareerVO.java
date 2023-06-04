package com.spring.wanted.ProjectWanted.member.model;

import lombok.Data;

@Data
public class CareerVO { 
    
	private int careerCode;
    private int fkResumeCode;
    private String company;
    private String department;
    private String content;
    private String startDate;
    private String endDate;
}

