<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="all_js_css.jsp"%>
<link href="CSS/style.css" rel="stylesheet"/>

<title>Home Page</title>
</head>
<body>

<!-- navbar -->
<div class="container-fluid m-0 p-0">
<%@include file="navbar.jsp" %>
</div>

<!-- body image -->

<div class="container mt-5 bg-light p-4 rounded shadow">
  <div class="row align-items-center">
    <!-- Left Section: Heading -->
    <div class="col-md-6">
      <h1 class="display-4 text-primary font-weight-bold">Note Taker</h1>
      <p class="lead text-secondary fst-italic">
       Say goodbye to clutter and hello to clarity! With <strong>Note Taker</strong>, effortlessly organize your thoughts, manage your tasks, and stay on top of your goals. Whether you're brainstorming ideas, planning projects, or simply jotting down reminders, we've got you covered!
      </p>
      <a href="add_notes.jsp" class="btn btn-primary btn-lg mt-3">Get Started</a>
    </div>

    <!-- Right Section: Image -->
    <div class="col-md-6 text-center">
      <img alt="Sticky Notes" src="Image/sticky-notes.png" class="img-fluid" style="max-width: 75%;">
    </div>
  </div>
</div>

  </body>
</html>