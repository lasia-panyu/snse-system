package com.fxbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fxbank.dao.AgentMapper;
import com.fxbank.dao.EventMapper;
import com.fxbank.model.Agent;
import com.fxbank.model.Agents;
import com.fxbank.model.Event;

@Service
public class CaldendarService {
@Autowired
AgentMapper agentMapper;
@Autowired
EventMapper eventMapper;
 public List<Agents> findAgents(String date){
	 return agentMapper.findAgents(date);
 }
 public int addEvent(String date,String day,String snsTitle){
	 if(agentMapper.findAgent(date, day)==null){
		 Agent agent=new Agent();
		 agent.setDate(date);
		 agent.setDay(day);
		 agentMapper.insert(agent);
	 }
		 int eventId=agentMapper.findAgent(date, day).getEventId();
		 Event event=new Event();
		 event.setId(eventId);
		 event.setTitle(snsTitle);
		 event.setDesc(snsTitle);
		 int result=eventMapper.insert(event);
	return result; 
 }
}
