package br.edu.unifeob.hambriento.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cliente")
public class ClienteController {
    
    @RequestMapping("/cadastrar")
    public String index() {
        return "cadastro/cliente/index";
    }
}