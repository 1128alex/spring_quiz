package com.quiz.lesson05.dao;

import org.springframework.stereotype.Repository;

@Repository
public interface WeatherHistoryDAO {
	public void selectWeatherHistory();
}
