package com.fxbank.snse;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fxbank.model.Nbayes;
import com.fxbank.model.Pbayes;

import com.fxbank.model.WeiboClassify;
import com.fxbank.model.Weibos;
import com.fxbank.service.WeiBoService;

@Controller
@RequestMapping(value = "/weibo", method = { RequestMethod.POST, RequestMethod.GET })
public class WeiBoController {
	@Autowired
	WeiBoService weiboService;

	SimpleDateFormat simpledateFormay = new SimpleDateFormat("yyyyMMdd");

	@RequestMapping(value = "/")
	public String contactManage(Model model) {
		System.out.println("succes");
		return "index";
	}

	@RequestMapping(value = "/list/{date}/{state}/{page}")
	public String showLists(@PathVariable("date") String date,@PathVariable("state")int state, @PathVariable("page") int page, Model model) {
		if (date == null)
			date = simpledateFormay.format(new Date());
		if (date == null)
			date = simpledateFormay.format(new Date());
		int count=0;  
		List<Weibos> weibos=new ArrayList<Weibos>();
		List<WeiboClassify> weibosClassify=new ArrayList<WeiboClassify>();
		if(state==0){
			weibosClassify = weiboService.findWeiBoClassifyByPage(date, (page - 1)*10,"0",0);
			model.addAttribute("state", 1);
			model.addAttribute("weibos", weibosClassify);
			count=weiboService.queryStateCount(0, date,"0");
		
		}
		if(state==1){
			weibosClassify = weiboService.findWeiBoClassifyByPage(date, (page - 1)*10,"1",1);
		   model.addAttribute("state", 1);
		   model.addAttribute("weibos", weibosClassify);
		   count=weiboService.queryStateCount(0, date,"1");
		}
		if(state==2){
		   weibos = weiboService.findWeiBosByPage(date,(page - 1)*10,null,1);
		   model.addAttribute("state", 0);
		   model.addAttribute("weibos", weibos);
		   count=weiboService.selectCount(date,1);
		}
		if(state==3){
		   weibos = weiboService.findWeiBosByPage(date,(page - 1)*10,null,0);
		   model.addAttribute("state", 0);
		   model.addAttribute("weibos", weibos);
		   count=weiboService.selectCount(date,0);
		}	
		model.addAttribute("totalpage", count % 10 == 0 ? count / 10 : count / 10 + 1);
		model.addAttribute("pstate",state);
		model.addAttribute("page", page);
		model.addAttribute("date", date);

		// model.addAttribute("weibos", );
		return "tables";
	}

	@RequestMapping(value = "/detail/{id}/{date}/{accountId}/{word}")
	public String showDetail(@PathVariable("id") int id, @PathVariable("date") String date,
			@PathVariable("accountId") String accountId, @PathVariable("word") String word, Model model)
			throws IOException {
		System.out.println("OK~~~~~~~~~~~~~~~~~~~~~~~~~");
		Map<String, Integer> tmpMaps = new HashMap<String, Integer>();
		WeiboClassify wc=  weiboService.findWeiboClassifyById(id, date, word, accountId); 
		model.addAttribute("weiboclassify",wc);
		if(wc.getWord()!=null||!wc.getWord().equals("{}")){
			String[] words = wc.getWord().substring(1,wc.getWord().length() - 1).split(",");
			for (String tmpWord : words){
				tmpMaps.put(tmpWord.split("=")[0].trim(),Integer.valueOf(tmpWord.split("=")[1]));
			}
			    model.addAttribute("pbayes", weiboService.findPbayesBylist(new ArrayList<String>(tmpMaps.keySet())));
			    model.addAttribute("nbayes", weiboService.findNbayesBylist(new ArrayList<String>(tmpMaps.keySet())));
		}else{
			  model.addAttribute("pbayes", null);
			  model.addAttribute("nbayes", null);
		}
        System.out.println("OK~~~~~~~~~~~~~~~~~~~~~~~~~");
		model.addAttribute("weiboclassify", weiboService.findWeiboClassifyById(id, date, word, accountId));
		model.addAttribute("aNumber", weiboService.queryStateCount(-1, date,null));
		model.addAttribute("dNumber", weiboService.queryStateCount(2, date,null));
		model.addAttribute("nNumber", weiboService.queryStateCount(1, date,null));
		System.out.println("OK~~~~~~~~~~~~~~~~~~~~~~~~~");
		return "invoice";
	}

	@RequestMapping(value = "/calssify/{id}/{emotion}/{word}")
	public String calssify(@PathVariable("id") int id, @PathVariable("emotion") String emotion,
			@PathVariable("word") String word) throws IOException {
		Map<String, Integer> tmpMaps = new HashMap<String, Integer>();
		WeiboClassify wc=weiboService.findWeiboClassifyById(id,"","","");
		if(wc.getWord()!=null||!wc.getWord().equals("{}")){
			String[] words = wc.getWord().substring(1,wc.getWord().length() - 1).split(",");
			for (String tmpWord : words){
				tmpMaps.put(tmpWord.split("=")[0].trim(),Integer.valueOf(tmpWord.split("=")[1]));
			}
			List<Pbayes> pbayes = weiboService.findPbayesBylist(new ArrayList<String>(tmpMaps.keySet()));
			List<Nbayes> nbayes = weiboService.findNbayesBylist(new ArrayList<String>(tmpMaps.keySet()));
			if (emotion.equals("0")&&pbayes!=null) {
				for (Pbayes p : pbayes) {
					if (tmpMaps.containsKey(p.getWord())) {
						p.setCount(tmpMaps.get(p.getWord()));
						tmpMaps.remove(p.getWord());
						weiboService.pupdate(p);
					}
				}
			} else if(nbayes!=null){
				for (Nbayes p : nbayes) {
					if (tmpMaps.containsKey(p.getWord())) {
						p.setCount(tmpMaps.get(p.getWord()));
						tmpMaps.remove(p.getWord());
						weiboService.nupdate(p);
					}
				}
			}
		}	
		weiboService.updateWeiboClassify(wc.getId(),emotion);
		if(tmpMaps.size()!=0)
		weiboService.classify(emotion, tmpMaps);
		return "redirect:/weibo/list/"+wc.getDate()+"/2/1";
	}
}
