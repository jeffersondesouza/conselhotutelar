package org.conselho.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.conselho.models.Conselheiro;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

@Repository
public class ConselheiroDAO implements UserDetailsService{
	
	@PersistenceContext
	EntityManager manager;
	
	
	public UserDetails loadUserByUsername(String login){
		System.out.println("DAO: "+login);
		
		List<Conselheiro> conselheiros = manager.createQuery("select c from Conselheiro c where c.login=:login", Conselheiro.class)
			.setParameter("login", login)
			.getResultList();
		
		
		System.out.println("DAO: "+conselheiros);
		
		
		System.out.println(conselheiros.get(0));
		
		if(conselheiros.isEmpty()){
	        throw new RuntimeException("O usuário "+ login +" não foi encontrado");
	    }
		
		return conselheiros.get(0);

		
	}

	
}
