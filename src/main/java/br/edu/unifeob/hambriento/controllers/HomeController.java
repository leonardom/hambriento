package br.edu.unifeob.hambriento.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class HomeController {
    
    @RequestMapping(value = {"/index", "/"})
    public String index() {
        return "/home/index";
    }
}
