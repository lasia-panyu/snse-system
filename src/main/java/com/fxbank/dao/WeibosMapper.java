package com.fxbank.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.fxbank.model.Weibo;
import com.fxbank.model.Weibos;
@Service
public interface WeibosMapper {
    int insert(Weibos record);

    int insertSelective(Weibos record);
    List<Weibos> findWeiBosByPage(@Param("date")String date,@Param("page")int page,@Param("emontion")String emontion,@Param("state")int state);
    int selectCount(@Param("date")String date,@Param("classify")int classify);
}