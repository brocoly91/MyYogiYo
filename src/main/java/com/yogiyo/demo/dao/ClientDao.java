package com.yogiyo.demo.dao;

import java.util.List;

 

import org.apache.ibatis.annotations.Mapper;

import com.yogiyo.demo.vo.ClientVo;
import com.yogiyo.demo.vo.GrpMenuVo;
import com.yogiyo.demo.vo.RestaurantVo;

 

@Mapper

public interface ClientDao {

		public void insertCvo(ClientVo cvo);

		public void insertRvo(RestaurantVo rvo);

		public void insertGropMenu(GrpMenuVo vo);

		public String maxGrpMenuNo();

}