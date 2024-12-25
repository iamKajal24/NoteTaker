package com.Servlets;

import java.io.IOException;
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

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.getWriter().print("<h1>This Servlet only supports POST requests for form submission.</h1>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            // Fetch data from the request
            String title = req.getParameter("title");
            String content = req.getParameter("content");
            int noteId = Integer.parseInt(req.getParameter("noteId").trim());

            // Open Hibernate session
            Session session = FactoryProvider.getFactory().openSession();
            Transaction tx = session.beginTransaction();

            // Load the note from the database
            Note note = session.get(Note.class, noteId);
            if (note != null) {
                // Update note details
                note.setTitle(title);
                note.setContent(content);
                Date currentDate = Date.valueOf(LocalDate.now());
                note.setAddeDate(currentDate);

                // Commit the transaction
                tx.commit();
            }

            session.close();

            // Redirect to the notes page
            resp.sendRedirect("all_notes.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().print("<h2>An error occurred while updating the note. Please try again later.</h2>");
        }
    }
}
