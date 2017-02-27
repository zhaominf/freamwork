package freamwork.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloWord {
	
	@RequestMapping("/hello")
	public String sayHello()
	{
		return "main";
	}

}
