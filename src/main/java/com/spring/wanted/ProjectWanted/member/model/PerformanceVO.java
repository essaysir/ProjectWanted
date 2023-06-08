package com.spring.wanted.ProjectWanted.member.model;

import lombok.Data;

@Data
public class PerformanceVO {

	private int perform_code;
    private int fk_career_code;
    private int fk_resume_code;
    private String perform_content;
    private String start_date_detail;
    private String end_date_detail;
    
}
