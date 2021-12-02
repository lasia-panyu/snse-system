package com.fxbank.dao;

import org.springframework.stereotype.Service;

import com.fxbank.model.Event;
@Service
public interface EventMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Event record);

    int insertSelective(Event record);

    Event selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Event record);

    int updateByPrimaryKey(Event record);
}