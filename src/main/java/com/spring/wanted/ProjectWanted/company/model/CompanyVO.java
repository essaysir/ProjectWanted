package com.spring.wanted.ProjectWanted.company.model;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CompanyVO {

		private String company_id ; 
		private String serial_no ; 
		private int fk_region_detail_code ;
		private String pwd ; 
		private String name ; 
		private String details ; 
		private int emp_count ; 
		private String image ;
		private String addresss ;
		
		private MultipartFile attach;

		/////////////////////////////////////////////////////
		// SELECT 하기 위한 용도 
		private String region_name ;
		private String region_detail_name ;
		
		
		@Override
	    public String toString() {
	        return "CompanyVO{" +
	                "company_id='" + company_id + '\'' +
	                ", serial_no='" + serial_no + '\'' +
	                ", region_detail_code=" + fk_region_detail_code +
	                ", pwd='" + pwd + '\'' +
	                ", name='" + name + '\'' +
	                ", details='" + details + '\'' +
	                ", emp_count=" + emp_count +
	                ", image='" + image + '\'' +
	                ", addresss='" + addresss + '\'' +
	                ", attach=" + attach +
	                ", region_name='" + region_name + '\'' +
	                ", region_detail_name='" + region_detail_name + '\'' +
	                '}';
	    }
	
}
