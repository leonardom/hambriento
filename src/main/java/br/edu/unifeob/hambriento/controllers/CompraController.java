package br.edu.unifeob.hambriento.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/compra")
public class CompraController {
    
       @RequestMapping(value = {"/index", "/"})
    public String index() {
        return "/compra/index";
    }
}