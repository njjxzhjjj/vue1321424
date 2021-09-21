package com.xiexin.controller;

import com.xiexin.bean.TType;
import com.xiexin.service.TTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/type")
public class TTypeController {
    @Autowired
    private TTypeService tTypeService;
    //全查的数据接口，给我们的前端使用
    //注意 给数据 直接用JSON 不再 转发和 el/jstl表达式
    @RequestMapping("/selectAll")
    @ResponseBody
    public Map selectAll() {
        //调用service层 ....
        List<TType> tTypes = tTypeService.selectByExample(null);
        Map map = new HashMap();
        map.put("code", 0);
        map.put("data", tTypes);
        return map;
    }
}
