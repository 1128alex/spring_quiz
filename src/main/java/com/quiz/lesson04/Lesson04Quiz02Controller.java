package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson04.bo.RealtorBO;
import com.quiz.lesson04.model.Realtor;

@RequestMapping("/lesson04/quiz02")
@Controller
public class Lesson04Quiz02Controller {

	@Autowired
	private RealtorBO realtorBO;

	@GetMapping("/add_realtor_view")
	public String addRealtor() {
		return "lesson04/add_realtor";
	}

	@PostMapping("/add_realtor")
	public String afterAddRealtor(@ModelAttribute Realtor realtor, Model model) {
		// insert
		realtorBO.addRealtor(realtor);

		// select
		Realtor realtor1 = realtorBO.getRealtorById(realtor.getId());
		model.addAttribute("realtor", realtor1);

		return "lesson04/check_realtor";
	}

}
