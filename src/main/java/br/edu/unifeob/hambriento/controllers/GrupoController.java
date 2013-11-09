package br.edu.unifeob.hambriento.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/grupo")
public class GrupoController {
    
       @RequestMapping(value = {"/index", "/"})
    public String index() {
        return "/cadastro/grupo/index";
    }
}