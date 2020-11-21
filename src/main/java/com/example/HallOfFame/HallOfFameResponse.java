package com.example.HallOfFame;

import java.util.List;

public class HallOfFameResponse {
	
	
	private List<TinyDetails> tiny;
	private List<CompleteDetails> complete;
	
	
	public HallOfFameResponse()
	{
		
	}


	public List<TinyDetails> getTiny() {
		return tiny;
	}


	public void setTiny(List<TinyDetails> tiny) {
		this.tiny = tiny;
	}


	public List<CompleteDetails> getComplete() {
		return complete;
	}


	public void setComplete(List<CompleteDetails> complete) {
		this.complete = complete;
	}

	
	

}
