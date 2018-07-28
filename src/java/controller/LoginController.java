/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pessoas.Login;

/**
 *
 * @author felipe
 */
@Controller
public class LoginController {
    
    @RequestMapping("/validaLogin")
    public String validaLogin(@RequestParam("login") String login, @RequestParam("senha") String senha, HttpSession sessao, HttpServletResponse response) throws IOException {
        Login meuLogin;
        meuLogin = new Login();

        if ( (login.equals(meuLogin.LOGIN)) && (senha.equals(meuLogin.SENHA)) ) {
            sessao.setAttribute("statusLogin", "logado");
            response.sendRedirect("pessoas");
        }
        return "login";
    }
    
    @RequestMapping("/login")
    public String login(){
        return "login";
    }
    
    @RequestMapping("/sair")
    public String sair(){
        return "sair";
    }
    
    public String validaLogin(HttpSession session, String view) {
        if (session.getAttribute("statusLogin") == null) {
            return "login";
        } else {
            return view;
        }
    }
    
}
