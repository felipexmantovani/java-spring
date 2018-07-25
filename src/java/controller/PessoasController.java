/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pessoas.Pessoa;

/**
 *
 * @author felipe
 */
@Controller 
public class PessoasController {
    
    @RequestMapping("/pessoas")
    public String pessoas(){
        return "pessoas/pessoas";
    }
    
    @RequestMapping("/cadastroPessoas")
    public String cadastroPessoas(){
        return "pessoas/cadastroPessoas";
    }
    
    @RequestMapping("/persistirPessoa")
    public String persistirPessoa(Model m, Pessoa p, HttpServletRequest request){
        
        ArrayList pessoa = new ArrayList();
        
        if(request.getSession().getAttribute("pessoa") != null)
            pessoa = (ArrayList)request.getSession().getAttribute("pessoa");
        
        pessoa.add(p);
        
        request.getSession().setAttribute("pessoa", pessoa);
        
        m.addAttribute("pessoa", p);
        
        return "pessoas/mensagemCadastro";
    }
    
}
