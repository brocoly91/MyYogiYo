package com.yogiyo.demo.service;

import java.util.List;

import com.yogiyo.demo.vo.ClientVo;
import com.yogiyo.demo.vo.GrpMenuVo;
import com.yogiyo.demo.vo.RestaurantVo;

 

public interface ClientService {

	public void insertCvo(ClientVo cvo) throws Exception;

	public void insertRvo(RestaurantVo rvo) throws Exception;

	public void insertGropMenu(GrpMenuVo vo) throws Exception;

	public String maxGrpMenuNo() throws Exception;

}