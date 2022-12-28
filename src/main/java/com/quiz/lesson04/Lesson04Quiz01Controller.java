package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson04.bo.SellerBO;

@Controller
@RequestMapping("/lesson04/quiz01")
public class Lesson04Quiz01Controller {

	@Autowired
	private SellerBO sellerBO;

	@RequestMapping(path = "/1", method = RequestMethod.GET)
	public String addSellerView() {
		return "lesson04/add_seller";
	}

	@PostMapping("/2")
	public String addSeller(@RequestParam("nickname") String nickname, @RequestParam("profileUrl") String profileUrl,
			@RequestParam("temp") double temp) {
		sellerBO.addSeller(nickname, profileUrl, temp);
		return "lesson04/after_add_seller";
	}

}
