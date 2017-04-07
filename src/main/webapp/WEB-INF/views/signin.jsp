<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="_style-link.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log IN</title>
</head>
<body>
	<jsp:include page="_navbar.jsp" />
	<div class="container">
		<form action=""	method="post">
			<fieldset>
				<legend>Sign In</legend>
				<div class="form-group">
					<input type="text" name="username" class="form-control" placeholder="Username..." />
				</div>
				<div class="form-group">
					<input type="password" name="password" class="form-control" placeholder="Password..." />
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-default">Submit</button>
					<button type="reset" class="btn btn-default">Cancel</button>
				</div>
			</fieldset>
		</form>
	</div>
	<jsp:include page="_js-scripts.jsp" />
</body>
</html>