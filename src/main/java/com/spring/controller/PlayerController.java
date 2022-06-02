package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.model.Player;
import com.spring.service.PlayerService;

@Controller
@RequestMapping("/fifa")
public class PlayerController {
	
	@Autowired
	private PlayerService playerService;
	
	// http://localhost:8085/spring-mvc-player/fifa/players
//	@GetMapping({"/players", "/"})
	@GetMapping("/players")
	public String getPlayers(Model model) {
		
		List<Player> players = playerService.getPlayers();
		model.addAttribute("players", players);
		return "players";
	}
	
	@GetMapping("/add-player")
	public String addPlayer(Model model) {
		model.addAttribute("player", new Player());
		return "add-player";
	}
	
	
	@PostMapping("/save-player")
	public String savePlayer(@ModelAttribute("player") Player player) {
		playerService.addPlayer(player);
		return "redirect:/fifa/players";
	}
	
	@GetMapping("/edit-player")
	public String editPlayer(@RequestParam("playerId") int id, Model model) {
		Player p = playerService.showPlayer(id);
		model.addAttribute("player", p);
		return "add-player";
	}
	
	@GetMapping("/delete-player")
	public String deletePlayer(@RequestParam("playerId") int id) {
		playerService.deletePlayer(id);
		return "redirect:/fifa/players";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
