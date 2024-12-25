<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.*"%>
<%@page import="com.entities.Note"%>
<%@ page import="org.hibernate.query.Query"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes : NotesTaker</title>

<%@ include file="all_js_css.jsp"%>
<link href="CSS/style.css" rel="stylesheet" />
</head>
<body>
	<!-- navbar -->
	<div class="container-fluid m-0 p-0">
		<%@include file="navbar.jsp"%>
		<br>
		<div class="container shadow-lg p-3 mb-5 bg-body rounded">
			<h3 class="text-uppercase text-center">All Notes:</h3>
			<div class="row">
				<div class="col-12">
					<%
					Session s = FactoryProvider.getFactory().openSession();
					Query q = s.createQuery("from Note");
					List<Note> list = q.list();
					for (Note note : list) {
					%>

					<div class="card mt-3">
						<div class="container text-center">
							<img src="Image/sticky-notes.png" style="max-width: 100px;"
								class="card-img-top pl-4 pt-4" alt="Card image cap">
						</div>
						<div class="card-body p-5">
							<h5 class="card-title"><%=note.getTitle()%></h5>
							<p class="card-text"><%=note.getContent()%></p>
							<!-- formated date  -->
							<%@ page import="java.text.SimpleDateFormat"%>


							<p class="text-primary" style="justify-content: center">
								<%
								// Get the 'addeDate' from the 'note' object
								Date noteDate = note.getAddeDate(); // Assuming getAddeDate() returns java.sql.Date or java.util.Date
								if (noteDate != null) {
									// Create a SimpleDateFormat object for formatting the date
									SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
									// Format the noteDate to a string representation
									String formattedDate = formatter.format(noteDate);
									// Output the formatted date with time at the end
									out.print(formattedDate);
								} else {
									// If the date is null, print a default message
									out.print("Date not available");
								}
								%>
							</p>
							<!-- end formated date -->
							<div class="container text-center">
								<a href="DeleteServlet?note_id=<%=note.getId()%>"
									class="btn btn-danger">Delete</a> <a
									href="edit.jsp?note_id=<%=note.getId()%>"
									class="btn btn-primary">Update</a>
							</div>
						</div>
					</div>

					<%
					}
					s.close();
					%>

				</div>
			</div>



		</div>

	</div>
</body>
</html>