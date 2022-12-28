package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson04.bo.SellerBO;
import com.quiz.lesson04.model.Seller;

@RequestMapping("/lesson04/quiz01")
@Controller
public class Lesson04Quiz01Controller {

	@Autowired
	private SellerBO sellerBO;

	@RequestMapping(path = "/add_seller", method = RequestMethod.GET)
	public String addSellerView() {
		return "lesson04/add_seller";
	}

	@PostMapping("/2")
	public String addSeller(@RequestParam("nickname") String nickname, @RequestParam("profileUrl") String profileUrl,
			@RequestParam("temp") Double temp) {
		sellerBO.addSeller(nickname, profileUrl, temp);
		return "lesson04/after_add_seller";
	}

	@GetMapping("/seller_info")
	public String getLastSeller(@RequestParam(value = "id", required = false) Integer id, Model model) {
		Seller seller = null;
		if (id == null) {
			seller = sellerBO.getLastSeller();
			model.addAttribute("seller", seller);
		} else {
			seller = sellerBO.getSellerById(id);
		}
		model.addAttribute("seller", seller);

		return "lesson04/last_seller_info";
	}

}
