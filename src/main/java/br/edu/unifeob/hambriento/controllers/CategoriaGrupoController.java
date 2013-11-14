package br.edu.unifeob.hambriento.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/categoria")
public class CategoriaGrupoController {
    
    @RequestMapping("/cadastrar")
    public String cadastrar() {
        return "/cadastro/categoria/index";
    }
}