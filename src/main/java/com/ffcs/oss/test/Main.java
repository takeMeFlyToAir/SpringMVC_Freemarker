package com.ffcs.oss.test;

import com.ffcs.oss.domain.UserVO;
import com.ffcs.oss.utils.ObjectUtil;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by sjgtw-zzr on 2017/12/28.
 */
public class Main {
    public static void main(String[] args) throws Exception {
        UserVO userVO = new UserVO();
        userVO.setAccount("zzr");
        userVO.setId(1);
        userVO.setName("zzr");
        Map<String,Object> dataMap = ObjectUtil.objectToMap(userVO);
        System.out.println(dataMap.get("id"));
        boolean a = false;

    }
}
