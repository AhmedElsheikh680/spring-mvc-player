package com.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.PlayerDao;
import com.spring.model.Player;

@Service
public class PlayerServiceImpl implements PlayerService {
	
	@Autowired
	private PlayerDao playerDao;

	@Transactional
	@Override
	public List<Player> getPlayers() {
		
		return playerDao.getPlayes();
	}

}
