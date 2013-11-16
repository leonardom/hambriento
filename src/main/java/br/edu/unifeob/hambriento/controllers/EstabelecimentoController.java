package br.edu.unifeob.hambriento.controllers;

import br.edu.unifeob.hambriento.dao.EnderecoDAO;
import br.edu.unifeob.hambriento.dao.EspecialidadeDAO;
import br.edu.unifeob.hambriento.entity.Especialidade;
import br.edu.unifeob.hambriento.entity.Estabelecimento;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/estabelecimento")
public class EstabelecimentoController {

    @Resource
    private EnderecoDAO enderecoDAO;
    @Resource
    private EspecialidadeDAO especialidadeDAO;
    @Resource
    //private EstabelecimentoDAO estabelecimentoDAO;

    @RequestMapping("/cadastrar")
    public String cadastrar() {
        return "cadastro/estabelecimento/index";
    }

    @RequestMapping("/listar")
    public String listar(@RequestParam(required = false) List<Integer> especialidades, String cidade, Model model) {
        List<String> cidades = enderecoDAO.listaCidadeDiferentes();
        List<Especialidade> especs = especialidadeDAO.list(Especialidade.class);

        model.addAttribute("cidades", cidades);
        model.addAttribute("especialidades", especs);

        if (especialidades != null || cidade != null) {
            //List<Estabelecimento> estabelecimentos = estabelecimentoDAO.listaComFiltros(cidade, especialidades);
            //model.addAttribute("estabelecimentos", estabelecimentos);
        }

        return "listagem/estabelecimento/index";
    }
}
