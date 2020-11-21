package com.example.HallOfFame;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class HallOfFameService {

	private RestTemplate rt = new RestTemplate();
	
	public HallOfFameResponse halloffame() {
		
		String url = "https://dwolverton.github.io/fe-demo/data/computer-science-hall-of-fame.json";
		HallOfFameResponse hof = rt.getForObject(url, HallOfFameResponse.class);
		return hof;
	}
}
