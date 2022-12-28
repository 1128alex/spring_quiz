package com.quiz.lesson04.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson04.model.Seller;

@Repository
public interface SellerDAO {
	public void insertSeller(@Param("nickname") String nickname, @Param("profileUrl") String profileUrl,
			@Param("temp") Double temp);

	public Seller selectLastSeller();

	public Seller selectSellerById(@Param("id") int id);
}
