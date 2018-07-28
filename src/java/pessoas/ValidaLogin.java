/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pessoas;

import javax.servlet.http.HttpSession;

/**
 *
 * @author felipe
 */
public class ValidaLogin {

    public String validadorLogin(HttpSession session, String view) {
        //return session.getAttribute("statusLogin") == "logado";
        if (session.getAttribute("statusLogin") == null) {
            return "login";
        } else {
            return view;
        }
    }
}
