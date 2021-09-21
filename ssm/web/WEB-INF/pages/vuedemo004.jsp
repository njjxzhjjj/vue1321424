<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/9/17
  Time: 14:54
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

    <%--form:post tab键--%>
        <%--@submit.prevent="onSubmit()  阻止--%>
    <form action="https://www.baidu.com" method="post" @submit.prevent="onSubmit" id="myForm">
        账号：<input type="text" name="adminName"><br>
        密码：<input type="password" name="adminPwd"><br>
        <input type="submit" value="登录">
    </form>
    </div>
<script>
    var vm=new Vue({
        el:'#app',
        methods:{
            onSubmit:function (e) {
                //凡是事件都可以有个e  写e的时候 onSubmit()不加 ()
                console.log(e)
                console.log(e.target) //查看源数据  可以通过e.target 拿到标签中的dom元素
                var form=document.getElementById('myForm')
                console.log(form)
                //拿取form 表单中的数据
               // var formData=new FormData(form);
                var formData=new FormData(e.target);
                console.log(formData.get('adminName'))  //脱离了jQuery

                //练习：引入axios  写个ajax 发送到 通过 post发送到百度
                axios.get('https://www.baidu.com')
                    .then(function (response) {  //ajax中的success
                        console.log(response.data.data);  // vue
                    })
                    .catch(function (error) { //ajax中的error
                        console.log(error);
                    });
                return false;
            }
        }

    })
</script>
</body>
</html>
