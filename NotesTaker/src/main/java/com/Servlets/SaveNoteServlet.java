package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDate;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SaveNoteServlet")
public class SaveNoteServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter writer = resp.getWriter();
		writer.print("<h1>This Servlet only supports POST requests for form submission.</h1>");
		writer.close();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter writer = resp.getWriter();

		try {
			// Fetching title and content from the form
			String title = req.getParameter("title");
			String content = req.getParameter("content");

			// Creating a Note object with the current date
			Date currentDate = Date.valueOf(LocalDate.now());
			Note note = new Note(title, content, currentDate);

			// Logging note details to console
			// System.out.println(note.getId() + ": " + note.getTitle());

			// hibernate : save()
			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			session.save(note);
			tx.commit();
			session.close();
			resp.setContentType("text/html");

			writer.println("<h2 style='text-align:center;'>Note is added successfully!</h2>");
			writer.println("<h2 style='text-align:center;'><a href='all_notes.jsp'>View all notes</a></h2>");
		} catch (Exception e) {
			e.printStackTrace();
			writer.print("<h2>Error while saving note. Please try again!</h2>");
		} finally {
			writer.close();
		}
	}
}
