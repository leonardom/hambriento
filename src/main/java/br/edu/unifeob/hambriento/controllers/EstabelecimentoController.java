package br.edu.unifeob.hambriento.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/estabelecimento")
public class EstabelecimentoController {
    
       @RequestMapping(value = {"/index", "/"})
    public String cadastrar() {
        return "cadastro/estabelecimento/index";
    }
    
           @RequestMapping(value = {"/listar", "/"})
    public String listar() {
        return "listagem/estabelecimento/index";
    }
}
