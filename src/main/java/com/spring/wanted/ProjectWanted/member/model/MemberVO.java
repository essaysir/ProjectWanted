package com.spring.wanted.ProjectWanted.member.model;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MemberVO {

		private String userid ; 
		private String pwd ; 
		private String name ; 
		private String nickname ; 
		private String mobile ;
		private String profile_image ;
		private int resume_count ;
	
		private MultipartFile attach;
	

}
