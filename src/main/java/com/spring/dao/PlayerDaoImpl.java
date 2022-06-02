package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.Player;

@Repository
public class PlayerDaoImpl implements PlayerDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Player> getPlayes() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Player", Player.class);
		return query.getResultList();
	}

	
}
