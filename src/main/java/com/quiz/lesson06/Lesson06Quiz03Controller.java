package com.quiz.lesson06;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson06.bo.BookingBO;
import com.quiz.lesson06.model.Booking;

@RequestMapping("/lesson06/quiz03")
@Controller
public class Lesson06Quiz03Controller {

	@Autowired
	private BookingBO bookingBO;

	@GetMapping("/1")
	public String gotoListPage(Model model) {

		List<Booking> bookings = bookingBO.getBookingList();
		model.addAttribute("bookings", bookings);

		return "lesson06/quiz03/listPage";
	}

	@GetMapping("/2")
	public String gotoReservePage() {
		return "lesson06/quiz03/reservePage";
	}

	@GetMapping("/3")
	public String gotoCheckReservePage() {
		return "lesson06/quiz03/checkReservePage";
	}

}
