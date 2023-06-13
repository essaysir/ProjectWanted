package com.spring.wanted.ProjectWanted.company.model;

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
		private int region_detail_code ;
		private String pwd ; 
		private String name ; 
		private String details ; 
		private int emp_count ; 
		private String image ;
		private String address ;
	
	
	
}
