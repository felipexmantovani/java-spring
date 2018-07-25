/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pessoas;

import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author felipe
 */
public class LoginController {
    
    @RequestMapping("/login")
    public String login(){
        return "login";
    }
    
    @RequestMapping("/sair")
    public String sair(){
        return "sair";
    }
    
}
