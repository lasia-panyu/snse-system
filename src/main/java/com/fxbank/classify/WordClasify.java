package com.fxbank.classify;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.ansj.splitWord.analysis.ToAnalysis;
import org.apdplat.word.WordSegmenter;
import org.apdplat.word.segmentation.SegmentationAlgorithm;
import org.apdplat.word.segmentation.Word;

import com.fxbank.model.WeiboClassify;

import org.ansj.domain.Term;

public class WordClasify {
	List<String> termsList=new  ArrayList<String>();;
	List<Term> terms = new ArrayList<Term>();
	Map<String, Integer> map = new HashMap<String, Integer>();

	public Map<String,Integer> clasify(String word) throws IOException {
		WeiboClassify weiboClassify=new WeiboClassify();
		terms.clear();
		termsList.clear();
		terms = ToAnalysis.parse(word);
		for (Term term : terms)
			termsList.add(term.getName());
		map.clear();	
		List<Word> words = WordSegmenter.segWithStopWords(word, SegmentationAlgorithm.MinimumMatching);
		map=twomap(words);
		words = WordSegmenter.segWithStopWords(word, SegmentationAlgorithm.MaximumMatching);
		map=twomap2(words);
//		Map<String,Integer> tmpmap=new HashMap<String,Integer>();
//		System.out.println(DicSource.getPositivewordlist().size());
//		System.out.println(DicSource.getNegtivewordlist().size());
//		for(Entry<String,Integer> entry:map.entrySet()){
//			if(DicSource.getPositivewordlist().contains(entry.getKey()))
//				tmpmap.put(entry.getKey(), 0);
//			if(DicSource.getNegtivewordlist().contains(entry.getKey()))
//				tmpmap.put(entry.getKey(), 1);
//		}
//		System.out.println(tmpmap.toString());
		return map;
	}
	public Map<String,Integer> twomap(List<Word> words){
		for (Word tmpWord : words) {
			if (!map.containsKey(tmpWord.getText())) {
				if (tmpWord.getText().length() == 1) {
					if (termsList.contains(tmpWord.getText()))
						map.put(tmpWord.getText(), 1);
				} else {
					map.put(tmpWord.getText(), 1);
				}
			} else {
				map.put(tmpWord.getText(),map.get(tmpWord.getText())+1);
			}
		}
		return map;
	}
	public Map<String,Integer> twomap2(List<Word> words){
		for (Word tmpWord : words) {
			if (!map.containsKey(tmpWord.getText())) {
				if (tmpWord.getText().length() == 1) {
					if (termsList.contains(tmpWord.getText()))
						map.put(tmpWord.getText(), 1);
				} else {
					map.put(tmpWord.getText(), 1);
				}
			} 
		}
		return map;
	}
}
