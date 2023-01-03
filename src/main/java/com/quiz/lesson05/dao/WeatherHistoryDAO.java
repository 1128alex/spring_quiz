package com.quiz.lesson05.dao;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson05.model.WeatherHistory;

@Repository
public interface WeatherHistoryDAO {
	public List<WeatherHistory> selectWeatherHistory();

	public void insertWeatherHistory(WeatherHistory wh, Date date);
}
