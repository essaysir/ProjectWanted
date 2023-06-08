package com.spring.wanted.ProjectWanted.security.config;

import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.web.SecurityFilterChain;


@Configuration
@EnableWebSecurity
public class SecurityConfig  {
	
	
	
	@Bean
	 public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http
				.authorizeRequests()
				.antMatchers("/wanted").permitAll() // 메인 페이지 접근권한 모두 허용
				.antMatchers("/wanted/register" ,"/send-one").permitAll() // 회원가입 페이지 접근권한 모두 허용
				.antMatchers("/wanted/login" , "/wanted/login/checkUserid").permitAll()
				.antMatchers("/mypage/**").hasRole("USER") 
				.antMatchers("/company/**").hasRole("COMPANY") 
				.antMatchers("/admin/**").hasRole("ADMIN") 
				.anyRequest().authenticated();
		http
				.formLogin();
		http
				.csrf().disable();
		
				// .csrf().ignoringAntMatchers("/wanted/login/**" , "/send-one") // CSRF 보호에서 해당 URL은 제외
				// .and()
		        // .headers().frameOptions().sameOrigin(); // X-Frame-Options 헤더 설정
				
		
		
		return http.build();
	}
	// permitAll 과 WebSecurity  의 차이는 permitAll 은 보안 필터를 거치지만, WebSecurity 는 아예 보안필터를 거치지 않는다. 
	 @Bean    
	    public WebSecurityCustomizer webSecurityCustomizer() {
	        // 인증 및 인가 예외 Path URL        
	    	return (web) -> web.ignoring().requestMatchers(PathRequest.toStaticResources().atCommonLocations())
	    			.antMatchers( "/bootstrap-4.6.0-dist/**", "/jquery-ui-1.13.1.custom/**","/smarteditor/**" , "/OwlCarousel/**" );
	    				
	 }

	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
}
