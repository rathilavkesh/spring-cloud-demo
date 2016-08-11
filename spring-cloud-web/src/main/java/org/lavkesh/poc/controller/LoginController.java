package org.lavkesh.poc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.lavkesh.poc.feign.AuthenticateService;
import org.lavkesh.poc.model.LoginForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;

@RestController
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	AuthenticateService authenticateService;
	
	@RequestMapping("/authenticate")
	@HystrixCommand(fallbackMethod="loginFailed")
	public Map<String , Object> login(@Valid @RequestBody LoginForm loginForm) {
		boolean authenticate = authenticateService.authenticate(loginForm);
		Map<String , Object> message = new HashMap<>();
		message.put("status", authenticate);
		return message;
	}
	
	public Map<String , Object> loginFailed(LoginForm loginForm) {
		Map<String , Object> message = new HashMap<>();
		message.put("status", false);
		return message;
	}
	
}
