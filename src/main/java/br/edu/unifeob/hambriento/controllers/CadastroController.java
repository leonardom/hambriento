package br.edu.unifeob.hambriento.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cadastro")
public class CadastroController {
    
    @RequestMapping(value = {"/inicial", "/"})
    public String inicial() {
        return "cadastro/cadastroInicial/index";
    }
}
