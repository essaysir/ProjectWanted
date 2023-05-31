package com.spring.wanted.ProjectWanted.post.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PostController {

	@GetMapping(value = "/signup")
	   public String signup() {
	      return "/tiles1/member/signup" ;
	   }
	
}
