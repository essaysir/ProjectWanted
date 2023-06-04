package com.spring.wanted.ProjectWanted.member.model;

import lombok.Data;

@Data
public class RewardVO {
	
    private int reward_Code;
    private int fk_Resume_Code;
    private String reward;
    private String content;
    private String reward_Date;
}