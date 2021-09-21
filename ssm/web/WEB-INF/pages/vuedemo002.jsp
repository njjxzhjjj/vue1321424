<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/9/16
  Time: 16:19
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
    <%--vue需要一个根目录 的标签--%>
    <div id="app">
      <%--讲解一个概念，双向绑定，数据和页面的展示的数据效果是一致的
       当Vue 中data的数据发生了改变，那么展示的效果也发生改变--%>

        姓名(以前这么写的)：<input type="text" value="小黑"><br>
         <%-- vue 的核心是把数据渲染到HTML中 ，分为标签和文本
          那么文本，是用插值表达式--%>
          姓名:{{name}}<br>

          <%--下面就是渲染到标签中--%>
          <%--v-bind 是绑定标签的属性的，一经过绑定就是动态的，就要写data的key  单向绑定--%>
        vue-姓名的单向绑定：<input type="text" v-bind:value="name"><br>
        vue-姓名的单向绑定  v-bind的缩写：<input type="text" :value="name"><br>
         <%--以上是数据的单项绑定，数据绑定到了显示效果--%>

          vue-姓名的双向绑定：<input type="text" v-model="name"><br>
          <%--v-model双向绑定作用在4个 范国上input 标签，select 标签textarea标签 ，components组件--%>
      <%-- v-model是v-bind 的升级版，其本质是一一个语法糖。 什么是语法糖,
          java中for循环就是一个语法糖，for 循环的本质就是while循环，语法糖 就是简化了代码的书写--%>
        <%--只渲染一次的指令，v-once--%>
        姓名渲染一次：<span v-once>{{name}}</span><br>
    </div>

     <script>
         var vm=new Vue({
             el:"#app",
             data:{
                 name:"小黑1111"
             },
         });
     </script>
</body>
</html>
