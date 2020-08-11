package com.yogiyo.demo.service;

import java.util.List;



import com.yogiyo.demo.vo.EnterpriseMemberVo;

 

public interface LoginService {

        List<EnterpriseMemberVo> selectListEnterpriseMember(EnterpriseMemberVo vo);

}