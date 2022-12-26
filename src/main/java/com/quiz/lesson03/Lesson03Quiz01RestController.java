package com.quiz.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;
import com.quiz.lesson03.model.RealEstate;

@RestController
public class Lesson03Quiz01RestController {

	@Autowired

	private RealEstateBO realEstateBO;

	@RequestMapping("/lesson03/quiz01/11")
	public RealEstate ex01() {
		return realEstateBO.getRealEstate();
	}
}
