package com.zavala.whatsfordinner;

import java.util.List;

public class RecipesReturned {

	private 	List<Hits> hits;

	private RecipesReturned() {

	}

	public List<Hits> getHits() {
		return hits;
	}

	public void sethits(List<Hits> hits) {
		this.hits = hits;
	}	 
}
