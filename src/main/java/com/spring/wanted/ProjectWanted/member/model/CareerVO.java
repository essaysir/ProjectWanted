package com.spring.wanted.ProjectWanted.member.model;

import java.util.List;

import lombok.Data;

@Data
public class CareerVO {

	private int career_code;
    private int fk_resume_code;
    private String company;
    private String department;
    private String start_date;
    private String end_date;
    
    private List<PerformanceVO> performancevoList;
    
}
