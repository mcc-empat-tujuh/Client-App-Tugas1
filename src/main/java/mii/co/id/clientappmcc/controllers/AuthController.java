/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mii.co.id.clientappmcc.controllers;

import mii.co.id.clientappmcc.models.AuthRequest;
import mii.co.id.clientappmcc.services.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author WAHYUK
 */
@Controller
public class AuthController {

    @Autowired
    private AuthService authService;

    @GetMapping("/login")
    public String loginPage(Model model) {
        String redirectUrl = "";
        AuthRequest authRequest = new AuthRequest();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        model.addAttribute("auth", authRequest);
        if (auth.getName().equals("anonymousUser")) {
            return "login";
        }
        
        return "redirect:/dashboard";

    }

    @PostMapping("/login")
    public String loginProcess(@ModelAttribute("auth") AuthRequest auth) {
        String redirectUrl = "";

        if (authService.loginProcess(auth)) {
            redirectUrl = "redirect:/dashboard";
        } else {
            redirectUrl = "redirect:/login?error";
        }

        return redirectUrl;
    }

    @GetMapping("/dashboard")
    public String dashborad(Model model) {
        return "dashboard";
    }
}
