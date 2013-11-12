package br.edu.unifeob.hambriento.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/grupo")
public class GrupoController {
    
    @RequestMapping("/cadastrar")
    public String cadastrar() {
        return "/cadastro/grupo/index";
    }
}