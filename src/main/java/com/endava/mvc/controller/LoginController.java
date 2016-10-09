package com.endava.mvc.controller;

import com.endava.mvc.model.AuthorizedUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class LoginController {

    private AuthorizedUser user;

	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		model.addAttribute("message", "Hi there! Please, log in if you want to access our secret page");
		return "index";
	}

    @RequestMapping(method = RequestMethod.POST)
    public String submit(Model model, @ModelAttribute("AuthorizedUser") AuthorizedUser user) {
            if (user.checkUser()) {
                model.addAttribute(user);
                return "welcome";
            } else {
                model.addAttribute("error", "Invalid Details");
                return "error";
            }
    }

}