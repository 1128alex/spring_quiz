package com.quiz.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.BookingDAO;
import com.quiz.lesson06.model.Booking;

@Service
public class BookingBO {

	@Autowired
	private BookingDAO bookingDAO;

	public List<Booking> getBookingList() {
		return bookingDAO.selectBookingList();
	}

	public Boolean deleteReserve(int id) {
		return bookingDAO.deleteReserve(id);
	}

	public Booking getAlertInfo(String name, String phoneNumber) {
		return bookingDAO.getAlertInfo(name, phoneNumber);
	}

	public Boolean addReserve(Booking booking) {
		return bookingDAO.insertReserve(booking);
	}

}
