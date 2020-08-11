package com.yogiyo.demo.dao;

import java.util.List;

 

import org.apache.ibatis.annotations.Mapper;

 

import com.yogiyo.demo.vo.EnterpriseMemberVo;

 

@Mapper

public interface LoginDao {

       

        public List<EnterpriseMemberVo> selectListEnterpriseMember(EnterpriseMemberVo enterpriseMemberVo);

}