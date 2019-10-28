package com.aaa.controller;

import com.aaa.entity.Paiban;
import com.aaa.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("main")
public class MainController {
    @Autowired
    private MainService mainService;
    @RequestMapping("one")
    @ResponseBody
    public Object one(){
        List<Paiban> one = mainService.one();
        return one;
    }
    @RequestMapping("two")
    @ResponseBody
    public Object two(){
        List<Paiban> two = mainService.two();
        return two;
    }
    @RequestMapping("three")
    @ResponseBody
    public Object three(){
        List<Paiban> three = mainService.three();
        return three;
    }
    @RequestMapping("four")
    @ResponseBody
    public Object four(){
        List<Paiban> four = mainService.four();
        return four;
    }
    @RequestMapping("five")
    @ResponseBody
    public Object five(){
        List<Paiban> five = mainService.five();
        return five;
    }
    @RequestMapping("six")
    @ResponseBody
    public Object six(){
        List<Paiban> six = mainService.six();
        return six;
    }
    @RequestMapping("seven")
    @ResponseBody
    public Object seven(){
        List<Paiban> seven = mainService.seven();
        return seven;
    }
}
