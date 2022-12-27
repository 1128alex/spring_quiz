package com.quiz.lesson03.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.model.RealEstate;

@Repository
public interface RealEstateDAO {
	public RealEstate selectRealEstate(int id);

	public int insertRealEstate(RealEstate realEstate);

	public int insertRealEstateAsField(@Param("realtor_id") int realtor_id, @Param("address") String address,
			@Param("area") int area, @Param("type") String type, @Param("price") int price,
			@Param("rentPrice") int rentPrice);

	public int updateRealEstateById(@Param("id") int id, @Param("type") String type, @Param("price") int price);

	public void deleteRealEstateById(int id);
}
