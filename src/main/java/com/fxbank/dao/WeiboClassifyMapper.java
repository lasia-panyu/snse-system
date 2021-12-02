package com.fxbank.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.fxbank.model.WeiboClassify;
import com.fxbank.model.Weibos;
@Service
public interface WeiboClassifyMapper {
    int insert(WeiboClassify record);

    int insertSelective(WeiboClassify record);
    WeiboClassify findWeiboClassifyById(int id);
    int  queryStateCount(@Param("state")int state,@Param("date")String date,@Param("emontion")String emontion);
    int classiy(@Param("id")int id,@Param("emontion")String emontion);
    List<WeiboClassify> findWeiBosByPage(@Param("date")String date,@Param("page")int page,@Param("emontion")String emontion,@Param("state")int state);
    
 
}