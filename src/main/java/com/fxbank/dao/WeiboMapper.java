package com.fxbank.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fxbank.model.Weibo;
@Service
public interface WeiboMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Weibo record);

    int insertSelective(Weibo record);

    Weibo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Weibo record);

    int updateByPrimaryKeyWithBLOBs(Weibo record);

    int updateByPrimaryKey(Weibo record);
    List<Weibo> findWeiBosByPage(int page);
    int selectCount(int state);
}