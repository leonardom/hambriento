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
    @RequestMapping(value = {"/cliente", "/"})
    public String cliente() {
        return "cadastro/cliente";
    }
   @RequestMapping(value = {"/estabelecimento", "/"})
    public String estabelecimento() {
        return "cadastro/estabelecimento";
    }
}
