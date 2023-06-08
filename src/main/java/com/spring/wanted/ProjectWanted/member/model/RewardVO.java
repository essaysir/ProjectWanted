package com.spring.wanted.ProjectWanted.member.model;

import lombok.Data;

@Data
public class RewardVO {

	private int reward_Code;
    private int fk_Resume_Code;
    private String reward; // 활동명
    private String content; // 세부사항
    private String reward_Date;
}
