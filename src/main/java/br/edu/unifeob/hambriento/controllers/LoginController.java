package br.edu.unifeob.hambriento.controllers;

import br.edu.unifeob.hambriento.dao.LoginDAO;
import br.edu.unifeob.hambriento.entity.Login;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = {"/login", "/login/"})
public class LoginController {

    @Resource
    private LoginDAO loginDAO;
    
    @RequestMapping(value = {"/index", "/"})
    public String index() {
        return "/login/index";
    }
    
    @RequestMapping(value = "/logon")
    public String logon(Login login, Model model){
        
        login = loginDAO.validate(login);
        
        if(login != null){
            return "redirect:/estabelecimento/listar";
        }else{
            model.addAttribute("msg", "Usuário e/ou Senha inválida!");
            return "/login/index";
        }
    }
}
