package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.model.Player;
import com.spring.service.PlayerService;

@Controller
@RequestMapping("/fifa")
public class PlayerController {
	
	@Autowired
	private PlayerService playerService;
	
	@GetMapping("/players")
	public String getPlayers(Model model) {
		List<Player> players = playerService.getPlayers();
		model.addAttribute("players", players);
		return "players";
	}

}