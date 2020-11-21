package com.example.HallOfFame;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HallOfFameController {
	
	
	@Autowired
	private HallOfFameService hofservice;
	
	
	@GetMapping("/")
	public String index(Model model)
	{
		
		HallOfFameResponse hofres = hofservice.halloffame();
		model.addAttribute("tinydetails",hofres.getTiny());
		return "index";
	}
	
	
	@GetMapping("/complete")
	public String complete(Model model)
	{
		
		HallOfFameResponse hofres = hofservice.halloffame();
		model.addAttribute("completedetails",hofres.getComplete());
		return "complete";
	}

}
