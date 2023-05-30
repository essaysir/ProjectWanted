package com.spring.wanted.ProjectWanted.post.model;

import lombok.Data;

@Data
public class PostVO {
	
	private int post_code;
	private	String fk_company_id;
	private int fk_duty_code;
	private String subject;
	private String career;
	private String info;
	private String mainduty;
	private String quality;
	private String image;
	private String createday;
	private String deadline;
	
}
