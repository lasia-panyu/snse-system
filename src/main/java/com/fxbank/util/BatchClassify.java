package com.fxbank.util;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.ibatis.session.SqlSession;

import com.fxbank.classify.DicSource;
import com.fxbank.classify.WordClasify;
import com.fxbank.model.WeiboClassify;
import com.fxbank.model.Weibos;

public class BatchClassify {

public static void main(String[] args) throws IOException {
    WeiboClassify wordClassify;
	Map<String,Integer> tmpmap=new HashMap<String,Integer>();
	Map<String,Integer> map=new HashMap<String,Integer>();
	SqlSession sqlSession = null;
	DBAccess dbAccess = new DBAccess();
	sqlSession = dbAccess.getSqlSession();
	WordClasify wc=new WordClasify();
	for(int t=12;t<=12;t++){
	List<Weibos> weibos= sqlSession.selectList("com.fxbank.dao.WeibosMapper.findAll", "20160421");
	System.out.println("测试开始");
			for (Weibos weibo : weibos) {
				wordClassify=new WeiboClassify();
		tmpmap.clear();
		map.clear();
		if(weibo.getContent()!=null){
		map=wc.clasify(weibo.getContent());
		for(Entry<String,Integer> entry:map.entrySet()){
			if(DicSource.getPositivewordlist().contains(entry.getKey()))
				tmpmap.put(entry.getKey(), 0);
			if(DicSource.getPositivewordlist().contains(entry.getKey()))
				tmpmap.put(entry.getKey(), 1);
		}
		}
		wordClassify.setWord(map.toString());
		wordClassify.setAccountId(weibo.getAccountId());
	    wordClassify.setContent(weibo.getContent());
	    wordClassify.setDate(weibo.getDate());
	    wordClassify.setState(weibo.getType());
	    wordClassify.setId(weibo.getId());
	    wordClassify.setClassify(tmpmap.toString());
	    sqlSession.insert("com.fxbank.dao.WeiboClassifyMapper.insert", wordClassify);
	    sqlSession.commit();
	}
	}
	
}
}
