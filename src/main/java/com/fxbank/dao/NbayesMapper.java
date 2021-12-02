package com.fxbank.dao;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.fxbank.model.Nbayes;
import com.fxbank.model.Pbayes;
@Service
public interface NbayesMapper {
    int insert(Nbayes record);

    int insertSelective(Nbayes record);
    List<Nbayes> findNbayesBylist(List<String> words);
    int classify(@Param("entrySet")Map<String,Integer> entrySet);
    int update(Nbayes nbayes);
}