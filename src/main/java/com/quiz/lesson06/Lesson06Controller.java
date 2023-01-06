package com.quiz.lesson06;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.BookmarkBO;
import com.quiz.lesson06.model.Bookmark;

@RequestMapping("/lesson06")
@Controller
public class Lesson06Controller {

	@Autowired
	private BookmarkBO bookmarkBO;

	@GetMapping("/quiz01/add_bookmark_view")
	public String addBookmark() {
		return "lesson06/quiz01/addBookmark";
	}

	@ResponseBody
	@PostMapping("/quiz01/adding_bookmark")
	public Map<String, String> addingBookmark(@RequestParam("name") String name, @RequestParam("url") String url) {

		bookmarkBO.addBookmark(name, url);

		Map<String, String> result = new HashMap<>();
		result.put("result", "성공");

		return result; // jackson => JSON String
	}

	@GetMapping("/quiz01/view_bookmark")
	public String viewBookmark(Model model) {

		List<Bookmark> bookmarks = bookmarkBO.getBookmark();

		model.addAttribute("bookmarks", bookmarks);

		return "lesson06/quiz01/viewBookmark";
	}

	@ResponseBody
	@GetMapping("/quiz02/url_duplicate_check")
	public Map<String, Boolean> urlDuplicateCheck(@RequestParam("url") String url) {

		Map<String, Boolean> result = new HashMap<>();
		Bookmark bookmark = bookmarkBO.getFavoriteByUrl(url);
		if (bookmark != null) {
			result.put("is_duplicate", true);
		} else {
			result.put("is_duplicate", false);
		}

		return result;
	}

	@ResponseBody
	@DeleteMapping("/quiz02/delete_row")
	public Map<String, Boolean> deleteRow(@RequestParam("delId") int del) {
		Map<String, Boolean> result = new HashMap<>();
		result.put("successDel", bookmarkBO.deleteRowById(del));

		return result;
	}

}
