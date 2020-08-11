package com.yogiyo.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yogiyo.demo.dao.ClientDao;
import com.yogiyo.demo.vo.ClientVo;
import com.yogiyo.demo.vo.GrpMenuVo;
import com.yogiyo.demo.vo.RestaurantVo;

 

@Service

public class ClientServiceImpl implements ClientService {

        @Autowired
        ClientDao clientDao;

		@Override
		public void insertCvo(ClientVo cvo) throws Exception {
			clientDao.insertCvo(cvo);
		}

		@Override
		public void insertRvo(RestaurantVo rvo) throws Exception {
			clientDao.insertRvo(rvo);
		}

		@Override
		public void insertGropMenu(GrpMenuVo vo) throws Exception {
			clientDao.insertGropMenu(vo);
		}

		@Override
		public String maxGrpMenuNo() throws Exception {
			return clientDao.maxGrpMenuNo();
		}

}