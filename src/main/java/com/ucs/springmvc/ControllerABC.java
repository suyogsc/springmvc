package com.ucs.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class ControllerABC {

	@RequestMapping("/")
	public String index() {

		return "index";
	}

	@RequestMapping("main-menu")
	public String menu() {

		return "main-menu";
	}

	@RequestMapping("submit")
	public String homePage() {

		return "home";
	}

	

	/*
	 * @RequestMapping("processForm") public String processForm(HttpServletRequest
	 * httpServletRequest, Model model) {
	 * 
	 * String name = httpServletRequest.getParameter("name"); name =
	 * name.toUpperCase(); model.addAttribute("message", "heyy..." + name);
	 * 
	 * return "home"; }
	 */
	@RequestMapping("processForm")
	public String processForm(@RequestParam("name") String name, Model model) {

		
		name = name.toUpperCase();
		model.addAttribute("message", "heyy...man......." + name);

		return "home";
	}
}
