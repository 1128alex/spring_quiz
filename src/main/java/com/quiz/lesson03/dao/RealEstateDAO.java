package com.quiz.lesson03.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.model.RealEstate;

@Repository
public interface RealEstateDAO {
	public RealEstate selectRealEstate(int id);

	public int insertRealEstate(RealEstate realEstate);

	public int insertRealEstateAsField(@Param("realtorId") int realtorId, @Param("address") String address,
			@Param("area") int area, @Param("type") String type, @Param("price") int price,
			@Param("rentPrice") int rentPrice);
}
