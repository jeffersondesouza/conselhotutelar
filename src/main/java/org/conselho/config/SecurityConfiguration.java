package org.conselho.config;

import org.conselho.dao.ConselheiroDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	
	@Autowired
	private ConselheiroDAO conselheiroDAO;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests() 
				.antMatchers("/resources/**").permitAll()
				.antMatchers("/conselho").permitAll()
				.antMatchers("/fazer-denuncia").permitAll()
				.antMatchers("/acompanhar-denuncia").permitAll()
				.antMatchers("/denuncia").permitAll()
				.antMatchers("/quem-somos").permitAll()
				
				.antMatchers("/denuncias").hasRole("CONSELHEIRO")
				.antMatchers("/criar-processo").hasRole("CONSELHEIRO")
				.antMatchers("/processos").hasRole("CONSELHEIRO")
				.antMatchers("/conselheiros").hasRole("CONSELHEIRO")
				.antMatchers("/salvar-conselheiro").hasRole("CONSELHEIRO")
				.antMatchers("/criar-agressao").hasRole("CONSELHEIRO")
					
				
				.and().formLogin().loginPage("/login").permitAll()
				.and().logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"));
		
//		http.authorizeRequests() 
//		.antMatchers("/resources/**").permitAll()
//		.antMatchers("/fazer-denuncia").permitAll()
//		.antMatchers("/conselho/salvar-denuncia").permitAll()
//		.antMatchers("/acompanhar-denuncia").permitAll()
//		.antMatchers("/login").permitAll()
//		.antMatchers("/buscar-denuncia").permitAll()
//		.antMatchers("/").permitAll()
//		.antMatchers("/denuncias").hasRole("CONSELHEIRO")
//		.anyRequest().authenticated()
//		.and().formLogin().loginPage("/login").permitAll()
//		.and().logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"));
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(conselheiroDAO)
			.passwordEncoder(new BCryptPasswordEncoder());
	}
	
}
