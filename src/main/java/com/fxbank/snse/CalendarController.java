package com.fxbank.snse;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fxbank.model.Agents;
import com.fxbank.service.CaldendarService;

@Controller
@RequestMapping(value = "/calendar", method = { RequestMethod.POST, RequestMethod.GET })
public class CalendarController {
	@Autowired
	CaldendarService calendarService;
	SimpleDateFormat simpledateFormay = new SimpleDateFormat("yyyyMM");

	@RequestMapping(value = "/")
	public String listAgentsandEvents(String date, Model model) {
//		String dates = simpledateFormay.format(new Date());
//		model.addAttribute("agents", calendarService.findAgents(dates));
//		System.out.println(calendarService.findAgents(dates).toString());
		simpledateFormay = new SimpleDateFormat("yyyyMMdd");
		model.addAttribute("date",simpledateFormay.format(new Date()));
		return "calendar";
	}

	@ResponseBody
	@RequestMapping(value = "/findAgents")
	public List<Agents> findAgents(Date start,Date end) {
		simpledateFormay = new SimpleDateFormat("yyyyMM");
	    String dates = String.valueOf(Integer.valueOf(simpledateFormay.format(end))-1);
	    System.out.println(simpledateFormay.format(end));
		System.out.println(dates+"OK");
		
		return calendarService.findAgents(dates);
	}
	@SuppressWarnings("deprecation")
	@ResponseBody
	@RequestMapping(value = "/addAgents")
	public List<Agents> addAgents(Date date,String snstitle) {
		simpledateFormay = new SimpleDateFormat("yyyyMMdd");
		String strDate=simpledateFormay.format(date);
		int result=calendarService.addEvent(strDate.substring(0, 6),strDate.substring(6,8),snstitle);
		System.out.println(result);
		return calendarService.findAgents("success");
	}
}