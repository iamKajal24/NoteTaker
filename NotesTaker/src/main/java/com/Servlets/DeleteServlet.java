package com.Servlets;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        
        try {
            // Fetching the note ID from the request
            int noteId = Integer.parseInt(req.getParameter("note_id").trim());
            
            // Open Hibernate session
            Session session = FactoryProvider.getFactory().openSession();
            Transaction tx = session.beginTransaction();

            // Retrieve and delete the note
            Note note = session.get(Note.class, noteId);
            if (note != null) {
                session.delete(note);
                tx.commit(); // Commit the transaction
            }
            
            session.close(); // Close session
            
            // Redirect to notes page
            resp.sendRedirect("all_notes.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().print("<h2>Error occurred while deleting the note. Please try again!</h2>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.getWriter().print("<h2>POST method is not supported for deleting notes. Use GET instead.</h2>");
    }
}
