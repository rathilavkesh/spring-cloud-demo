package org.lavkesh.poc.feign;

import org.lavkesh.poc.model.LoginForm;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@FeignClient("security-service")
public interface AuthenticateService {

	@RequestMapping(value = "/authenticate", method = RequestMethod.POST, consumes = "application/json")
	boolean authenticate(LoginForm loginForm);
	
	@RequestMapping(value = "/applicationName", method = RequestMethod.GET, consumes = "application/json")
	String getApplicationName();

}


