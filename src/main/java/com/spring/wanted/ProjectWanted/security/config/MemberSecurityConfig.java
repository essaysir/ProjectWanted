package com.spring.wanted.ProjectWanted.security.config;

import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class MemberSecurityConfig  {
	 	
		@Bean
		public  PasswordEncoder passwordEncoder() {
			return PasswordEncoderFactories.createDelegatingPasswordEncoder();
		}


		
		
		 @Order(1)
		 @Configuration
		 public  static class CommonConfigurationAdapter{
				@Bean    
		    	public WebSecurityCustomizer MemberwebSecurityCustomizer1() {
		    		        // 인증 및 인가 예외 Path URL        
		    		    	return (web) -> web.ignoring().requestMatchers(PathRequest.toStaticResources().atCommonLocations())
		    		    			.antMatchers( "/js/**" , "/images/**" , "/bootstrap-4.6.0-dist/**", "/jquery-ui-1.13.1.custom/**","/smarteditor/**" , "/OwlCarousel/**" );
		    	}	 

			 @Bean
				public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
				  http.antMatcher("/wanted/*").authorizeRequests()
				  .antMatchers("/wanted", "/wanted/register").permitAll()
				   .antMatchers("/wanted/login", "/wanted/checkUserid" , "/wanted/logout" , "/wanted/getSkill" , "/wanted/resume").permitAll()
				  .anyRequest().authenticated();
				  
		            
				  return http.build();
			 }
		 }
		
		 @Order(2)
		 @Configuration
		 public  static class MemberConfigurationAdapter{

		@Bean    
    	public WebSecurityCustomizer MemberwebSecurityCustomizer() {
    		        // 인증 및 인가 예외 Path URL        
    		    	return (web) -> web.ignoring().requestMatchers(PathRequest.toStaticResources().atCommonLocations())
    		    			.antMatchers( "/js/**" , "/images/**" , "/bootstrap-4.6.0-dist/**", "/jquery-ui-1.13.1.custom/**","/smarteditor/**" , "/OwlCarousel/**" );
    	}	 
		@Bean 
		public MemberAuthenticationProvider memberAuthenticationProvider() {
			return new MemberAuthenticationProvider(); 
		}
		 @Bean
		public SecurityFilterChain MemberfilterChain(HttpSecurity http) throws Exception {
			  	 
	            http.authenticationProvider(memberAuthenticationProvider())
	            .antMatcher("/wanted/member/**")
	            .authorizeRequests()
	            .antMatchers("/wanted/member/register" , "/wanted/member/apply").permitAll()
	            .anyRequest().hasRole("USER")
	            .and()
	            .formLogin().loginPage("/wanted/login").loginProcessingUrl("/wanted/member/login/proc")
	            .defaultSuccessUrl("/wanted", true).permitAll()
	            
	            .and()
	            .csrf().disable();
							
				return http.build();
				}
		 }
		 
		 @Order(3)
		 @Configuration
		 public  static class CompanyConfigurationAdapter{
		// permitAll 과 WebSecurity  의 차이는 permitAll 은 보안 필터를 거치지만, WebSecurity 는 아예 보안필터를 거치지 않는다. 

    	 @Bean    
    	public WebSecurityCustomizer CompanywebSecurityCustomizer() {
    		        // 인증 및 인가 예외 Path URL        
    		    	return (web) -> web.ignoring().requestMatchers(PathRequest.toStaticResources().atCommonLocations())
    		    			.antMatchers( "/js/**" , "/images/**" , "/bootstrap-4.6.0-dist/**", "/jquery-ui-1.13.1.custom/**","/smarteditor/**" , "/OwlCarousel/**" );
    	}	 
 		@Bean 
 		public CompanyAuthenticationProvider companyAuthenticationProvider() {
 			return new CompanyAuthenticationProvider(); 
 		}
		 @Bean
		public SecurityFilterChain CompanyfilterChain(HttpSecurity http) throws Exception {

	            http.authenticationProvider(companyAuthenticationProvider())
	            .antMatcher("/wanted/company/**")
	            .authorizeRequests()
	            .antMatchers("/wanted/company/login", "/wanted/company/checkUserid" , "/wanted/company/register").permitAll()
	            .antMatchers("/wanted/company/getHeaderList", "/wanted/company/getDuty").permitAll()
	            .anyRequest().hasRole("COMPANY")
	            .and()
	            .formLogin().loginPage("/wanted/company/login").loginProcessingUrl("/wanted/company/login/proc").permitAll()
	            .defaultSuccessUrl("/wanted/company/jobPost", true)
	            .and()
	            .csrf().disable();			
					return http.build();
				}
		 }
	 

    
    
  
    			
	
    


	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
}
