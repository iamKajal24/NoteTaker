<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@ include file="all_js_css.jsp"%>
<link href="CSS/style.css" rel="stylesheet"/>
<title>Add Notes</title>

<link href="CSS/Style.CSS" rel="stylesheet">
</head>
<body>

	<!-- navbar -->
	<div class="container-fluid p-0 m-0 ">
		<%@ include file="navbar.jsp"%>
		<div class="container text-center m-1">
			<h1>Please fill your note details</h1>
		</div>
		<!-- form -->
		<div class="container shadow-lg p-3 mb-5 bg-body rounded">
			<form action="SaveNoteServlet" method="post">
				<div class="form-group">
					<label for="title">Note title</label> <input type="text" name="title"
						class="form-control" required id="title" placeholder="Enter here">
				</div>

				<div class="form-group">
					<label for="exampleInputPassword1">Note Content</label>
					<textarea id="content" name="content" required placeholder="Enter your content here"
						class="form-control" style="height: 300px;"></textarea>
				</div>

				<div class="container text-center">
				<button type="submit" class="btn btn-primary m-2">Add</button>
				</div>
			</form>
		</div>
	</div>
	</div>
</body>
</html>