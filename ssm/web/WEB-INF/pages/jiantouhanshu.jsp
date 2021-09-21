<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/9/18
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学习es6的箭头函数</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
</head>
<body>
古老的写法：<br>
    X:<input type="text" id="xInput" value="5"> + y:<input type="text" id="yInput" value="10">=<span id="sumSpan"></span><br>
箭头函数的写法：<br>
   m: X:<input type="text" id="mInput" value="5"> + n:<input type="text" id="nInput" value="10">=<span id="sumSpanJianTou"></span><br>
    <script>
      $(function () {
          var num1=$("#xInput").val();
          var num2=$("#yInput").val();
          console.log(sum(num1,num2));
          $("#sumSpan").text(sum(num1,num2));

          //箭头函数
          var jianSum=(num1,num2) => {num1*num2};  //写的是对的 没有编译 vue可以...
          $("#sumSpanJianTou").text(jianSum);
      })

      //古老函数
        function sum(num1,num2) {
            return num1*num2;
        }

        //当箭头的形参是一个  的是 可以省略 括号
        function mySub(num) {
            return num;
        }
        //省略成
        var mySub1=numx => numx;

    </script>
</body>
</html>
