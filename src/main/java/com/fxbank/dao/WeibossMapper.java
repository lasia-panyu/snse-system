package com.fxbank.dao;

import com.fxbank.model.Weiboss;

public interface WeibossMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Weiboss record);

    int insertSelective(Weiboss record);

    Weiboss selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Weiboss record);

    int updateByPrimaryKeyWithBLOBs(Weiboss record);

    int updateByPrimaryKey(Weiboss record);
}