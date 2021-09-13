package com.ucs.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ucs")
public class ControllerDemo {


	@RequestMapping("/")
	public String index() {

		return "index";
	}

}
