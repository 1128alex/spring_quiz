package com.quiz.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.BookmarkDAO;
import com.quiz.lesson06.model.Bookmark;

@Service
public class BookmarkBO {

	@Autowired
	private BookmarkDAO bookmarkDAO;

	public void addBookmark(String name, String url) {
		bookmarkDAO.insertBookmark(name, url);
	}

	public List<Bookmark> getBookmark() {
		return bookmarkDAO.selectBookmark();
	}

	public Bookmark getFavoriteByUrl(String name) {
		List<Bookmark> bookmarkList = bookmarkDAO.getFavoriteByUrl(name);

		if (bookmarkList.isEmpty() == false) {
			return bookmarkList.get(0);
		}
		return null;
	}

	public Boolean deleteRowById(int delId) {
		return bookmarkDAO.deleteRowById(delId);
	}

}
