package net.koreate.controller;

import java.util.ArrayList;

import org.junit.Test;

public class HomeTest {
	
	@Test
	public void Test() {
		ArrayList<String> strs = new ArrayList<>();
		strs.add("1");
		strs.add("2");
		strs.add("3");
		strs.add("4");
		strs.add("5");
		strs.add("6");
		strs.add("7");
		strs.add("8");
		strs.add("9");
		strs.add("10");
		
		for (String string : strs) {
			System.out.println(string);
		}
		
		System.out.println(strs.isEmpty());
		
		strs.clear();
		System.out.println(strs.isEmpty());
	}
	
}