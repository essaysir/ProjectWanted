package com.spring.wanted.ProjectWanted.member.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.wanted.ProjectWanted.member.service.InterMemberService3;

@RequestMapping(value="/wanted/member")
@Controller
public class MemberController3 {
	
	private final InterMemberService3 service;
	
	@Autowired
	public MemberController3(InterMemberService3 service) {
		this.service = service;
	}
		
		// 멤버 정보가져오기
		@GetMapping(value="/memberInfo")
		public String getMemberInfo(HttpServletRequest request) {
			
			String userid = "leess";
			
			List<Map<String,String>> memberinfo = service.getMemberInfo(userid);
			
			request.setAttribute("memberinfo", memberinfo);
			
			return "member/memberInfo.tiles1";
			
		}
		
		// 이름업데이트하기
		@ResponseBody
		@GetMapping(value="/nameUpdate", produces = "text/plain;charset=UTF-8")
		public String nameUpdate(@RequestParam Map<String, String> paraMap){
						
			int n = service.nameUpdate(paraMap);
			
		    if (n==1) {
		        return "success";
		    } else {
		        return "fail";
		    }

		}
		
		// 닉네임업데이트하기
		@ResponseBody
		@GetMapping(value="/nickUpdate", produces = "text/plain;charset=UTF-8")
		public String nickUpdate(@RequestParam Map<String, String> paraMap){
						
			int n = service.nickUpdate(paraMap); 
			
		    if (n==1) {
		        return "success";
		    } else {
		        return "fail";
		    }

		}
		
		//비밀번호 일치 여부
		@ResponseBody
		@GetMapping(value="/pwdCheck", produces = "text/plain;charset=UTF-8")
		public String pwdCheck(HttpServletRequest request, @RequestParam Map<String, String> paraMap){
			
			String inputPwd = paraMap.get("inputPwd");
			
			String userid = paraMap.get("userid");
			
			String passwd = service.getPasswd(userid);
						
		    if (passwd.equals(inputPwd)) {
		        return "success";
		    } else {
		        return "fail";		        
		    }

		}
		
		// 비밀번호업데이트하기
		@ResponseBody
		@GetMapping(value="/passwdUpdate", produces = "text/plain;charset=UTF-8")
		public String passwdUpdate(@RequestParam Map<String, String> paraMap){
						
			int n = service.passwdUpdate(paraMap); 
			
		    if (n==1) {
		        return "success";
		    } else {
		        return "fail";
		    }

		}
	
	
}
