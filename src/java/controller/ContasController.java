/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pessoas.Pessoa;

/**
 *
 * @author felipe
 */
@Controller 
public class ContasController {
    
    @RequestMapping("/contas")
    public String contas(){
        return "contas";
    }
    
    @RequestMapping("/contaPoupanca")
    public String novaContaPoupanca(){
        return "contas/contaPoupanca";
    }
    
    @RequestMapping("/contaCorrente")
    public String novaContaCorrente(){
        return "contas/contaCorrente";
    }
    
    @RequestMapping("/persistePessoa")
    public String persistePessoa(Model m, Pessoa p, HttpServletRequest request){
        
        ArrayList pessoas = new ArrayList();
        
        if(request.getSession().getAttribute("pessoas") != null)
            pessoas = (ArrayList)request.getSession().getAttribute("pessoas");
        
        pessoas.add(p);
        
        request.getSession().setAttribute("pessoas", pessoas);
        
        m.addAttribute("pessoa", p);
        return "contas/mensagemCadastro";
    }
    
    @RequestMapping("/depositar")
    public String depositar(){
        return "contas/depositar";
    }
    
    @RequestMapping("/sacar")
    public String sacar(){
        return "contas/sacar";
    }
    
    @RequestMapping("/persistirDeposito")
    public String persistirDeposito(@RequestParam("contas") int indice, @RequestParam("valor") double valor, HttpSession session) {

        ArrayList<Pessoa> pessoas = (ArrayList) session.getAttribute("pessoa");

        pessoas.get(indice - 1).setSaldo(pessoas.get(indice - 1).getSaldo() + valor);

        session.setAttribute("pessoa", pessoas);

        return "contas/mensagemDeposito";
    }
    
    @RequestMapping("/persistirSaque")
    public String persistirSaque(@RequestParam("contas") int indice, @RequestParam("valor") double valor, HttpSession session) {

        ArrayList<Pessoa> pessoas = (ArrayList) session.getAttribute("pessoa");

        pessoas.get(indice - 1).setSaldo(pessoas.get(indice - 1).getSaldo() - valor);

        session.setAttribute("pessoa", pessoas);

        return "contas/mensagemSaque";
    }
    
}
