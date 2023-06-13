package com.spring.wanted.ProjectWanted.member.controller;

import java.util.Random;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.wanted.ProjectWanted.member.model.CustomResponse;

import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.request.SingleMessageSendingRequest;
import net.nurigo.sdk.message.response.SingleMessageSentResponse;
import net.nurigo.sdk.message.service.DefaultMessageService;

@RestController
public class SMSSendController {

	    final DefaultMessageService messageService;

	    public SMSSendController() {
	        // 반드시 계정 내 등록된 유효한 API 키, API Secret Key를 입력해주셔야 합니다!
	        this.messageService = NurigoApp.INSTANCE.initialize("coolsms API 아이디","coolsms API 비밀번호", "https://api.coolsms.co.kr");
	    }

	    /**
	     * 단일 메시지 발송 예제
	     */
	    
	    @PostMapping("/send-one")
	    public CustomResponse sendOne(@RequestParam String mobile) {
	    	System.out.println(mobile);
	    	Random random = new Random();
	        int RandomNo = random.nextInt(900000) + 100000; // 100000부터 999999까지의 랜덤한 숫자 생성

	    	Message message = new Message();
	        // 발신번호 및 수신번호는 반드시 01012345678 형태로 입력되어야 합니다.
	        message.setFrom("보내는 사람 번호");
	        message.setTo(mobile);
	        message.setText("[인증번호 : "+ RandomNo + "] 원티드 인증번호입니다.");
	        
	        SingleMessageSentResponse response = this.messageService.sendOne(new SingleMessageSendingRequest(message));
	       
	        System.out.println(response);
	        // Create a CustomResponse object with the desired additional information
	        
	        CustomResponse customResponse = new CustomResponse(RandomNo, response);

	        return customResponse;
	    }



	
}
