package com.quiz.lesson06.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson06.model.Bookmark;

@Repository
public interface BookmarkDAO {
	public void insertBookmark(String name, String url);

	public List<Bookmark> selectBookmark();
}
