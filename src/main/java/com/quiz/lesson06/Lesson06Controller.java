package com.quiz.lesson06;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String addingBookmark(@RequestParam("name") String name, @RequestParam("url") String url) {

		bookmarkBO.addBookmark(name, url);

		return "성공";
	}

	@GetMapping("/quiz01/view_bookmark")
	public String viewBookmark(Model model) {

		List<Bookmark> bookmarks = bookmarkBO.getBookmark();

		model.addAttribute("bookmarks", bookmarks);

		return "lesson06/quiz01/viewBookmark";
	}

}
