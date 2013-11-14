package br.edu.unifeob.hambriento.controllers;

import br.edu.unifeob.hambriento.entity.Cliente;
import br.edu.unifeob.hambriento.entity.Endereco;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cliente")
public class ClienteController {
    
    @RequestMapping("/cadastrar")
    public String index() {
        return "cadastro/cliente/index";
    }
    
    
    @RequestMapping("/salvar")
    public void salvarNovoCliente(Cliente cliente, Endereco endereco) {
        /*
            Falta apenas adicionar o metodo do dao, os objetos cliente e o endereco já vem carregados
        */
        
    }
}