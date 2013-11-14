package br.edu.unifeob.hambriento.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/compra")
public class CompraController {
    
       @RequestMapping(value = {"/index", "/"})
    public String index() {
        return "/compra/index";
    }
       @RequestMapping(value = "/confirmarEstabelecimento", method = RequestMethod.GET)
    public String confirmarEstabelecimento(){
        return "/compra/confirmarEstabelecimento/index";
    }
       @RequestMapping(value = "/escolherItensDoPedido", method = RequestMethod.GET)
    public String confirmarItensDoPedido(){
        return "/compra/escolherItensDoPedido/index";
    }
       @RequestMapping(value = "/confirmarEnderecoDeEntrega", method = RequestMethod.GET)
    public String confirmarEnderecoDeEntrega(){
        return "/compra/confirmarEnderecoDeEntrega/index";
    }
         @RequestMapping(value = "/escolherFormaDePagamento", method = RequestMethod.GET)
    public String escolherFormaDePagamento(){
        return "/compra/escolherFormaDePagamento/index";
    }
    
    
    
    
    
}
