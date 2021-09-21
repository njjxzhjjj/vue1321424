<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/9/15
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
<html>
<head>
    <title>第一个 Vue demo</title>
</head>
<body>
<div>
    学习插值表达式{{}}
    Vue常用于 单个页面项目中，什么叫做单个页面项目，常用于手机移动端，指的是整个项目中只有一个页面
    通过错点来跳转。没有a标签，这个错点的跳转叫做 路由。
    单个页面的优缺点：
    优点：都是HTML 代码运行流畅，可以有很多的组件。可以重复使用
    缺点：不利于seo百度的收录

</div>
   <h1>讲解jQuery和我们的 vue的不同</h1>
   <div>
       jquery:他是dom 驱动的 ，所有看到的页面都要一行一行的把代码写出来，不是自动的是手动的
       <h2 id="jq-helloword">
           <%--//对比一下，在div中插入数据你好， 世界--%>

       </h2>
   </div>
<div id="app">
    vue因为是单页面的，所以必须只有1个根标签。以上的 h1和div都不归vue负责。<br>
    插值表达式：1、他可以直接调用js中的方法
              2、他可以进行计算
              3、可以用加号 做拼接  就是和加法计算 不同
              4、插值表达式，显示 对象的格式是 xxx点yyy
                5、插值表达式，可以做三元（三木）运算，非常非常重要
    <h2>
        {{sayHello}} <br>
        {{sayHello}}  的长度是 {{sayHello.length}} <br>
        {{sayEating}}<br>
        {{lightLine}}<br>
        {{apple.pname}} 的价格是：{{apple.price/1000}} 元/斤<br>
        {{apple.pname}} 的价格是：{{apple.price+" "+1000}} 元/斤<br>
        当前{{apple.pname}}的价格我{{ apple.price/1000>2.5 ? '太贵了，买不起，算你狠' :'好便宜呀,买买买'  }}<br>
        使用v-if,当前{{apple.pname}}的价格<br>

        <div v-if="apple.price/1000>2.5 ">
            <span style="color: red">太贵了，买不起，算你狠</span>
        </div>
        <div v-else-if="apple.price/1000>2 && apple.price/1000<=2.5 ">
            <span style="color: yellow">考虑一下</span>
        </div>

        <div v-else>
            <span style="color: green">好便宜呀,买买买</span>
        </div>

        <%--刚刚学完 Vue的表达式 那么就知道Vue的根本的核心是这样的，把数据显示到前端
        如果只使用插值表达式 显示数据，那么他的 显示数据的内容大概就是4种，如果 想要
        达到效果更加强的效果，那么插值表达式是不能够满足的。所以 就有了新的方式，叫做指令。
        因为前端界而是html的，插值表达式 他只能对文本信息做出数据的泣染。。，没有对标签做出数据的增强。
        那么我们就要学习更强的。就是叫做指令!!!!! 用来弥补和增强插值表达式的不足!
        比如说动态改变金钱的颜色，超过2.5元 是红色，低于2.5元是绿色。--%>
        <%--上面的改变颜色.不太好做出来，那么.我们就印出来了指令，指令是作用在 html. 标签上的。
        指令(Directives) 是带有v-.前缀的特殊，attribute。 指令attribute. 的值预期是单个. JavaScript表达式(v-for.是例外情况，稍后我们再讨论)
        指令的职责是，当表达式的值改变时，将其产生的连带影响，响应式地作用于DOM---%>

       <%-- 学习下面的指令：v-text v-html
        v-text 其实就是 插值 表达式--%>

        v-show 根据表达式之真假值，切换元素的 display CSS property。 当条件变化时该指令触发过渡效果。

        v-pre 跳过这个元素和它的子元素的编译过程。可以用来显示原始 Mustache 标签。跳过大量没有指令的节点会加快编译。
        <span v-text="apple.pname"></span> 的价格是：{{apple.price/1000}} 元/斤<br>
        <%--v-text的优点， 可以显示出data数据中的所有数据。--%>
        <span v-text="vtext"></span><br><%--v-text不编译文本中的html 信息--%>
        <span v-html="vhtml"></span><br><%--v-html不编译文本中的html 信息 一般这个用的多，场员是显示年龄超过50变红色。--%>
        <span>{{vtext}}</span><br><%--插值表达式 不编译文本中的html 信息--%>

       <%-- {{vtext}}想要正常显示{{}}中的内容 是不行的--%>
        <span v-pre>{{vtext}} hhh</span><br>  <%--显示正常的内容--%>
    </h2>

</div>
<script>
    //使用 jQuery
    $(function () {
        $("#jq-helloword").text("你好,世界");
        //jq的思想。 找到名称是idxox的DOM， 给他添加数据
        //如果我想改变显示效果，改成 你好，超市，需要 改变jq的代码。
        //那么比较繁琐，因为你好，世界，没有存 统一的变量的地方
        //var str=”你好，世界，njg:有个难题，数据没有统一的位置可以存储

        //学习vue,vue 和Java 很像很像
        var vm=new Vue({
            //new vue() 中，小括弧中，一般放到都是{},而大括弧就是json ,对象
            //这个大括弧中，放的就是vue的选项，选项在vue官网可以查看
            el:"#app"//把HTML中的div id为app 的dom元素作为了挂载点
                    //什么叫做挂载点: vue 是以数据驱动的， new vue中都是诞生数据
                    //有了数据， 就需要一个dom元素，显示数据，张三是源数据。
            ,data:{
                sayHello:"你好世界",
                sayEating:"加油，干饭",
                lightLine:"发射动感光波",
                apple:{
                    pid:15,
                    pname:"红宝石",//vue是数据驱动的 什么是数据驱动，就是数据
                    price:25000 //单价分---显示给前端后，显示成元
                },
                vtext:'<h1>你看我是标题吗</h1>',
                vhtml:'<h1>你看我是标题吗</h1>'
            }
        });
    })
</script>
</body>
</html>
