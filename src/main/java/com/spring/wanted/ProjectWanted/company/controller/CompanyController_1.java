package com.spring.wanted.ProjectWanted.company.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.wanted.ProjectWanted.company.model.CompanyVO;
import com.spring.wanted.ProjectWanted.company.service.InterCompanyService_1;
import com.spring.wanted.ProjectWanted.member.model.CareerVO;
import com.spring.wanted.ProjectWanted.member.model.LanguageVO;
import com.spring.wanted.ProjectWanted.member.model.MemberTechVO;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;
import com.spring.wanted.ProjectWanted.member.model.PerformanceVO;
import com.spring.wanted.ProjectWanted.member.model.ResumeVO;
import com.spring.wanted.ProjectWanted.member.model.RewardVO;
import com.spring.wanted.ProjectWanted.member.model.SchoolVO;

@RequestMapping("/wanted/company")
@Controller
public class CompanyController_1 {

	@Autowired  
	private InterCompanyService_1 service;
	
	
	// 이력서소개 페이지
	@GetMapping(value = "/resume_info")
	public String resume_info() {
		return "resume/resume_info.tiles1" ;
	}
	
	
	// 이력서List 페이지
	@GetMapping(value = "/resume_list")
	public String resume_list() {
		return "resume/resume_list.tiles3" ;
	}
	

	// 회사 지원자List 페이지
	@GetMapping("/candidateList")
	public String viewCandidateList() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CompanyVO cvo = (CompanyVO)authentication.getPrincipal();
		String company_id = cvo.getCompany_id();
		return "company/company_candidateList.tiles2";
	}
	
	
	
	// 회사 지원자List 불러오기
	@GetMapping(value = "/getCandidateList")
	public ModelAndView candidateList(HttpServletRequest request, Model model,
								@RequestParam(value="searchType", required = false) String searchType,
								@RequestParam(value="searchWord", required = false) String searchWord
								){
		 System.out.println("searchType : " + searchType);
		// System.out.println("searchWord : " + searchWord);
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CompanyVO cvo = (CompanyVO)authentication.getPrincipal();
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, String> paraMap = new HashMap<>();
		paraMap.put("fk_company_id", cvo.getCompany_id());
		String status = request.getParameter("status");

		String currentPage =request.getParameter("currentShowPageNo");
		
		paraMap.put("status", status);

		if(searchType == null || (!"subject".equals(searchType) && !"name".equals(searchType) )) {
			searchType = "";
		}
		
		if(searchWord == null || "".equals(searchWord) || searchWord.trim().isEmpty() ) {
			searchWord = "";
		}
		if(currentPage == null) {
			currentPage = "1";
		}
		
		paraMap.put("searchType", searchType);
		paraMap.put("searchWord", searchWord);

		int totalCount = service.getTotalCount(paraMap);       // 총 게시물 건수
        int sizePerPage = 7;       							   // 한 페이지당 보여줄 게시물 건수 
        int currentShowPageNo = Integer.parseInt(currentPage); 					// 현재 보여주는 페이지번호로서, 초기치로는 1페이지로 설정함.
        int totalPage = 0;         							   // 총 페이지수(웹브라우저상에서 보여줄 총 페이지 개수, 페이지바)
        
        totalPage = (int) Math.ceil((double)totalCount/sizePerPage);
        	
		if(currentShowPageNo < 1 || currentShowPageNo > totalPage) {
			currentShowPageNo = 1;
		}
     
        int startRno = ((currentShowPageNo - 1) * sizePerPage) + 1;
        int endRno = startRno + sizePerPage - 1;

        paraMap.put("startRno", String.valueOf(startRno));
        paraMap.put("endRno", String.valueOf(endRno));
        
        System.out.println(paraMap);
        List<Map<String,String>> candidateList = service.listhSearchWithPaging(paraMap);
 
        // 검색어 유지
        if (!"".equals(searchType) || !"".equals(searchWord)) {
            model.addAttribute("searchType", searchType);
            model.addAttribute("searchWord", searchWord);
        }
        
        // 페이지바
        int blockSize = 5;
        int loop = 1;
        int pageNo = ((currentShowPageNo - 1)/blockSize) * blockSize + 1;
        
	    request.setAttribute("currentShowPageNo", currentShowPageNo);
	    request.setAttribute("pageNo", pageNo);     
	    request.setAttribute("status", status);
	    request.setAttribute("totalPage", totalPage);   
	    request.setAttribute("startRno", startRno);   
	    request.setAttribute("endRno", endRno);      
	    request.setAttribute("candidateList", candidateList); // 요건 리스트
	    
	    Map<String, Integer> paraMap2 = new HashMap<>();
	    paraMap2.put("currentShowPageNo", currentShowPageNo);
	    paraMap2.put("pageNo", pageNo);
	    paraMap2.put("totalPage", totalPage);
	    paraMap2.put("startRno", startRno);
	    paraMap2.put("endRno", endRno);
	    
	    mav.addObject("paraMap2",paraMap2);
	    mav.addObject("candidateList", candidateList);
	    mav.addObject("searchWord" , searchWord); 
	    mav.addObject("searchType" , searchType);
	    System.out.println(" 확인용 searchWord: "+searchWord);
	    System.out.println(" 확인용 searchType: "+searchType);
	    
	    mav.setViewName("tiles2/company/content/company_candidateList_detail");
	    
	    System.out.println(candidateList);
    
		return mav;
	}

/*
	@GetMapping(value = "/wanted/wordSearchShow")
	@ResponseBody
	public List<Map<String, String>> wordSearchShow(@RequestParam("searchType") String searchType,
	                                                @RequestParam("searchWord") String searchWord) {

	    Map<String, String> paraMap = new HashMap<>();
	    paraMap.put("searchType", searchType);
	    paraMap.put("searchWord", searchWord);

	    List<Map<String, String>> wordSearchShow = service.wordSearchShow(paraMap);

	    return wordSearchShow;
	}
*/
	

	// 지원자 이력서 페이지 
	@GetMapping(value = "/resume")
	public String viewResume(HttpServletRequest request, Model model,
							 @RequestParam("subject") String subject){
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CompanyVO cvo = (CompanyVO)authentication.getPrincipal();
		String company_id = cvo.getCompany_id();

		int resumeCode = service.getResumeCode(subject);
		System.out.println(" 확인용 resumeCode : " + resumeCode);
		int fk_resumeCode = resumeCode;
		
		ResumeVO resume = service.getApplyResume(resumeCode);
		List<CareerVO> career = service.getCareer(resumeCode);
		List<RewardVO> reward = service.getReward(resumeCode);
		List<LanguageVO> language = service.getLanguage(resumeCode);
		List<SchoolVO> school = service.getSchool(resumeCode);
		List<PerformanceVO> performance = service.getPerformance(resumeCode);
		List<MemberTechVO> memberTech = service.getMemberTech(resumeCode);
		
		System.out.println("resume : "+ resume );
		System.out.println("career : "+ career );
		System.out.println(" reward : "+ reward );
		System.out.println(" language : "+ language );
		System.out.println("school  : "+ school );
		System.out.println(" performance : "+ performance );
		System.out.println(" memberTech : "+ memberTech );
		
		
//		String Fk_userid =resume.getFk_userid();		
//		System.out.println("userid" + userid);

		
		model.addAttribute("resume", resume);
		model.addAttribute("career", career);
		model.addAttribute("reward", reward);
		model.addAttribute("language", language);
		model.addAttribute("school", school);
		model.addAttribute("performance", performance);
		model.addAttribute("memberTech", memberTech);
		
		return "company/candidateResume.tiles2";
	}





	
	
	
	
	
	
	
	
	
	
	
	// 회사 지원통계(차트) 페이지
	@GetMapping(value = "/chart")
	public String company_chart(){
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CompanyVO cvo = (CompanyVO)authentication.getPrincipal();
		String company_id = cvo.getCompany_id();
		return "company/company_chart.tiles2";
	}
	

	
	
	
}
