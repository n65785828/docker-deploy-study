package top.learn.docker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import top.learn.docker.entity.User;
import top.learn.docker.mapper.UserMapper;

@RestController
public class IndexController {

    @Autowired
    private UserMapper userMapper;
    @GetMapping("/test")
    public User test(){
        User user = userMapper.findById("1");
        return user;
    }
}
