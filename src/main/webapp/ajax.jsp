<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/1
  Time: 1:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
   <%-- // 引入Jqurey--%>
    <script src="js/jquery.min.js"></script>

    <script>
        // 页面加载，绑定单击事件
        $(function(){
            $("#btn").click(function(){
                //alert("hello btn");
                // 发送ajax请求
                $.ajax({
                    // 编写json格式，设置属性和值
                    url:"ajax/testAjax",      //请求路径,也就是requemapping里的值
                    contentType:"application/json;charset=UTF-8",   //发送数据编码类型
                    data:'{"username":"hehe","password":"123","age":30}',  //发到服务器的数据
                    dataType:"json",   //服务器的返回值
                    type:"post",  //请求方式 默认是get
                    success:function(data){
                        // data是服务器端响应的json的数据，进行解析
                        alert(data);
                        alert(data.username);
                        alert(data.password);
                        alert(data.age);
                    }
                });

            });
        });

    </script>

</head>
<body>

<%--Jquery页面的异步请求AJAX的编写--%>
<button id="btn">发送ajax的请求</button>

</body>
</html>
