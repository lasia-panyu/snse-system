package com.fxbank.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.fxbank.model.Agent;
import com.fxbank.model.Agents;
@Service
public interface AgentMapper {
    int insert(Agent record);

    int insertSelective(Agent record);
    List<Agents> findAgents(String snsdate);
    Agent findAgent(@Param("sysdate")String sysdate,@Param("sysday")String sysday);
}