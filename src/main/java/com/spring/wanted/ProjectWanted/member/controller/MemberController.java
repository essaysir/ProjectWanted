package com.spring.wanted.ProjectWanted.member.controller;

import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.wanted.ProjectWanted.member.service.InterMemberService;


@Controller
public class MemberController {
		
	@Autowired
	private InterMemberService service ;
	
	// 헤더에 포함되어 있는 TBL_DUTY , 와 JOB 불러오기
		@ResponseBody
		@GetMapping(value="/getHeader" ,  produces = "text/plain;charset=UTF-8")
		public String  getDuty() {
			List<String> JobList = service.getJob();
			List<String> dutyList = service.getDuty();
			// List<String> 을 써야하는 이유 : String[] 을 사용할 수 없는 이유는
			// 고정된 크기의 배열로 요소의 개수를 변경할 수 없기 때문입니다.
			// 반면에 , 데이터 크기의 변동이 예상되거나 동적인 조작이 필요한 경우이기에
			// List<String> 타입이 현재에 더 적합하다고 할 수 있다.
 			JSONObject jsonObj = new JSONObject() ;
			jsonObj.put("JobList", JobList);
			jsonObj.put("dutyList" , dutyList) ;
			return jsonObj.toString() ;
		}
		
		//  회원 가입 페이지
		@GetMapping(value="/wanted/register")
		public String register() {
			
			
			return "/member/mypage.tiles1";
		}

	
	
	
	
	
	
	
	
	
}
