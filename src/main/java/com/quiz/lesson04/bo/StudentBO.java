package com.quiz.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson04.dao.StudentDAO;

@Service
public class StudentBO {
	@Autowired
	private StudentDAO studentDAO;

	public void getStudent() {
		studentDAO.insertStudent();
	}
}
