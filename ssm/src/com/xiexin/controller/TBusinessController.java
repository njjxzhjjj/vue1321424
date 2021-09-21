package com.xiexin.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.xiexin.bean.TBusiness;
import com.xiexin.service.TBusinessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/tBusiness")
public class TBusinessController {
    @Autowired
    private TBusinessService tBusinessService;

    //查询两张表
    @RequestMapping("/selectTwoTable")
    @ResponseBody//没这个注解不返回给前端JSON数据
    public Map selectTwoTable(){
        List<Map> maps=tBusinessService.selectTwoTable();
        Map codeMap=new HashMap();
        codeMap.put("code",0);
        codeMap.put("data",maps);
        return codeMap;
    }

    //添加一张表数据
    @RequestMapping("/insert")
    @ResponseBody//没这个注解不返回给前端JSON数据
    public Map inter(@RequestBody TBusiness tBusiness){
        System.out.println("tBusiness = " + tBusiness);
        Map codeMap=new HashMap();
        int i = tBusinessService.insertSelective(tBusiness);
        if(i==1){
            codeMap.put("code",0);
            codeMap.put("msg","添加成功！！");
        }else{
            codeMap.put("code",400);
            codeMap.put("msg","添加失败！！");
        }
        return codeMap;
    }

    //分页查询  //该分页可以分多表查询 只能用于mybatis
    @RequestMapping("/selectByPage")
    @ResponseBody//没这个注解不返回给前端JSON数据
    public Map selectByPage(@RequestParam(defaultValue = "1",required = true,name="page") Integer page,
                            @RequestParam(defaultValue = "3",required = true,name="pageSize")Integer pageSize){

        //分页 的第一种方法 只限于 mybaits
        //使用的是 pageHelper 分页，基于aop 拦截
        //page 是当前页 默认值是1   pageSize是条数
        //如果没有动态查询，直接让 example
        PageHelper.startPage(page,pageSize);//这个是pageHelper 拿到的前端参数
        List<TBusiness> tBusinesses = tBusinessService.selectByExample(null);//查询全部的数据
        PageInfo<TBusiness> pageInfo = new PageInfo<>(tBusinesses);//PageHelper运行拦截
        long total=pageInfo.getTotal();//拿到总条数
        Map codeMap=new HashMap();
        codeMap.put("code",0);
        codeMap.put("data",pageInfo);
        codeMap.put("total",total);
        return codeMap;
    }
}
