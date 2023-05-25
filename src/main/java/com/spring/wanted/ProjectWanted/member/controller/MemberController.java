package com.spring.wanted.ProjectWanted.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.wanted.ProjectWanted.member.mapper.InterMemberMapper;

@Controller
public class MemberController {
	
	@Autowired
	InterMemberMapper mapper ;
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home2(HttpServletRequest request) {
		
		// int n = mapper.test_insert();
		String tagname  = mapper.test_select();
		request.setAttribute("tagname", tagname);
		
        // System.out.println(n);
		return "home.tiles1";
    }
}
