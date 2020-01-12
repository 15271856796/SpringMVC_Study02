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

</head>
<body>
    <%--处理方法的返回结果是字符串String--%>
    <a href="user/testString" >testString</a>
    <br/>
    <br/>

    <%--处理方法的返回结果是void--%>
    <a href="user/testVoid" >testVoid</a>
    <br/>
    <br/>

    <%--处理方法的返回结果是ModelAndView--%>
    <a href="user/testModelAndView" >testModelAndView</a>
    <br/>
    <br/>


    <%--处理方法的返回结果是字符串型,但是返回的是关键字Forward或者是Redirect--%>
    <a href="user/testForwardOrRedirect" >testForwardOrRedirect</a>

    <br/>
    <br/>
    <br/>


</body>
</html>
