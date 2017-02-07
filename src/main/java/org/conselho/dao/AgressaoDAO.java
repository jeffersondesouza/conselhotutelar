package org.conselho.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.conselho.models.Agressao;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class AgressaoDAO {
	
	@PersistenceContext
	EntityManager manager;

	public List<Agressao> lista() {
		return manager.createQuery("select a from Agressao a", Agressao.class).getResultList();
	}
	
	
	

}
