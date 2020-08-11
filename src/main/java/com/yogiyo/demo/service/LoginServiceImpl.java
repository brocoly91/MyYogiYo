package com.yogiyo.demo.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

 

import com.yogiyo.demo.dao.LoginDao;

import com.yogiyo.demo.vo.EnterpriseMemberVo;

 

@Service

public class LoginServiceImpl implements LoginService {

       

        @Autowired

        LoginDao loginDao;

 

        @Override

        public List<EnterpriseMemberVo> selectListEnterpriseMember(EnterpriseMemberVo vo) {

               // TODO Auto-generated method stub

               return loginDao.selectListEnterpriseMember(vo);

        }

 

}