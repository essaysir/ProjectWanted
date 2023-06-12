package com.spring.wanted.ProjectWanted.member.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import net.nurigo.sdk.message.response.SingleMessageSentResponse;

@Data
@AllArgsConstructor
public class CustomResponse {
	private int RandomNo;
	private SingleMessageSentResponse response ;
	
}
