package com.fxbank.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fxbank.classify.DicSource;
import com.fxbank.classify.WordClasify;
import com.fxbank.dao.NbayesMapper;
import com.fxbank.dao.PbayesMapper;
import com.fxbank.dao.WeiboClassifyMapper;
import com.fxbank.dao.WeiboMapper;
import com.fxbank.dao.WeibosMapper;
import com.fxbank.model.Nbayes;
import com.fxbank.model.Pbayes;
import com.fxbank.model.Weibo;
import com.fxbank.model.WeiboClassify;
import com.fxbank.model.Weibos;

@Service
public class WeiBoService {
	@Autowired
	WeiboMapper weiboMapper;
	@Autowired
	WeibosMapper weibosMapper;
	@Autowired
	WeiboClassifyMapper weiboClassifyMapper;
	@Autowired
	PbayesMapper pbayesMapper;
	@Autowired
	NbayesMapper nbayesMapper;
	WordClasify wordClassify=new WordClasify();
	public int deleteByPrimaryKey(Integer id) {

		return weiboMapper.deleteByPrimaryKey(id);
	}

	public int insert(Weibo record) {

		return weiboMapper.insert(record);
	}

	public int insertSelective(Weibo record) {

		return weiboMapper.insertSelective(record);
	}

	public Weibo selectByPrimaryKey(Integer id) {

		return weiboMapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(Weibo record) {

		return weiboMapper.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKeyWithBLOBs(Weibo record) {

		return weiboMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	public int updateByPrimaryKey(Weibo record) {

		return weiboMapper.updateByPrimaryKey(record);
	}

	public List<Weibos> findWeiBosByPage(String date,int page,String emontion,@Param("state")int state) {
		return weibosMapper.findWeiBosByPage(date,page,emontion,state);
	}

	public int selectCount(String date,int classify) {
		return weibosMapper.selectCount(date,classify);
	}
	public int queryStateCount(int state,String date,String emontion){
		return weiboClassifyMapper.queryStateCount(state, date,emontion);
	}
	public int updateWeiboClassify(int id,String emontion){
		return weiboClassifyMapper.classiy(id, emontion);
	}
	public WeiboClassify findWeiboClassifyById(int id,String date,String word,String accounId) throws IOException{
		WeiboClassify weiboClassiy=weiboClassifyMapper.findWeiboClassifyById(id);
//		if(weiboClassiy==null){
//			Map<String,Integer> tmpmap=new HashMap<String,Integer>();
//			Map<String,Integer> map=wordClassify.clasify(word);
//			for(Entry<String,Integer> entry:map.entrySet()){
//				if(DicSource.getPositivewordlist().contains(entry.getKey()))
//					tmpmap.put(entry.getKey(), 0);
//				if(DicSource.getPositivewordlist().contains(entry.getKey()))
//					tmpmap.put(entry.getKey(), 1);
//			}
//			weiboClassiy=new WeiboClassify();
//		    weiboClassiy.setWord(map.toString());
//		    weiboClassiy.setAccountId(accounId);
//		    weiboClassiy.setContent(word);
//		    weiboClassiy.setDate(date);
//		    weiboClassiy.setState(0);
//		    weiboClassiy.setId(id);
//		    weiboClassiy.setClassify(tmpmap.toString());
//		    
//		}
		
		return weiboClassiy;
		
	}
	public int classify(String emotion,Map<String,Integer> maps){
		int i=0;
		if(emotion.equals("0"))
			i=pbayesMapper.classify(maps);
		else
			i=nbayesMapper.classify(maps);
		return i;	
	}
	public List<Pbayes> findPbayesBylist(List<String> words){
		return pbayesMapper.findPbayesBylist(words);
	}
	public List<Nbayes> findNbayesBylist(List<String>  words){
		return nbayesMapper.findNbayesBylist(words);
	}
	public int pupdate(Pbayes pbayes){
		return pbayesMapper.update(pbayes);
	}
    public int nupdate(Nbayes nbayes){
    	return nbayesMapper.update(nbayes);
	}
    public  List<WeiboClassify>  findWeiBoClassifyByPage(String date,int page,String emontion,int state){
    	return weiboClassifyMapper.findWeiBosByPage(date, page, emontion, state);
	}
}
