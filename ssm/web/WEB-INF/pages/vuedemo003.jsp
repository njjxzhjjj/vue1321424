<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/9/16
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>v-on v-show v-for</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
</head>
<body>
        <div id="app">
            <%--v-on 后面接的是 HTML中是事情，而v-bind 接的是HTML中的属性--%>
            <input type="button" value="点击在ul中显示葫芦娃的列表" v-on:click="showHulouwu()">
           <ul>
               <li v-for="(item,index) in hulus" :key="hulus.id">{{item.name}}</li>
           </ul>

                <%--作业第一种 点击事件--%>
           <%-- <select name="" v-on:click="showHulouwu()" v-model="selecte">
                <option v-for="(item,index) in hulus" :key="hulus.id" :value="item.spell">{{item.name}}</option>
            </select>

            技能：<textarea cols="20" rows="10">{{selecte}}</textarea>
--%>
           <%--作业第二种 选中事件--%>
            <select v-on:change="selectwawa(hulusspell)" v-model="hulusspell">
                <option v-for="(item,index) in hulus" :value="item.spell">{{item.name}}</option>
            </select>
            <span>{{hulusspell}}</span><br>

            <%--v-show  true 显示前端内容/代码    false不显示前端内容/代码--%>
                <%--v-show 不支持<template> 元素--%>
            <span v-show="ok">你看到我了吗</span><br>
        </div>

    <script>
     var vm =new Vue({
         el:"#app",
         data:{
             hulus:[
             ],
             //selecte:' '
             hulusspell:'',
             ok:false   //true 显示内容 false不显示内容
         },
         methods:{
             showHulouwu:function () {
                 //alert("弹框")
                 var arr=[
                     {
                         id:1,
                         name:"大娃",
                         spell:"变大，力大无穷",
                     },
                     {
                         id:2,
                         name:"二娃",
                         spell:"千里眼，顺风耳",
                     },
                     {
                         id:3,
                         name:"三娃",
                         spell:"铜头铁臂",
                     },
                     {
                         id:4,
                         name:"四娃",
                         spell:"火娃",
                     },
                     {
                         id:6,
                         name:"六娃",
                         spell:"隐身",
                     }
                 ]
                 this.hulus=arr;
             },

             selectwawa:function (hulusspell) {
                 console.log("我选中了一个娃娃....."+hulusspell);
             }
         }

     })
        </script>

</body>
</html>
