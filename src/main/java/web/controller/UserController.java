package web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import web.service.UserService;

@Controller
public class UserController {

    private UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping(value = "/hello")
    public ModelAndView welcomePage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("hello");
        return modelAndView;
    }

    @GetMapping(value = "/login")
    public ModelAndView loginPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }
}