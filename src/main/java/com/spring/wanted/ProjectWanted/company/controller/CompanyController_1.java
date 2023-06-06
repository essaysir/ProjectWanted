package com.spring.wanted.ProjectWanted.company.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.wanted.ProjectWanted.company.service.InterCompanyService_1;

@RequestMapping("/wanted")
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
	@GetMapping("/company")
	public String viewCandidateList() {
		return "company/company_candidateList.tiles2";
	}
	
	
	// 회사 지원자List 불러오기
	//@ResponseBody 
	@GetMapping(value = "/getCandidateList", produces = "text/plain;charset=UTF-8")
	public String candidateList(HttpServletRequest request){
		//String viewName="company/company_candidateList.tiles2";

		String searchType = request.getParameter("searchType");
		String searchWord = request.getParameter("searchWord");
		String str_currentShowPageNo = request.getParameter("currentShowPageNo");
		
		Map<String, String> paraMap = new HashMap<>();
		String status = request.getParameter("status");
		paraMap.put("status", status);

		List<Map<String,String>> candidateList = service.candidateList(paraMap);
//			ModelAndView mav = new ModelAndView("tiles2/company/content/company_candidateList_detail");
//			mav.addObject("candidateList", candidateList);
		
		request.setAttribute("candidateList", candidateList);
		
		if(searchType == null || (!"subject".equals(searchType) && !"name".equals(searchType) )) {
			searchType = "";
		}
		
		if(searchWord == null || "".equals(searchWord) || searchWord.trim().isEmpty() ) {
			searchWord = "";
		}
		
		paraMap.put("searchType", searchType);
		paraMap.put("searchWord", searchWord);

		
		int totalCount = 0;        // 총 게시물 건수
        int sizePerPage = 3;       // 한 페이지당 보여줄 게시물 건수 
        int currentShowPageNo = 0; // 현재 보여주는 페이지번호로서, 초기치로는 1페이지로 설정함.
        int totalPage = 0;         // 총 페이지수(웹브라우저상에서 보여줄 총 페이지 개수, 페이지바)
      
        int startRno = 0; 
        int endRno = 0; 
        
        totalCount = service.getTotalCount(paraMap);
        totalPage = (int) Math.ceil((double)totalCount/sizePerPage);
        
        
        if(str_currentShowPageNo == null) {
        	// 게시판에 보여지는 초기화면
        	currentShowPageNo = 1;
        }
        else {
        	try {
        		currentShowPageNo = Integer.parseInt(str_currentShowPageNo);
        		if(currentShowPageNo < 1 || currentShowPageNo > totalPage) {
        			currentShowPageNo = 1;
        		}
			} catch (NumberFormatException e) {
				currentShowPageNo = 1;
			}
        	
        }
        
        startRno = ((currentShowPageNo - 1) * sizePerPage) + 1;
        endRno = startRno + sizePerPage - 1;
        
        paraMap.put("startRno", String.valueOf(startRno));
        paraMap.put("endRno", String.valueOf(endRno));
        

        
        // 검색어 유지
        if( !"".equals(searchType) && !"".equals(searchWord) ) {
 			request.setAttribute("paraMap", paraMap);
 		}

        // 페이지바
        int blockSize = 2;
        int loop = 1;
        int pageNo = ((currentShowPageNo - 1)/blockSize) * blockSize + 1;
        
        String pageBar = "<ul style='list-style: none;'>";
        String url = "company";
      
        // === [맨처음][이전] 만들기 === //
        if(pageNo != 1) {
           pageBar += "<li id='pageArrow'><a href='"+url+"?searchType="+searchType+"&searchWord="+searchWord+"&currentShowPageNo=1'><i class=\"fa-solid fa-play fa-flip-both\"></i></a></li>";
           pageBar += "<li id='pageArrow'><a href='"+url+"?searchType="+searchType+"&searchWord="+searchWord+"&currentShowPageNo="+(pageNo-1)+"'><i class=\"fa-solid fa-backward\"></i></a></li>";
        }
      
        while( !(loop > blockSize || pageNo > totalPage) ) {
         
           if(pageNo == currentShowPageNo) {
              pageBar += "<li id='pageNo'>"+pageNo+"</li>";  
           }
           else {
              pageBar += "<li id='pageBarNo'><a href='"+url+"?searchType="+searchType+"&searchWord="+searchWord+"&currentShowPageNo="+pageNo+"'>"+pageNo+"</a></li>"; 
           }
         
           loop++;
           pageNo++;
        }// end of while-----------------------
        
        // === [다음][마지막] 만들기 === //
	    if( pageNo <= totalPage ) {
	        pageBar += "<li id='pageArrow'><a href='"+url+"?searchType="+searchType+"&searchWord="+searchWord+"&currentShowPageNo="+pageNo+"'><i class=\"fa-solid fa-play\"></i></a></li>";
	        pageBar += "<li id='pageArrow'><a href='"+url+"?searchType="+searchType+"&searchWord="+searchWord+"&currentShowPageNo="+totalPage+"'><i class=\"fa-solid fa-forward\"></i></a></li>"; 
	    }
	      
	    pageBar += "</ul>";
	    
	    System.out.println("pageBar : "+ pageBar);
	    
	    request.setAttribute("pageBar", pageBar);
	    request.setAttribute("candidateList", candidateList);
        
		
		return "tiles2/company/content/company_candidateList_detail";
	}

	
/*	
	@ResponseBody 
	@GetMapping(value = "/company/wordSearchShow", produces = "text/plain;charset=UTF-8")
	public String wordSearchShow(HttpServletRequest request) {
		
		String searchType = request.getParameter("searchType");
		String searchWord = request.getParameter("searchWord");

		Map<String, String> paraMap = new HashMap<>();
		paraMap.put("searchType", searchType);
		paraMap.put("searchWord", searchWord);

		String json = service.wordSearchShow(paraMap);
		
		return json;
	}
*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	// 회사 지원통계(차트) 페이지
	@GetMapping(value = "/company_chart")
	public ModelAndView company_statistics(ModelAndView mav){
		
		mav.setViewName("company/company_chart.tiles2");
		
		return mav;
	}

	
	
}
