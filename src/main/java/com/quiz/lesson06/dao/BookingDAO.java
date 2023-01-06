package com.quiz.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson06.model.Booking;

@Repository
public interface BookingDAO {

	public List<Booking> selectBookingList();

	public Boolean deleteReserve(int id);
	
	public Booking getAlertInfo(@Param("name") String name, @Param("phoneNumber") String phoneNumber);

	public Boolean insertReserve(Booking booking);

}
