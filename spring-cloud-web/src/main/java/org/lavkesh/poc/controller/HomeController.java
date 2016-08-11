
package org.lavkesh.poc.controller;

import java.util.Map;

import org.lavkesh.poc.feign.AuthenticateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	@Autowired
	AuthenticateService authenticateService;
	
	@RequestMapping("/")
	public String welcome(Map<String, Object> model) {
		return "redirect:/index.html";
	}
	
	@RequestMapping("/applicationName")
	public @ResponseBody String getApplicationName() {
		return authenticateService.getApplicationName();
	}
}
