package com.spring.wanted.ProjectWanted.member.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.wanted.ProjectWanted.member.model.MemberVO;
import com.spring.wanted.ProjectWanted.member.model.ResumeVO;
import com.spring.wanted.ProjectWanted.member.service.InterMemberService3;

@RequestMapping(value="/wanted/member")
@Controller
public class MemberController3 {
	
	private final InterMemberService3 service;
	
	private final PasswordEncoder passwordEncoder ;
	@Autowired
	public MemberController3(InterMemberService3 service , PasswordEncoder passwordEncoder) {
		this.service = service;
		this.passwordEncoder = passwordEncoder ;
	}
		
		// 멤버 정보가져오기
		@GetMapping(value="/memberInfo")
		public String getMemberInfo(HttpServletRequest request) {
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			MemberVO mvo = (MemberVO)authentication.getPrincipal();
			String userid = mvo.getUserid();
						
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
			
			  if ( passwordEncoder.matches(inputPwd, passwd )) {
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
		
		// 프로필사진 변경
		@ResponseBody
		@PostMapping(value = "/profileImageUpdate", produces = "text/plain;charset=UTF-8")		
		public String profileImageUpdate(MemberVO membervo, MultipartHttpServletRequest mrequest) {
		    // membervo를 사용하여 필요한 데이터 처리

		    // attach 파일을 사용하여 프로필 사진 업데이트 처리
			int n = service.profileImageUpdate(membervo, mrequest);

			if (n==1) {
		        return "success";
		    } else {
		        return "fail";
		    }
		}
		
		@GetMapping(value = "/memberExit")
		public String memberExit(HttpServletRequest request) {
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			MemberVO mvo = (MemberVO)authentication.getPrincipal();
			String userid = mvo.getUserid();
			
			List<Map<String,String>> memberinfo = service.getMemberInfo(userid);
			
			request.setAttribute("memberinfo", memberinfo);
			
			return "member/memberExit.tiles1";
		}
		
		// 회원탈퇴
		@ResponseBody
		@PostMapping(value = "/memberExit", produces = "text/plain;charset=UTF-8")		
		public String memberExit(@RequestParam("userid") String userid, HttpServletRequest request, HttpServletResponse response) {
		    
			int n = service.memberExit(userid, request);

			if (n==1) {
				Authentication authentication = SecurityContextHolder.getContext().getAuthentication() ;
				if  ( authentication != null ) {
					new SecurityContextLogoutHandler().logout(request, response, authentication);
				}
		        return "success";
		    } else {
		        return "fail";
		    }
		}
		
		// 채용공고관리페이지 띄우기
		@GetMapping(value="/myResume")
		public String getMyresume(HttpServletRequest request) {
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			MemberVO mvo = (MemberVO)authentication.getPrincipal();
			String fk_userid = mvo.getUserid();
						
			List<ResumeVO> resumeList = service.getMyresume(fk_userid);
			System.out.println("확인용 resume :" +resumeList);
			request.setAttribute("resumeList", resumeList);
			//return "redirect:/wanted"; 
			return "member/resume_list.tiles1";
		}
		
	
	
}
