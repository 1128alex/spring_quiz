package com.quiz.lesson03.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.dao.RealEstateDAO;
import com.quiz.lesson03.model.RealEstate;

@Service
public class RealEstateBO {

	@Autowired
	private RealEstateDAO realEstateDAO;

	public RealEstate getRealEstate(int id) {
		return realEstateDAO.selectRealEstate(id);
	}

	public int addRealEstate(RealEstate realEstate) {
		return realEstateDAO.insertRealEstate(realEstate);
	}

	public int addRealEstateAsField(int realtor_id, String address, int area, String type, int price, int rentPrice) {
		return realEstateDAO.insertRealEstateAsField(realtor_id, address, area, type, price, rentPrice);
	}
}
