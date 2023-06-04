package com.spring.wanted.ProjectWanted.security.config;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.User;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

@Configuration
@EnableWebSecurity
public class SecurityConfig  {
		
	
	 @Bean
	    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
	        http
	                 // .csrf().disable() // httpBasic().disable().csrf().disable(): rest api이므로 basic auth 및 csrf 보안을 사용하지 않는다는 설정
	                //.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS) // JWT를 사용하기 때문에 세션을 사용하지 않는다는 설정
	                //.and()
	                .formLogin()
	                	.loginPage("/wanted/login")
	                	.loginProcessingUrl("/wanted/loginto")
	                	.defaultSuccessUrl("/wanted")
	                	.usernameParameter("username")
	                	.passwordParameter("password")
	                	.successHandler( new AuthenticationSuccessHandler() {
							
							@Override
							public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
									Authentication authentication) throws IOException, ServletException {
								System.out.println("=== 확인용 === : success" );
							}
						})
	                .and()	
	                
	                .authorizeRequests()
	                .antMatchers("/bootstrap-4.6.0-dist/**", 
	                		"/images/main_image/**", 
	                		"/jquery-ui-1.13.1.custom/**", 
	                		"/js/**", 
	                		"/OwlCarousel/**", 
	                		"/smarteditor/**", 
	                		"/wanted/company/**" , "/wanted/login" , "/wanted").permitAll() // 해당 API에 대해서는 모든 요청을 허가한다는 설정	                
	                //	                .antMatchers("/**").hasAnyRole("USER") // 그 외 페이지는 로그인 한 유저만 사용 가능
	        		.anyRequest().authenticated(); // 이 밖에 모든 요청에 대해서 인증을 필요로 한다는 설정
	                
	        return http.build();
	    }
	 


	    @Bean    
	    public WebSecurityCustomizer webSecurityCustomizer() {
	        // 인증 및 인가 예외 Path URL        
	    	return (web) -> web.ignoring().antMatchers( "**", "/login/**",   "/bootstrap-4.6.0-dist/**",
	                "/css/**",  "/images/**",	 "/jquery-ui-1.13.1.custom/**",  "/js/**",
	                "/smarteditor/**" );    
	        }
	
}
