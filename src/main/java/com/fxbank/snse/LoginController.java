package com.fxbank.snse;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/")
public class LoginController {
	@RequestMapping(value = "/login",method = {RequestMethod.POST,RequestMethod.GET})
	public String login(Model model){


		
		return "login";
	}
}
