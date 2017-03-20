package org.conselho.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.conselho.models.Agressao;
import org.conselho.models.StatusDenuncia;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class StatusDAO {
	
	@PersistenceContext
	EntityManager manager;

	public List<StatusDenuncia> lista() {
		
		
		return manager.createQuery("select st from StatusDenuncia st", StatusDenuncia.class).getResultList();
	}
	
	
	

}
