package com.fxbank.classify;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public class DicSource {
	public static List<String> positiveWordList = new ArrayList<String>(3000);
	public static List<String> negtiveWordList = new ArrayList<String>(8500);

	public DicSource() {
		// BufferedReader bf=new BufferedReader(new InputStream(file));
		File file = new File("src/main/java/ntusd-positive.txt");
		System.out.println(file.getAbsolutePath());
	}

	// public void get
	public static List<String> getPositivewordlist() throws IOException {
		if (positiveWordList.size() != 0)
			return positiveWordList;
		else
			return getPWordList();
	}

	public static List<String> getNegtivewordlist() throws IOException {
		if (negtiveWordList.size() != 0)
			return negtiveWordList;
		else
			return getNWordList();
	}

	private static List<String> getPWordList() throws IOException {
		// TODO Auto-generated method stubsrc/main/java/
		File file = new File("src/main/java/ntusd-positive.txt");
		BufferedReader bf = new BufferedReader(new FileReader(file));
		String line;
		while ((line = bf.readLine()) != null)
			positiveWordList.add(line);
		return positiveWordList;
	}

	private static List<String> getNWordList() throws IOException {
		// TODO Auto-generated method stubsrc/main/java/
		File file = new File("classpath:ntusd-negative.txt");
		BufferedReader bf = new BufferedReader(new FileReader(file));
		String line;
		while ((line = bf.readLine()) != null)
			negtiveWordList.add(line);
		return negtiveWordList;
	}

}
