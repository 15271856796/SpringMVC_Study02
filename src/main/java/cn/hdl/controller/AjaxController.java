package cn.hdl.controller;

import cn.hdl.domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/ajax")
public class AjaxController {
    /**
     * 模拟异步请求响应,异步请求得到后端响应数据之后,进行局部的刷新
     */
    @RequestMapping("/testAjax")
    public @ResponseBody
    User testAjax(@RequestBody User user){
        System.out.println("testAjax方法执行了...");
        // 客户端发送ajax的请求，传的是json字符串，后端把json字符串封装到user对象中,通过使用@RequestBody 以及导入的json相关的坐标
        System.out.println(user);
        // 准备做响应，也就是模拟查询数据库,然后将数据返回
        user.setUsername("haha");
        user.setAge(40);
        // 做响应 ,你返回的是对象,但是AJAX请求要接收的是json串形式,所以怎么把对象转成json呢,
        // springmvc的框架也已经帮我们做了,我们只需要在处理方法前加一个@ResponseBody注解,就可以实现将对象转成json穿,像@RequestBody一样,将json串转对象
        return user;
    }



}
