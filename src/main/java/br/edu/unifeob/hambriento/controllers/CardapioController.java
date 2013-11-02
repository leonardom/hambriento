package br.edu.unifeob.hambriento.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cardapio")
public class CardapioController {
    
       @RequestMapping(value = {"/index", "/"})
    public String index() {
        return "/cardapio/index";
    }
}