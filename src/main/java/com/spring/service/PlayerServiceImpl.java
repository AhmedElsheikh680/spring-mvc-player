package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.PlayerDao;
import com.spring.model.Player;

@Service
public class PlayerServiceImpl implements PlayerService {
	
	@Autowired
	private PlayerDao playerDao;

	@Override
	public List<Player> getPlayers() {
		
		return playerDao.getPlayes();
	}

}
