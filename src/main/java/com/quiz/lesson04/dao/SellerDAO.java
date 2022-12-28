package com.quiz.lesson04.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface SellerDAO {
	public void insertSeller(@Param("nickname") String nickname, @Param("profileUrl") String profileUrl,
			@Param("temp") Double temp);
}
