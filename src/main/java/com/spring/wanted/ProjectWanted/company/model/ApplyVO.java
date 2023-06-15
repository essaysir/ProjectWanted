package com.spring.wanted.ProjectWanted.company.model;

import lombok.Data;

@Data
public class ApplyVO {

	private int apply_code;
	private int fk_resume_code;
	private int fk_post_code;
	private int applydate;
	private int status;
	
	
}
