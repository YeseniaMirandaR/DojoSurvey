package com.codingdojo.survey;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.survey.models.Survey;

@Controller

public class HomeController {
	private String[] getLanguages() {
		return new String[] {
			"C#", "C++", "Java", "Python"
		};
	}
	private String[] getLocations() {
		return new String[] {
			"Caracas", "CDMX", "La Paz", "Montevideo", "San José", "Santiago", "Online", "Quito" 
		};
	}
	@RequestMapping("/")
	public String Index(Model model) {
		model.addAttribute("locations", getLocations());
		model.addAttribute("languages", getLanguages());
		System.out.println(getLanguages()+"Que tipo de dato es?");
		return "index.jsp";

	}
	@RequestMapping(value="/result", method=RequestMethod.POST)
	public String Results(@RequestParam(value="name") String nombre, 
			@RequestParam(value="location") String lugar,
			@RequestParam(value="language") String idioma,
			@RequestParam(value="comment") String comentario,
			Model modelo){
		String comparacion = "Java";
		if(idioma.equals(comparacion)) {
			modelo.addAttribute("result", new Survey (nombre, lugar, idioma, comentario));
			return "javapage.jsp"; 		
		}
		//else {
			modelo.addAttribute("result", new Survey (nombre, lugar, idioma, comentario));
			return "result.jsp"; 	
		//}
	
	}
}
