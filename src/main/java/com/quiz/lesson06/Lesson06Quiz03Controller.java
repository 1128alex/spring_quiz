package com.quiz.lesson06;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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

	@ResponseBody
	@DeleteMapping("/delete_reserve")
	public Map<String, Boolean> deleteReserve(int id) {

		Boolean isDeleted = bookingBO.deleteReserve(id);

		Map<String, Boolean> result = new HashMap<>();
		result.put("isDeleted", isDeleted);

		return result;
	}

	@GetMapping("/2")
	public String gotoReservePage() {
		return "lesson06/quiz03/reservePage";
	}

	@ResponseBody
	@PostMapping("/reserve")
	public Map<String, Object> insertReserve(@ModelAttribute Booking booking) {
		Boolean isSuccess = bookingBO.addReserve(booking);

		Map<String, Object> result = new HashMap<>();
		result.put("isSuccess", isSuccess);
		if (booking != null) {
			result.put("booking", booking);
			result.put("code", 1);
		} else {
			result.put("code", 500);
		}

		return result;

	}

	@GetMapping("/3")
	public String gotoCheckReservePage() {
		return "lesson06/quiz03/checkReservePage";
	}

	@ResponseBody
	@GetMapping("/check_reserve")
	public Booking checkReserve(@RequestParam("name") String name, @RequestParam("phoneNumber") String phoneNumber) {

		Booking result = bookingBO.getAlertInfo(name, phoneNumber);

		return result;
	}

}
