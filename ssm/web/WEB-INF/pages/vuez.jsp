<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/9/17
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
</head>
<body>
  <div id="app">
      请添加水果名称：<input type="text" v-model="name"  @input="inputlength" >字符长度<span>{{name.length}}</span> <br>
      请添加水果价格：<input type="text"  v-model="price">分 <br>
      请添加水果数量：<input type="text"  v-model="num" value="0">个
      <input type="button" value="-"  style="height: 20px;width: 20px" @click="jian()">
      <input type="text" v-model:value="num">
      <input type="button" value="+"  style="height: 20px;width: 20px" @click="jia()"><br>
      因为是number所以没有长度:0<br>
      自动算水果价格：{{price/100*num}}元 <br>
      请添加水果简介：<br>
      <textarea cols="20" rows="10"></textarea><br>
      请添加水果有无包装盒：<input type="radio" id="one" value="有" v-model="picked">
                         <label for="one">有</label>
                        <input type="radio" id="two" value="没有" v-model="picked">
                            <label for="two">没有</label>
                        <span> {{ picked }}</span>
                         <br>
      请添加水果状态(下拉):<select v-on:click="friut()" v-model="selecte">
                         <option v-for="(item,index) in friuts" :key="friuts.id"  :value="item.id" selected="name">{{item.name}}</option>
                        </select>
                        选中的水果状态是:<span>{{selecte}}</span>
                          <br>
      请添加水果口味(多选)：<br>
      <input type="checkbox" id="jack" value="1" v-model="checkedNames">
      <label for="jack">酸甜</label><br>
      <input type="checkbox" id="john" value="2" v-model="checkedNames">
      <label for="john">酸</label><br>
      <input type="checkbox" id="mike" value="3" v-model="checkedNames">
      <label for="mike">甜</label><br>
      <input type="checkbox" id="mike0" value="4" v-model="checkedNames">
      <label for="mike0">苦涩</label><br>
      <input type="checkbox" id="mike1" value="5" v-model="checkedNames">
      <label for="mike1">臭中香如榴莲</label>
      <br>
      <span>选中的口味代码: {{ checkedNames }}</span>

  </div>
<script>
    var vm =new Vue({
        el:"#app",
        data:{
            name:'',
            price:'',
            num:0,
            picked: '',

        friuts:[
        ],
        selecte:'',
            checkedNames: []
        },
        methods:{
            inputlength:function(){
                var length=this.name.length;
                if(length>7){
                    //alert("名字太长了")
                    this.friuts.push(this.name),
                        //点击回车键清空input里面的文字
                        this.name=''
                }

            },
            friut:function () {
                //alert("弹框")
                var arr=[
                    {
                        id:1,
                        name:"苹果",
                    },
                    {
                        id:2,
                        name:"梨",

                    },
                    {
                        id:3,
                        name:"橘子",

                    },

                ]
                this.friuts=arr;
            },
            jia:function (num) {
                if(this.num>0){
                    this.num++
                }
            },
            jian:function (num) {
                if(this.num>0){
                    this.num--
                }
            },
        }
    })
</script>
</body>
</html>
