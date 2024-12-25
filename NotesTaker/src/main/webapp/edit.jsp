<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page import="com.helper.FactoryProvider"%>
<%@ page import="com.entities.Note"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Page</title>
<%@ include file="all_js_css.jsp"%>
<link href="CSS/style.css" rel="stylesheet" />
</head>
<body>
	<div class="container-fluid m-0 p-0">
		<%@ include file="navbar.jsp"%>
		<div class="container mt-4 shadow-lg p-3 mb-5 bg-body rounded">
			<h1 class="text-center mt-2">Edit your note</h1>
			<br>
			<%
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Note note = (Note) s.get(Note.class, noteId);
			%>
			<!-- form -->
			<div class="container">
				<form action="UpdateServlet" method="post">
					<!-- load id -->
					<input value="<%=note.getId()%>" name="noteId" type="hidden" />
					<!-- end load id -->
					<div class="form-group">
						<label for="title">Note title</label> <input type="text"
							name="title" class="form-control" required id="title"
							placeholder="Enter here" value="<%=note.getTitle()%>">
					</div>

					<div class="form-group">
						<label for="exampleInputPassword1">Note Content</label>
						<textarea id="content" name="content" required
							placeholder="Enter your content here" class="form-control"
							style="height: 300px;"><%=note.getContent()%></textarea>
					</div>

					<div class="container text-center">
						<button type="submit" class="btn btn-success m-2">Save
							your note</button>
					</div>
				</form>


			</div>
		</div>

	</div>
</body>
</html>
