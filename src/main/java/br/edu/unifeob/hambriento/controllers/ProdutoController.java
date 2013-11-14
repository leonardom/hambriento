package br.edu.unifeob.hambriento.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/produto")
public class ProdutoController {

    @RequestMapping("/cadastrar")
    public String cadastrar() {
        return "/cadastro/produto/index";
    }
}