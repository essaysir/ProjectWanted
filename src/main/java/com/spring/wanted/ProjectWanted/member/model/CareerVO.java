package com.spring.wanted.ProjectWanted.member.model;

import java.util.List;

import lombok.Data;

@Data
public class CareerVO {

	private int career_Code;
    private int fk_Resume_Code;
    private String company;
    private String department;
    private String start_Date;
    private String end_Date;
    
    private List<PerformanceVO> performancevoList;
    
}
