package iuh.fit.se.springmvc.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {
	
	@RequestMapping("/showForm")
	public String showForm() {
		return "HelloWorld-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm() {
		return "HelloWorld";
	}
}
